import { Library, Class, Constructor, Method, TypeLiteralType, Parameter, Scope, ScopeKind, Getter, Setter, Property, Interface, ClassOrInterface, TypeKind, Enum } from "./model"
import { config } from "./config";
import { filterItemFromMethod, filterItemFromName, firstScopeOfKind, includeSecondLevel, isFirstOptionalParam, isLastOptionalParam, isTypeLiteralType, methodToFunctionType, override, treatAsObjectLiteral, typeLiteralNameFromScope, typeToString } from "./helper";
import { existsSync, mkdirSync, writeFileSync } from "fs";

class Writer {
    private lines: string[] = [];

    constructor(private fileName: string) { }

    writeToken(token: string): void {
        this.lines.push(token);
    }

    writeLine(line?: string): void {
        this.writeToken((line ? line : "") + "\n");
    }

    toFile(): void {
        const outFolder = config.outFolder;
        if (!existsSync(outFolder)) {
            mkdirSync(outFolder);
        }
        const content = this.lines.join("");
        writeFileSync(outFolder + "/" + this.fileName, content);
    }
}

const parameterToString = (parameter: Parameter, scope: Scope): string => {
    var paramScope = <Scope>{
        kind: ScopeKind.parameter,
        name: parameter.name,
        parent: scope
    };
    if (scope.kind == ScopeKind.setter && scope.name == parameter.name) {
        paramScope = scope;
    }
    return typeToString(parameter.type, paramScope) + " " + parameter.name;
}

const parametersToString = (parameters: Parameter[], scope: Scope): string => {
    const params: string[] = [];
    for (let i = 0; i < parameters.length; i++) {
        const p = parameters[i];
        let paramString = "";
        if (isFirstOptionalParam(parameters, i)) {
            paramString += "[";
        }
        paramString += parameterToString(p, scope);
        if (isLastOptionalParam(parameters, i)) {
            paramString += "]";
        }
        params.push(paramString);
    }
    return "(" + params.join(", ") + ")";
}

const writeConstructor = (ctor: Constructor, scope: Scope, writer: Writer): void => {
    if (includeSecondLevel(firstScopeOfKind(scope, ScopeKind.clazz).name, filterItemFromName("constructor"))) {
        writer.writeToken("  external " + firstScopeOfKind(scope, ScopeKind.clazz).name);
        if (ctor.name && ctor.name.length > 0) {
            writer.writeToken("." + ctor.name);
        }
        writer.writeLine(parametersToString(ctor.parameters, scope) + ";");
    }
}

const writeMethod = (method: Method, external: boolean, scope: Scope, scopeKind: ScopeKind, writer: Writer): void => {
    if (includeSecondLevel(firstScopeOfKind(scope, scopeKind).name, filterItemFromMethod(method))) {
        const methodScope = <Scope>{
            kind: ScopeKind.function,
            name: method.name,
            parent: scope
        };
        writer.writeLine("  " + (external ? "external " : "") + (method.modifiers.length > 0 ? method.modifiers.join(" ") + " " : "") + typeToString(method.returnType, methodScope) + " " + method.name + parametersToString(method.parameters, methodScope) + ";");
    }
}

const writeGetter = (getter: Getter, scope: Scope, writer: Writer): void => {
    const getterScope = <Scope>{
        kind: ScopeKind.getter,
        name: getter.name,
        parent: scope
    };
    const over = override(scope.name, getter.name, "getter");
    if (over) {
        writer.writeLine("  " + over);
    } else {
        writer.writeLine("  external " + (getter.isStatic ? "static " : "") + typeToString(getter.returnType, getterScope) + " get " + getter.name + ";");
    }
}

const writeSetter = (setter: Setter, scope: Scope, writer: Writer): void => {
    const setterScope = <Scope>{
        kind: ScopeKind.setter,
        name: setter.name,
        parent: scope
    };
    const over = override(scope.name, setter.name, "setter");
    if (over) {
        writer.writeLine("  " + over);
    } else {
        writer.writeLine("  external " + (setter.isStatic ? "static " : "") + "set " + setter.name + "(" + parameterToString(setter.parameter, setterScope) + ");");
    }
}

const writeGettersAndSetters = (library: Library, clazzOrInterfaze: ClassOrInterface, scope: Scope, writer: Writer): void => {
    for (const getter of clazzOrInterfaze.getters) {
        if (includeSecondLevel(scope.name, filterItemFromName(getter.name))) {
            writeGetter(getter, scope, writer);
        }
    }
    for (const setter of clazzOrInterfaze.setters) {
        if (includeSecondLevel(scope.name, filterItemFromName(setter.name))) {
            writeSetter(setter, scope, writer);
        }
    }
}

const writeProperty = (property: Property, scope: Scope, writer: Writer): void => {
    writer.writeLine("  external " + typeToString(property.type, scope) + " " + property.name + ";");
}

const writeProperties = (properties: Property[], scope: Scope, writer: Writer): void => {
    for (const property of properties) {
        if (includeSecondLevel(scope.name, filterItemFromName(property.name))) {
            const getterScope = <Scope>{
                kind: ScopeKind.getter,
                name: property.name,
                parent: scope
            };
            writeProperty(property, scope, writer);
        }
    }
}

