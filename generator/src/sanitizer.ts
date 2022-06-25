import { Class, Configuration, Interface, Program } from "./model";

export function sanitizeProgram(program: Program, config: Configuration): Program {
    fixInvalidOverrides(program);
    return program;
}

function implementedInterfaces(program: Program
    , clazz: Class, interfaces: Map<string, Interface>): Interface[] {
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


function fixInvalidOverrides(program: Program): void {
    for (const clazz of program.classes) {
        const interfaces = implementedInterfaces(library, clazz, new Map());
        for (const clazzMethod of clazz.functions) {
            for (const interfaze of interfaces) {
                for (const interfazeMethod of interfaze.methods) {
                    if (clazzMethod.name === interfazeMethod.name) {
                        clazzMethod.type.params = [];
                        for (const param of interfazeMethod.parameters) {
                            // clazzMethod.parameters.push(Object.assign({}, param));
                            clazzMethod.type.params.push({ ...param });
                        }
                        for (const param of clazzMethod.type.params) {
                            fixParamTypesOfFixedInvalidOverrides(clazzMethod.type.params, clazz, program);
                        }
                    }
                }
            }
        }
        let superClazz = clazz.superType ? classByName(clazz.superType.name, program) : null;
        while (superClazz) {
            for (const clazzMethod of clazz.functions) {
                for (const superClazzMethod of superClazz.methods) {
                    if (clazzMethod.name === superClazzMethod.name) {
                        clazzMethod.type.params = [];
                        for (const param of superClazzMethod.parameters) {
                            clazzMethod.type.params.push(Object.assign({}, param));
                        }
                    }
                }
            }
            superClazz = superClazz.superType ? classByName(superClazz.superType.name, program) : null;
        }
    }
}