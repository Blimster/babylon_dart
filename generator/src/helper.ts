import { config } from "./config";
import { Class, FilterItem, FunctionType, Interface, Library, Method, Parameter, Property, Scope, ScopeKind, Type, TypeKind, TypeLiteralType, TypeType } from "./model";

export const mapToObject = (map: Map<any, any>, switchKeyValue: boolean = false) => {
    const result = {};
    map.forEach((k, v) => {
        if (switchKeyValue) {
            result[v] = k;
        } else {
            result[k] = v;
        }
    });
    return result;
};

export const parseConfigType = (type: string): TypeType => {
    type = type.trim();

    const isArray = type.endsWith("[]");
    if (isArray) {
        type = type.substring(0, type.length - 2);
    }

    const typeParameters: Type[] = [];
    if (type.endsWith(">")) {
        const typeParamsString = type.substring(type.indexOf("<") + 1, type.length - 1);
        type = type.substring(0, type.indexOf("<"));
        const typeParamsStringList = typeParamsString.split(",").map(t => t.trim());
        typeParamsStringList.forEach(t => typeParameters.push(parseConfigType(t)));
    }

    return {
        kind: TypeKind.type,
        name: type,
        isArray,
        typeParameters
    };
}

const handleThisType = (type: TypeType, scope: Scope): string => {
    if (type.name === 'this') {
        const classScope = firstScopeOfKind(scope, ScopeKind.clazz);
        if (classScope) {
            return classScope.name;
        }
    }
    return type.name;
}

const isMatchingType = (type1: Type, type2: Type): boolean => {
    if (isTypeType(type1) && isTypeType(type2)) {
        if (type1.name.startsWith("#") || type2.name.startsWith("#")) {
            return true;
        }
        if (type1.name !== type2.name) {
            return false;
        }
        if (type1.typeParameters.length !== type2.typeParameters.length) {
            return false;
        }
        for (let i = 0; i < type1.typeParameters.length; i++) {
            if (!isMatchingType(type1.typeParameters[i], type2.typeParameters[i])) {
                return false;
            }
        }
        return true;
    } else if (isFunctionType(type1) && isTypeType(type2)) {
        if (type2.name.startsWith('#')) {
            return true;
        }
    }
    return false;
}

const typeOfPlaceholder = (type: Type, typeReplacement: Type, placeholder: string): Type => {
    if (isTypeType(typeReplacement)) {
        if (isTypeType(type)) {
            if (typeReplacement.name === placeholder) {
                return type;
            }

            for (let i = 0; i < typeReplacement.typeParameters.length; i++) {
                const r = typeOfPlaceholder(type.typeParameters[i], typeReplacement.typeParameters[i], placeholder);
                if (r) {
                    return r;
                }
            }
        } else if (isFunctionType(type)) {
            if (typeReplacement.name === placeholder) {
                return type;
            }
        }
    }
    return null;
}