const typeLiteralsForTypeLiteral = (type: TypeLiteralType, scope: Scope, result: { [key: string]: TypeLiteralType }): void => {
    result[typeLiteralNameFromScope(scope)] = type;
    type.properties.forEach(p => {
        if (isTypeLiteralType(p.type)) {
            const propertyScope = <Scope>{
                kind: ScopeKind.property,
                name: p.name,
                parent: scope
            }
            typeLiteralsForTypeLiteral(p.type, propertyScope, result);
        }
    });
}

// TODO move to sanitizer
// TODO support functions
const typeLiteralsForClassOrInterface = (clazz: ClassOrInterface): { [key: string]: TypeLiteralType } => {
    const result = <{ [key: string]: TypeLiteralType }>{};
    const classScope = <Scope>{
        kind: ScopeKind.clazz,
        name: clazz.name
    };

    clazz.constructors.forEach(c => {
        c.parameters.forEach(p => {
            if (isTypeLiteralType(p.type)) {
                const paramScope = <Scope>{
                    kind: ScopeKind.parameter,
                    name: p.name,
                    parent: classScope
                };
                typeLiteralsForTypeLiteral(p.type, paramScope, result);
            }
        });
    });

    clazz.properties.forEach(p => {
        if (isTypeLiteralType(p.type)) {
            const propertyScope = <Scope>{
                kind: ScopeKind.property,
                name: p.name,
                parent: classScope
            };
            result[typeLiteralNameFromScope(propertyScope)] = p.type;
        }
    });

    clazz.getters.forEach(g => {
        if (isTypeLiteralType(g.returnType)) {
            const getterScope = <Scope>{
                kind: ScopeKind.getter,
                name: g.name,
                parent: classScope
            };
            result[typeLiteralNameFromScope(getterScope)] = g.returnType;
        }
    });

    clazz.setters.forEach(s => {
        if (isTypeLiteralType(s.parameter.type)) {
            var setterScope = <Scope>{
                kind: ScopeKind.setter,
                name: s.parameter.name,
                parent: <Scope>{
                    kind: ScopeKind.setter,
                    name: s.name,
                    parent: classScope
                }
            };
            if (s.name == s.parameter.name) {
                setterScope = <Scope>{
                    kind: ScopeKind.setter,
                    name: s.name,
                    parent: classScope
                }
            }
            result[typeLiteralNameFromScope(setterScope)] = s.parameter.type;
        }
    });

    clazz.methods.forEach(m => {
        const methodScope = <Scope>{
            kind: ScopeKind.function,
            name: m.name,
            parent: classScope
        };
        if (isTypeLiteralType(m.returnType)) {
            result[typeLiteralNameFromScope(methodScope) + "Result"] = m.returnType;
        }
        m.parameters.forEach(p => {
            if (isTypeLiteralType(p.type)) {
                const paramScope = <Scope>{
                    kind: ScopeKind.parameter,
                    name: p.name,
                    parent: methodScope
                };
                typeLiteralsForTypeLiteral(p.type, paramScope, result);
            }
        });
    });

    return result;
}

const writeTypeLiteral = (preLine: string, name: string, typeLiteral: TypeLiteralType, scope: Scope, writer: Writer): void => {
    if (typeLiteral.properties.length > 0 && typeLiteral.callSignatures.length === 0) {
        if (preLine != null) {
            writer.writeLine(preLine);
        }
        writer.writeLine("@JS()");
        writer.writeLine("@anonymous");
        writer.writeLine("class " + name + " {");
        writer.writeLine("  external factory " + name + "({" + typeLiteral.properties.map(tl => typeToString(tl.type, scope) + " " + tl.name).join(", ") + "});");
        typeLiteral.properties.forEach(prop => {
            const propertyScope = <Scope>{
                kind: ScopeKind.property,
                name: prop.name,
                parent: scope
            };
            writer.writeLine("  external " + typeToString(prop.type, propertyScope) + " get " + prop.name + ";");
        });
        writer.writeLine("}");
    }
}

