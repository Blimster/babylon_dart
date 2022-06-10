import { Class, Configuration, Enum, FunctionAlias, Interface, Program } from "./model";
import { existsSync, mkdirSync, writeFileSync } from "fs";
import { snakeCase } from "snake-case";
import { functionToString, getterToString, include, paramsToString, propertyToString, scopeFor, typeToString } from "./base";

class Writer {
    private lines: string[] = [];

    constructor(private targetFolder: string, private fileName: string) { }

    writeToken(token: string): void {
        this.lines.push(token);
    }

    writeLine(line?: string): void {
        this.writeToken((line ? line : "") + "\n");
    }

    toFile(): string {
        if (!existsSync(this.targetFolder)) {
            mkdirSync(this.targetFolder);
        }
        const content = this.lines.join("");
        writeFileSync(this.targetFolder + "/" + this.fileName, content);
        return this.fileName;
    }
}

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
    var typeParamString = "";
    if (functionAlias.typeParams && functionAlias.typeParams.length > 0) {
        typeParamString = "<" + functionAlias.typeParams.map(t => typeToString(t, config)).join(", ") + ">";
    }
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(functionAlias.name) + ".dart");
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("typedef " + functionAlias.name + typeParamString + " = " + typeToString(functionAlias.func.type.returnType, config) + " Function" + paramsToString(functionAlias.func.type.params, config) + ";")
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
    const interfaceScope = scopeFor(interfaze, interfaze.name);
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(interfaze.name) + ".dart");
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("/// interface " + interfaze.name);
    writer.writeLine("@JS()");
    writer.writeToken("abstract class " + interfaze.name);
    if (interfaze.typeParams.length > 0) {
        writer.writeToken("<" + interfaze.typeParams.join(", ") + ">");
    }
    if (interfaze.superTypes.length > 0) {
        writer.writeToken(" extends " + interfaze.superTypes.map(t => typeToString(t, interfaceScope, config)).join(", "));
    }
    writer.writeLine(" {");

    // for(const getter of interfaze.getters) {
    //     if (include(scopeFor(getter, getter.name, interfaceScope), config)) {
    //         writer.writeLine("  external " + getterToString(getter, config) + ";");
    //     }
    // }

    for(const prop of interfaze.properties) {
        if (include(scopeFor(prop, prop.name, interfaceScope), config)) {
            writer.writeLine("  external " + propertyToString(prop, interfaceScope, config) + ";");
        }
    }

    for (const func of interfaze.functions) {
        if (include(scopeFor(func, func.name, interfaceScope), config)) {
            writer.writeLine("  " + functionToString(func, interfaceScope, config) + ";");
        }
    }

    writer.writeLine("}");
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
    const classScope = scopeFor(clazz, clazz.name);
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(clazz.name) + ".dart");
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("/// class " + clazz.name);
    writer.writeLine("@JS()");
    writer.writeToken(clazz.isAbstract ? "abstract " : "" + "class " + clazz.name);
    if (clazz.typeParams.length > 0) {
        writer.writeToken("<" + clazz.typeParams.join(", ") + ">");
    }
    if (clazz.superType) {
        writer.writeToken(" extends " + typeToString(clazz.superType, classScope, config));
    }
    if (clazz.interfaces.length > 0) {
        writer.writeToken(" implements " + clazz.interfaces.map(t => typeToString(t, config)).join(", "));
    }
    writer.writeLine(" {");

    // for(const getter of interfaze.getters) {
    //     if (include(scopeFor(getter, getter.name, scopeFor(interfaze, interfaze.name)), config)) {
    //         writer.writeLine("  external " + getterToString(getter, config) + ";");
    //     }
    // }

    writer.writeLine("  // properties");
    for(const prop of clazz.properties) {
        if (include(scopeFor(prop, prop.name, scopeFor(clazz, clazz.name)), config)) {
            writer.writeLine("  external " + propertyToString(prop, config) + ";");
        }
    }

    writer.writeLine("  // methods");
    for (const func of clazz.functions) {
        if (include(scopeFor(func, func.name, scopeFor(clazz, clazz.name)), config)) {
            writer.writeLine("  external " + functionToString(func, config) + ";");
        }
    }

    writer.writeLine("}");
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
    writer.writeLine();
    for (const part of parts) {
        writer.writeLine("part '" + part + "';");
    }
    writer.toFile();
}

