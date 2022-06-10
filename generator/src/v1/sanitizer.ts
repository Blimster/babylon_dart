import { classByName, convertFunctionPropertiesToFunctions, implementedInterfaces, interfaceByName, isFunctionType, isTypeType, mapToObject, missingGettersAndSetters, replaceType } from "./helper";
import { Class, Library, Parameter, TypeType } from "./model";

const convertClassPropertiesToGettersAndSetters = (library: Library): void => {
    for (const clazz of library.classes) {
        for (const property of clazz.properties) {
            clazz.getters.push({
                name: property.name,
                returnType: property.type,
                isStatic: property.isStatic,
                doc: property.doc
            });
            if (!property.isReadOnly) {
                clazz.setters.push({
                    name: property.name,
                    parameter: {
                        name: property.name,
                        type: property.type,
                        optional: false,
                        doc: property.doc
                    },
                    isStatic: property.isStatic,
                    doc: property.doc
                });
            }
        }
        clazz.properties = [];
    }
}

const convertInterfaceFunctionPropertiesToFunctions = (library: Library): void => {
    for (const interfaze of library.interfaces) {
        if (convertFunctionPropertiesToFunctions(interfaze.name)) {
            interfaze.properties = interfaze.properties.filter(property => {
                if (isFunctionType(property.type)) {
                    interfaze.methods.push({
                        name: property.name,
                        doc: property.doc,
                        modifiers: property.isStatic ? ['static'] : [],
                        parameters: property.type.parameters,
                        returnType: property.type.returnType
                    });
                    return false;
                }
                return true;
            });
        }
    }
}

const convertInterfacePropertiesToGettersAndSetters = (library: Library): void => {
    for (const interfaze of library.interfaces) {
        for (const property of interfaze.properties) {
            interfaze.getters.push({
                name: property.name,
                returnType: property.type,
                isStatic: property.isStatic,
                doc: property.doc
            });
            if (!property.isReadOnly) {
                interfaze.setters.push({
                    name: property.name,
                    parameter: {
                        name: property.name,
                        type: property.type,
                        optional: false,
                        doc: property.doc
                    },
                    isStatic: property.isStatic,
                    doc: property.doc
                });
            }
        }
        interfaze.properties = [];
    }
}

const addMissingGettersAndSetters = (library: Library): void => {
    for (const clazz of library.classes) {
        const missing = missingGettersAndSetters(library, clazz, implementedInterfaces(library, clazz, new Map()), new Map());
        missing.forEach(entry => {
            const property = entry.property;
            if (entry.getter) {
                clazz.getters.push({
                    name: property.name,
                    returnType: property.type,
                    isStatic: property.isStatic,
                    doc: property.doc
                });
            }
            if (entry.setter) {
                if (!property.isReadOnly) {
                    clazz.setters.push({
                        name: property.name,
                        parameter: {
                            name: property.name,
                            type: property.type,
                            optional: false,
                            doc: property.doc
                        },
                        isStatic: property.isStatic,
                        doc: property.doc
                    });
                }
            }
        });
    }
}

const fixParamTypesOfFixedInvalidOverrides = (parameters: Parameter[], clazz: Class, library: Library): void => {
    const typeReplaceMap = new Map<string, string>();
    for (const interfaze of clazz.interfaces) {
        const originalInterfaze = interfaceByName(interfaze.name, library);
        for (let i = 0; i < originalInterfaze.typeParams.length; i++) {
            typeReplaceMap.set(originalInterfaze.typeParams[i], (interfaze.typeParameters[i] as TypeType).name);
        }
    }
    if (typeReplaceMap.size > 0) {
        for (const param of parameters) {
            const type = param.type;
            if (isTypeType(type)) {
                const newType = replaceType(type, null, mapToObject(typeReplaceMap, true)) as TypeType;
                if (newType) {
                    // TODO dont't really know why a copy is required here
                    param.type = <TypeType>{
                        ...newType
                    };
                }
            }
        }
    }
}