const writeClass = (library: Library, clazz: Class, writer: Writer): void => {
    const scope = <Scope>{
        kind: ScopeKind.clazz,
        name: clazz.name
    };

    writer.writeLine("part of " + config.libraryName + ";");

    const typeLiterals = typeLiteralsForClassOrInterface(clazz);
    Object.keys(typeLiterals).forEach(name => {
        writeTypeLiteral("", name, typeLiterals[name], {
            kind: ScopeKind.typeLiteral,
            name: name
        }, writer);
    });

    writer.writeLine();
    writer.writeLine("/// class " + clazz.name);
    writer.writeLine("@JS()");
    if (clazz.isAbstract) {
        writer.writeToken("abstract ");
    }
    writer.writeToken("class " + clazz.name);
    if (clazz.typeParams.length > 0) {
        writer.writeToken("<" + clazz.typeParams.join(", ") + ">");
    }
    if (clazz.superType) {
        writer.writeToken(" extends " + typeToString(clazz.superType, null));
    }
    if (clazz.interfaces.length > 0) {
        writer.writeToken(" implements " + clazz.interfaces.map(i => typeToString(i, null)).join(", "));
    }
    writer.writeLine(" {");
    if (!clazz.isAbstract) {
        for (const ctor of clazz.constructors) {
            writeConstructor(ctor, scope, writer);
        }
    }
    writeProperties(clazz.properties, scope, writer);
    writeGettersAndSetters(library, clazz, scope, writer);
    for (const method of clazz.methods) {
        writeMethod(method, true, scope, ScopeKind.clazz, writer);
    }
    // interface merging
    const extraPropertiesAndMethods: string[] = [];
    for (const interfaze of library.interfaces) {
        if (interfaze.isExported === false && interfaze.name === clazz.name) {
            for (const property of interfaze.properties) {
                if (includeSecondLevel(scope.name, filterItemFromName(property.name))) {
                    if (extraPropertiesAndMethods.indexOf(property.name) === -1) {
                        extraPropertiesAndMethods.push(property.name);
                        const getterScope = <Scope>{
                            kind: ScopeKind.getter,
                            name: property.name,
                            parent: scope
                        };
                        writeProperty(property, scope, writer);
                    }
                }
            }
            for (const method of interfaze.methods) {
                if (extraPropertiesAndMethods.indexOf(method.name) === -1) {
                    extraPropertiesAndMethods.push(method.name);
                    writeMethod(method, true, scope, ScopeKind.clazz, writer);
                }
            }
        }
    }

    writer.writeLine("}");
    writer.toFile();
}

const writeInterface = (library: Library, interfaze: Interface, writer: Writer): void => {
    if (interfaze.isExported) {
        const scope = <Scope>{
            kind: ScopeKind.clazz,
            name: interfaze.name
        };

        writer.writeLine("part of " + config.libraryName + ";");
        writer.writeLine();

        if (treatAsObjectLiteral(interfaze.name)) {
            const typeLiteral: TypeLiteralType = {
                kind: TypeKind.function,
                properties: interfaze.properties,
                callSignatures: interfaze.methods.map(m => methodToFunctionType(m)),
                indexSignature: false
            }
            writeTypeLiteral("/// interface " + interfaze.name, interfaze.name, typeLiteral, scope, writer);
        } else {
            const typeLiterals = typeLiteralsForClassOrInterface(interfaze);
            Object.keys(typeLiterals).forEach(name => {
                writeTypeLiteral("", name, typeLiterals[name], {
                    kind: ScopeKind.typeLiteral,
                    name: name
                }, writer);
            });

            writer.writeLine("/// interface " + interfaze.name);
            writer.writeLine("@JS()");
            writer.writeToken("abstract class " + interfaze.name);
            if (interfaze.typeParams.length > 0) {
                writer.writeToken("<" + interfaze.typeParams.join(", ") + ">");
            }
            if (interfaze.superTypes.length > 0) {
                writer.writeToken(" extends " + interfaze.superTypes.map(t => typeToString(t, null)).join(", "));
            }
            writer.writeLine(" {");
            for (const ctor of interfaze.constructors) {
                writeConstructor(ctor, scope, writer);
            }
            writeProperties(interfaze.properties, scope, writer);
            writeGettersAndSetters(library, interfaze, scope, writer);
            for (const method of interfaze.methods) {
                writeMethod(method, false, scope, ScopeKind.clazz, writer);
            }
            writer.writeLine("}");
        }
        writer.toFile();
    }
}

const writeEnum = (library: Library, enm: Enum, writer: Writer): void => {
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("/// enum " + enm.name);
    writer.writeLine("@JS()");
    writer.writeLine("class " + enm.name + " {");
    for (const member of enm.members) {
        writer.writeLine("  external static num get " + member + ";");
    }
    writer.writeLine("}");
    writer.toFile();
}

const writeFunctionAliases = (library: Library, writer: Writer): void => {
    const scope = <Scope>{
        kind: ScopeKind.library,
        name: "__type_alias__"
    };
    
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    for (const functionAlias of library.functionAliases) {
        if (includeSecondLevel(scope.name, filterItemFromMethod(functionAlias))) {
            writer.writeLine("typedef " + functionAlias.name + " = " + typeToString(functionAlias.returnType, scope) + " Function" + parametersToString(functionAlias.parameters, scope) + ";")
        }
    }
    writer.toFile();
}

export const writeLibrary = (library: Library): void => {
    for (const clazz of library.classes) {
        writeClass(library, clazz, new Writer(clazz.name.toLowerCase() + ".dart"));
    }
    for (const interfaze of library.interfaces) {
        writeInterface(library, interfaze, new Writer(interfaze.name.toLowerCase() + ".dart"));
    }
    for (const enm of library.enums) {
        writeEnum(library, enm, new Writer(enm.name.toLowerCase() + ".dart"));
    }
    writeFunctionAliases(library, new Writer("type_aliases.dart"));
}