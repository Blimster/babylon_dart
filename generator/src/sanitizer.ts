import { isTypeReference } from "./base";
import { Class, Configuration, Func, Interface, Program, Property } from "./model";

export function sanitizeProgram(program: Program, config: Configuration): Program {
    fixInvalidOverrides(program);
    return program;
}

function fixInvalidOverrides(program: Program): void {
    for (const clazz of program.classes) {
        const interfaces = implementedInterfaces(program, clazz, new Map());
        for (const classMethod of clazz.functions) {
            for (const interfaze of interfaces) {
                for (const interfaceMethod of interfaze.functions) {
                    if (classMethod.name === interfaceMethod.name) {
                        fixMissingParameters(classMethod, interfaceMethod);
                    }
                }
            }
        }
        for(const classProperty of clazz.properties) {
            for (const interfaze of interfaces) {
                for (const interfaceProperty of interfaze.properties) {
                    if (classProperty.name === interfaceProperty.name) {
                        fixPropertyType(classProperty, interfaceProperty);
                    }
                }
            }
        }
    }
}

function implementedInterfaces(program: Program, clazz: Class, interfaces: Map<string, Interface>): Interface[] {
    for (const interfaze of clazz.interfaces) {
        if (isTypeReference(interfaze)) {
            const interfaceType = interfaceByName(interfaze.name, program);
            if (interfaceType !== null) {
                interfaces.set(interfaze.name, interfaceType);
            }
        }
    }
    if (clazz.superType && isTypeReference(clazz.superType)) {
        const superClassType = classByName(clazz.superType.name, program);
        if (superClassType !== null) {
            implementedInterfaces(program, superClassType, interfaces);
        }
    }
    return Array.from(interfaces.values());
}

function interfaceByName(name: String, program: Program): Interface | null {
    for (const interfaze of program.interfaces) {
        if (interfaze.name === name) {
            return interfaze;
        }
    }
    return null;
}

function classByName(name: String, program: Program): Class | null {
    for (const clazz of program.classes) {
        if (clazz.name === name) {
            return clazz;
        }
    }
    return null;
}

function fixMissingParameters(classMethod: Func, parentMethod: Func): void {
    if (classMethod.type.params.length < parentMethod.type.params.length) {
        for (let i = classMethod.type.params.length; i < parentMethod.type.params.length; i++) {
            classMethod.type.params.push(Object.assign({}, parentMethod.type.params[i]));
        }
    }
}

function fixPropertyType(classProperty: Property, parentProperty: Property): void {
    if (classProperty.type !== parentProperty.type) {
        classProperty.type = Object.assign({}, parentProperty.type);
    }
}
