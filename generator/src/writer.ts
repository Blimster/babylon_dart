import { Class, Configuration, Enum, FunctionAlias, Interface, Program, TypeLiteral } from "./model";
import { existsSync, mkdirSync, write, writeFileSync } from "fs";
import { snakeCase } from "snake-case";
import { functionToString, include, paramsToString, propertyToString, ROOT_SCOPE, scopeFor, typeToString } from "./base";

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
    const typeLiteralsToWrite = new Map<string, TypeLiteral>();
    const scope = scopeFor(interfaze, interfaze.name);
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
        writer.writeToken(" extends " + interfaze.superTypes.map(t => typeToString(t, scope, typeLiteralsToWrite, config)).join(", "));
    }
    writer.writeLine(" {");

    // for(const getter of interfaze.getters) {
    //     if (include(scopeFor(getter, getter.name, interfaceScope), config)) {
    //         writer.writeLine("  external " + getterToString(getter, config) + ";");
    //     }
    // }

    const properties = interfaze.properties.filter(prop => include(scopeFor(prop, prop.name, scopeFor(interfaze, interfaze.name)), config));
    if (properties.length > 0) {
        writer.writeLine("  // properties");
        for (const prop of properties) {
            writer.writeLine("  external " + propertyToString(prop, scope, typeLiteralsToWrite, config) + ";");
        }
    }

    const functions = interfaze.functions.filter(func => include(scopeFor(func, func.name, scopeFor(interfaze, interfaze.name)), config));
    if (interfaze.functions.length > 0) {
        writer.writeLine("  // methods");
        for (const func of functions) {
            writer.writeLine("  " + functionToString(func, scope, typeLiteralsToWrite, config) + ";");
        }
    }

    writer.writeLine("}");

    writeTypeLiterals(typeLiteralsToWrite, writer);

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
    const typeLiteralsToWrite = new Map<string, TypeLiteral>();
    const scope = scopeFor(clazz, clazz.name);
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(clazz.name) + ".dart");
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("/// class " + clazz.name);
    writer.writeLine("@JS()");
    writer.writeToken((clazz.isAbstract ? "abstract " : "") + "class " + clazz.name);
    if (clazz.typeParams.length > 0) {
        writer.writeToken("<" + clazz.typeParams.map(t => typeToString(t, scope, typeLiteralsToWrite, config)).join(", ") + ">");
    }
    if (clazz.superType) {
        writer.writeToken(" extends " + typeToString(clazz.superType, scope, typeLiteralsToWrite, config));
    }
    if (clazz.interfaces.length > 0) {
        writer.writeToken(" implements " + clazz.interfaces.map(t => typeToString(t, scope, typeLiteralsToWrite, config)).join(", "));
    }
    writer.writeLine(" {");

    // for(const getter of interfaze.getters) {
    //     if (include(scopeFor(getter, getter.name, scopeFor(interfaze, interfaze.name)), config)) {
    //         writer.writeLine("  external " + getterToString(getter, config) + ";");
    //     }
    // }

    const properties = clazz.properties.filter(prop => include(scopeFor(prop, prop.name, scope), config));
    if (properties.length > 0) {
        writer.writeLine("  // properties");
        for (const prop of properties) {
            writer.writeLine("  external " + propertyToString(prop, scope, typeLiteralsToWrite, config) + ";");
        }
    }

    const functions = clazz.functions.filter(func => include(scopeFor(func, func.name, scope), config));
    if (functions.length > 0) {
        writer.writeLine("  // methods");
        for (const func of functions) {
            writer.writeLine("  external " + functionToString(func, scope, typeLiteralsToWrite, config) + ";");
        }
    }

    writer.writeLine("}");

    writeTypeLiterals(typeLiteralsToWrite, writer);

    return writer.toFile();
}

function writeTypeLiterals(typeLiterals: Map<string, TypeLiteral>, writer: Writer): void {
    typeLiterals.forEach((typeLiteral, name) => {
        writer.writeLine();
        writer.writeLine("@JS()");
        writer.writeLine("@anonymous");
        writer.writeLine("class " + name + " {");
        writer.writeLine("}");
    });
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