export const replaceType = (type: Type, scope: Scope, typeReplacements: any): Type => {
    if (isTypeType(type)) {
        for (const tr in typeReplacements) {
            const replacementType = parseConfigType(tr);
            const typeParamReplacements = type.typeParameters.map(t => replaceType(t, scope, typeReplacements));
            type.typeParameters = typeParamReplacements;
            if (isMatchingType(type, replacementType)) {
                let replacement = typeReplacements[tr];
                const tokens = replacement.match(/#[0-9]+/g);
                if (tokens) {
                    for (const token of tokens) {
                        const placeHolderType = typeOfPlaceholder(type, replacementType, token);
                        replacement = replacement.replace(token, typeToString(placeHolderType, scope));
                    }
                }
                const result = parseConfigType(replacement);
                result.isArray = type.isArray;
                return result;
            }
        }
    }
    return type;
}

export const typeToString = (type: Type, scope: Scope): string => {
    type = replaceType(type, scope, config.typeReplacements);
    if (isTypeType(type)) {
        let result = "";
        if (type.isArray) {
            result += "List<";
        }
        result += handleThisType(type, scope);
        if (type.typeParameters && type.typeParameters.length > 0) {
            result += "<";
            result += type.typeParameters.map(t => typeToString(t, scope)).join(", ");
            result += ">";
        }
        if (type.isArray) {
            result += ">";
        }

        return result;
    } else if (isFunctionType(type)) {
        return typeToString(type.returnType, scope) + " Function(" + (type.parameters.map(p => typeToString(p.type, scope) + " " + p.name)).join(", ") + ")";
    } else if (isTypeLiteralType(type)) {
        if (type.indexSignature) {
            return "dynamic";
        } else if (type.properties.length > 0 && type.callSignatures.length === 0) {
            return typeLiteralNameFromScope(scope);
        } else if (type.properties.length === 0 && type.callSignatures.length === 1) {
            return typeToString(type.callSignatures[0], scope);
        }
    }
    return "UNSUPPORTED: " + type.kind;
};

export const includeTopLevel = (name: string): boolean => {
    return !!config.secondLevelConfigs[name];
};

export const filterItemFromName = (name: string): FilterItem => {
    return {
        name
    }
}

export const filterItemFromMethod = (method: Method): FilterItem => {
    return {
        name: method.name,
        paramNames: method.parameters.map(p => p.name)
    }
}

export const includeSecondLevel = (topLevelName: string, filterItem: FilterItem): boolean => {
    if (!config.secondLevelConfigs[topLevelName]) {
        return false;
    }
    const secondLevelConfig = config.secondLevelConfigs[topLevelName];
    if (testFilter(secondLevelConfig.exclude, filterItem)) {
        return false;
    }
    if (secondLevelConfig.include && !testFilter(secondLevelConfig.include, filterItem)) {
        return false;
    }
    return true;
}

const testFilter = (filterList: (string | FilterItem)[], filterItem: FilterItem): boolean => {
    const fl: FilterItem[] = filterList ? filterList.map((e) => {
        if (typeof e === "string") {
            return <FilterItem>{
                name: e
            }
        }
        return e;
    }) : null;

    if (!fl) {
        return false;
    }

    for (const f of fl) {
        if (filterItem.name === f.name) {
            if (filterItem.paramNames) {
                if (f.paramNames) {
                    if (filterItem.paramNames.length === f.paramNames.length) {
                        let matchingParams = true;
                        for (let i = 0; i < filterItem.paramNames.length; i++) {
                            if (filterItem.paramNames[i] !== f.paramNames[i]) {
                                matchingParams = false;
                            }
                        }
                        if (matchingParams) {
                            return true;
                        }
                    }
                } else {
                    return true;
                }
            } else {
                if (!f.paramNames) {
                    return true;
                }
            }
        }
    }
    return false;
}

export const override = (firstLevelName: string, secondLevelName: string, type: "getter" | "setter"): string => {
    const secondLevelConfig = config.secondLevelConfigs[firstLevelName];
    if (secondLevelConfig && secondLevelConfig.overrides) {
        const overrides = secondLevelConfig.overrides[secondLevelName];
        if (overrides) {
            return overrides[type];
        }
    }
    return null;
}

export const treatAsObjectLiteral = (name: string): boolean => {
    const secondLevelConfig = config.secondLevelConfigs[name];
    return (secondLevelConfig && secondLevelConfig.treatAsObjectLiteral) === true;
}

export const forceExport = (name: string): boolean => {
    const secondLevelConfig = config.secondLevelConfigs[name];
    return (secondLevelConfig && secondLevelConfig.forceExport) === true;
}

export const convertFunctionPropertiesToFunctions = (name: string): boolean => {
    const secondLevelConfig = config.secondLevelConfigs[name];
    return (secondLevelConfig && secondLevelConfig.convertFunctionPropertiesToFunctions) === true;
}

export const methodToFunctionType = (method: Method): FunctionType => {
    return <FunctionType>{
        returnType: method.returnType,
        parameters: method.parameters
    };
}

export const capitalize = (s: string): string => {
    return s.charAt(0).toUpperCase() + s.slice(1);
}

export const isTypeType = (type: Type): type is TypeType => {
    return type.kind === TypeKind.type;
}

export const isTypeLiteralType = (type: Type): type is TypeLiteralType => {
    return type.kind === TypeKind.typeLiteral;
}

export const isFunctionType = (type: Type): type is FunctionType => {
    return type.kind === TypeKind.function;
}

export const typeLiteralNameFromScope = (scope: Scope): string => {
    let result = "";
    while (scope) {
        result = capitalize(scope.name) + result;
        scope = scope.parent;
    }
    return result;
}

export const firstScopeOfKind = (scope: Scope, kind: ScopeKind): Scope => {
    if (!scope) {
        return null;
    }
    if (scope.kind === kind) {
        return scope;
    }
    return firstScopeOfKind(scope.parent, kind);
}

export const isFirstOptionalParam = (params: Parameter[], index: number): boolean => {
    for (let i = 0; i < index; i++) {
        if (params[i].optional) {
            return false;
        }
    }
    return params[index].optional;
}

export const isLastOptionalParam = (params: Parameter[], index: number): boolean => {
    return params.length === index + 1 && params[index].optional;
}

export const classByName = (name: String, library: Library): Class => {
    for (const clazz of library.classes) {
        if (clazz.name === name) {
            return clazz;
        }
    }
    console.log("class not found: " + name);
    return null;
}

export const interfaceByName = (name: String, library: Library): Interface => {
    for (const interfaze of library.interfaces) {
        if (interfaze.name === name) {
            return interfaze;
        }
    }
    console.log("interface not found: " + name);
    return null;
}

export const implementedInterfaces = (library: Library, clazz: Class, interfaces: Map<string, Interface>): Interface[] => {
    if (clazz) {
        for (const interfaze of clazz.interfaces) {
            interfaces.set(interfaze.name, interfaceByName(interfaze.name, library));
        }
        if (clazz.superType) {
            implementedInterfaces(library, classByName(clazz.superType.name, library), interfaces);
        }
    }
    return Array.from(interfaces.values());
}

export const extendedInterfaces = (library: Library, interfaze: Interface, interfaces: Map<string, Interface>): void => {
    interfaces.set(interfaze.name, interfaceByName(interfaze.name, library));
    for (const superInterfaze of interfaze.superTypes) {
        extendedInterfaces(library, interfaceByName(superInterfaze.name, library), interfaces);
    }
}

export const missingGettersAndSetters = (library: Library, clazz: Class, interfaces: Interface[], properties: Map<string, { getter: boolean, setter: boolean, property: Property }>): Map<string, { getter: boolean, setter: boolean, property: Property }> => {
    if (clazz) {
        for (const interfaze of interfaces) {
            for (const property of interfaze.properties) {
                const getterSetterProperty = {
                    getter: true,
                    setter: true,
                    property
                };
                for (const getter of clazz.getters) {
                    if (getter.name === property.name) {
                        getterSetterProperty.getter = false;
                    }
                }
                for (const setter of clazz.setters) {
                    if (setter.name === property.name) {
                        getterSetterProperty.setter = false;
                    }
                }
                for (const prop of clazz.properties) {
                    if (prop.name === property.name) {
                        getterSetterProperty.getter = false;
                        getterSetterProperty.setter = false;
                    }
                }
                let currentGetterSetter = properties.get(property.name);
                if (currentGetterSetter) {
                    currentGetterSetter.getter = currentGetterSetter.getter && getterSetterProperty.getter;
                    currentGetterSetter.setter = currentGetterSetter.setter && getterSetterProperty.setter;
                } else {
                    properties.set(property.name, getterSetterProperty);
                }
            }
        }
        if (clazz.superType) {
            missingGettersAndSetters(library, classByName(clazz.superType.name, library), interfaces, properties);
        }
    }
    return properties;
}

export const missingMethods = (library: Library, clazz: Class, interfaces: Interface[], methods: Map<string, { missing: boolean, method: Method }>): Map<string, { missing: boolean, method: Method }> => {
    if (clazz) {
        for (const interfaze of interfaces) {
            for (const method of interfaze.methods) {
                let missing = true;
                for (const clazzMethod of clazz.methods) {
                    if (clazzMethod.name === method.name) {
                        missing = false;
                    }
                }
                let currentMissingMethod = methods.get(method.name);
                if (currentMissingMethod) {
                    currentMissingMethod.missing = currentMissingMethod.missing && missing;
                } else {
                    methods.set(method.name, {
                        missing,
                        method
                    });
                }
            }
        }
        if (clazz.superType) {
            missingMethods(library, classByName(clazz.superType.name, library), interfaces, methods);
        }
    }
    return methods;
}