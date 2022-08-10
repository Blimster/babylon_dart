import { Class, Configuration, Enum, FunctionAlias, Interface, Program, TypeLiteral } from "./model";
import { snakeCase } from "snake-case";
import { functionToString, include, paramsToString, propertyToString, ROOT_SCOPE, scopeFor, typeToString, Writer } from "./base";

export function writeProgram(program: Program, config: Configuration): void {
    const parts: string[] = [];

    parts.push(...writeEnums(program.enums, config));
    parts.push(...writeFunctionAliases(program.functionAliases, config));
    parts.push(...writeInterfaces(program.interfaces, config));
    parts.push(...writeClasses(program.classes, config));

    writeLibrary(parts, config);
}

function writeEnums(enums: Enum[], config: Configuration): string[] {
    const result: string[] = [];
    for (const enm of enums) {
        if (include(scopeFor(enm, enm.name), config)) {
            result.push(writeEnum(enm, config));
        }
    }
    return result;
}

function writeEnum(enm: Enum, config: Configuration): string {
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(enm.name) + ".dart");
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("/// enum " + enm.name);
    writer.writeLine("@JS()");
    writer.writeLine("class " + enm.name + " {");
    for (const member of enm.members) {
        writer.writeLine("  external static num get " + member + ";");
    }
    writer.writeLine("}");
    return writer.toFile();
}

function writeFunctionAliases(functionAliases: FunctionAlias[], config: Configuration): string[] {
    const result: string[] = [];
    for (const functionAlias of functionAliases) {
        if (include(scopeFor(functionAlias, functionAlias.name), config)) {
            result.push(writeFunctionAlias(functionAlias, config));
        }
    }
    return result;
}

function writeFunctionAlias(functionAlias: FunctionAlias, config: Configuration): string {
    const typeLiteralsToWrite = new Map<string, TypeLiteral>();
    const scope = scopeFor(functionAlias, functionAlias.name);
    var typeParamString = "";
    if (functionAlias.typeParams && functionAlias.typeParams.length > 0) {
        typeParamString = "<" + functionAlias.typeParams.map(t => typeToString(t, ROOT_SCOPE, typeLiteralsToWrite, config)).join(", ") + ">";
    }
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(functionAlias.name) + ".dart");
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("typedef " + functionAlias.name + typeParamString + " = " + typeToString(functionAlias.func.type.returnType, scope, typeLiteralsToWrite, config) + " Function" + paramsToString(functionAlias.func.type.params, scope, typeLiteralsToWrite, config) + ";")
    return writer.toFile();
}

function writeInterfaces(interfaces: Interface[], config: Configuration): string[] {
    const result: string[] = [];
    for (const interfaze of interfaces) {
        if (include(scopeFor(interfaze, interfaze.name), config)) {
            result.push(writeInterface(interfaze, config));
        }
    }
    return result;
}

function writeInterface(interfaze: Interface, config: Configuration): string {
    const content = typeToString(interfaze, ROOT_SCOPE, new Map<string, TypeLiteral>(), config);
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(interfaze.name) + ".dart");
    writer.writeToken(content);
    return writer.toFile();
}

function writeClasses(classes: Class[], config: Configuration): string[] {
    const result: string[] = [];
    for (const clazz of classes) {
        if (include(scopeFor(clazz, clazz.name), config)) {
            result.push(writeClass(clazz, config));
        }
    }
    return result;
}

function writeClass(clazz: Class, config: Configuration): string {
    const content = typeToString(clazz, ROOT_SCOPE, new Map<string, TypeLiteral>(), config);
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(clazz.name) + ".dart");
    writer.writeToken(content);
    return writer.toFile();
}

function writeLibrary(parts: string[], config: Configuration): void {
    const allImports: string[] = [];

    allImports.push("package:js/js.dart");
    allImports.push(...config.additionalImports);
    allImports.sort();

    parts.sort();

    const writer = new Writer(config.targetFolder, snakeCase(config.libraryName) + ".dart");
    writer.writeLine("@JS('" + config.javascriptName + "')");
    writer.writeLine("library " + config.libraryName + ";");
    
    writer.writeLine();
    for (const imprt of allImports) {
        writer.writeLine("import '" + imprt + "';");
    }

    if(parts.length > 0) {
        writer.writeLine();
        for (const part of parts) {
            writer.writeLine("part '" + part + "';");
        }
    }

    writer.writeLine()
    writer.writeLine("@JS()")
    writer.writeLine("class Promise<T> {")
    writer.writeLine("  external Promise then(void Function(T) onFulfilled, [void Function(dynamic) onRejected]);")
    writer.writeLine("}")

    writer.toFile();
}