const addRequiredNoParamConstructorsToExtendedClasses = (library: Library): void => {
    for (const superClazz of library.classes) {
        let isExtended = false;
        for (const clazz of library.classes) {
            if (clazz.superType && clazz.superType.name === superClazz.name) {
                isExtended = true;
            }
        }
        if (isExtended) {
            let noArgs = false;
            let withArgs = false;
            for (const ctor of superClazz.constructors) {
                if (ctor.parameters && ctor.parameters.length > 0) {
                    withArgs = true;
                } else {
                    noArgs = true;
                }
            }
            if (withArgs && !noArgs) {
                superClazz.constructors[0].name = "args";
                superClazz.constructors.unshift({
                    name: "",
                    parameters: [],
                    doc: "TODO"
                });
            }


        }
    }
};

const fixInvalidOverrides = (library: Library): void => {
    for (const clazz of library.classes) {
        const interfaces = implementedInterfaces(library, clazz, new Map());
        for (const clazzMethod of clazz.methods) {
            for (const interfaze of interfaces) {
                for (const interfazeMethod of interfaze.methods) {
                    if (clazzMethod.name === interfazeMethod.name) {
                        clazzMethod.parameters = [];
                        for (const param of interfazeMethod.parameters) {
                            // clazzMethod.parameters.push(Object.assign({}, param));
                            clazzMethod.parameters.push({ ...param });
                        }
                        for (const param of clazzMethod.parameters) {
                            fixParamTypesOfFixedInvalidOverrides(clazzMethod.parameters, clazz, library);
                        }
                    }
                }
            }
        }
        let superClazz = clazz.superType ? classByName(clazz.superType.name, library) : null;
        while (superClazz) {
            for (const clazzMethod of clazz.methods) {
                for (const superClazzMethod of superClazz.methods) {
                    if (clazzMethod.name === superClazzMethod.name) {
                        clazzMethod.parameters = [];
                        for (const param of superClazzMethod.parameters) {
                            clazzMethod.parameters.push(Object.assign({}, param));
                        }
                    }
                }
            }
            superClazz = superClazz.superType ? classByName(superClazz.superType.name, library) : null;
        }
    }
}

const removeDuplicateMethods = (library: Library) => {
    for (const clazz of library.classes) {
        clazz.methods = clazz.methods.filter((m1, i1) => {
            for (let i2 = i1; i2 < clazz.methods.length; i2++) {
                if (i1 !== i2) {
                    const m2 = clazz.methods[i2];
                    if (m1.name === m2.name) {
                        if (m1.parameters.map(p => p.name).join(";") === m2.parameters.map(p => p.name).join(";")) {
                            return false;
                        }
                    }
                }
            };
            return true;
        });
    }
}

const removeDuplicateTypeAliases = (library: Library) => {
    library.functionAliases = library.functionAliases.filter((a1, i1) => {
        for (let i2 = i1; i2 < library.functionAliases.length; i2++) {
            if (i1 !== i2) {
                const a2 = library.functionAliases[i2];
                if (a1.name === a2.name) {
                    if (a1.parameters.map(p => p.name).join(";") === a2.parameters.map(p => p.name).join(";")) {
                        return false;
                    } else {
                        throw Error("Found at least 2 function type aliases with same name and different signatures! Name:" + a1.name + ", first signature: " + a1.parameters.map(p => p.name).join(";") + ", second signature: " + a2.parameters.map(p => p.name).join(";"));
                    }
                }
            }
        }
        return true;
    });
}

export const sanitizeLibrary = (library: Library): Library => {
    convertClassPropertiesToGettersAndSetters(library);
    convertInterfaceFunctionPropertiesToFunctions(library);
    //convertInterfacePropertiesToGettersAndSetters(library);
    addMissingGettersAndSetters(library);
    addRequiredNoParamConstructorsToExtendedClasses(library);
    fixInvalidOverrides(library);
    removeDuplicateMethods(library);
    removeDuplicateTypeAliases(library);
    return library;
}