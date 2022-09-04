import { existsSync, mkdirSync, writeFileSync } from "fs";
import { snakeCase } from "snake-case";
import { ArrayType, Configuration, Enum, Func, TypeAlias, FunctionType, Interface, Parameter, Property, Scope, Node, NodeKind, TypeParameter, TypeReference, UnsupportedType, Getter, Class, Nullable, Union, NullOrUndefined, Parenthesized, ThisType, TypeLiteral, Root } from "./model";

export class Writer {
    private lines: string[] = [];

    constructor(private targetFolder: string, private fileName: string) { }

    writeToken(token: string): void {
        this.lines.push(token);
    }

    writeLine(line?: string): void {
        this.writeToken((line ? line : "") + "\n");
    }

    toString(): string {
        return this.lines.join("");
    }

    toFile(): string {
        if (!existsSync(this.targetFolder)) {
            mkdirSync(this.targetFolder);
        }
        const content = this.toString();
        writeFileSync(this.targetFolder + "/" + this.fileName, content);
        return this.fileName;
    }
}


export function capitalize(text: string): string {
    return text.charAt(0).toUpperCase() + text.slice(1);
}

export function log(message: string, predicate?: string) {
    if (predicate) {
        if (message && message.toLocaleLowerCase().indexOf(predicate.toLowerCase()) !== -1) {
            console.log(message);
        }
    } else {
        console.log(message);
    }
}

export const ROOT_NODE = <Root>{
    kind: NodeKind.root,
}

export const ROOT_SCOPE = <Scope>{
    name: "",
    node: ROOT_NODE
}

export function scopeFor(node: Node, name: string, parent?: Scope): Scope {
    return <Scope>{
        node,
        name,
        parent
    }
}

export function include(scope: Scope, config: Configuration): boolean {
    return config.include(scope, true);
}

export function isThisType(node: Node): node is ThisType {
    return node?.kind === NodeKind.thisType;
}

export function isTypeReference(node: Node): node is TypeReference {
    return node?.kind === NodeKind.typeReference;
}

export function isTypeLiteral(node: Node): node is TypeLiteral {
    return node?.kind === NodeKind.typeLiteral;
}

export function isArrayType(node: Node): node is ArrayType {
    return node?.kind === NodeKind.arrayType;
}

export function isNullable(node: Node): node is Nullable {
    return node?.kind === NodeKind.nullable;
}

export function isParenthesized(node: Node): node is Parenthesized {
    return node?.kind === NodeKind.parenthesized;
}


export function isNullOrUndefined(node: Node): node is NullOrUndefined {
    return node?.kind === NodeKind.nullOrUndefined;
}

export function isFunctionType(node: Node): node is FunctionType {
    return node?.kind === NodeKind.functionType;
}

export const isTypeParameter = (node: Node): node is TypeParameter => {
    return node.kind === NodeKind.typeParameter;
}

export const isTypePredicate = (node: Node): node is TypeParameter => {
    return node.kind === NodeKind.typePredicate;
}

export function isUnsupportedType(node: Node): node is UnsupportedType {
    return node.kind === NodeKind.unsupported;
}

export function isEnum(node: Node): node is Enum {
    return node?.kind == NodeKind.enm;
}

export function isFunctionAlias(node: Node): node is TypeAlias {
    return node?.kind == NodeKind.typeAlias;
}

export function isUnion(node: Node): node is Union {
    return node?.kind == NodeKind.union;
}

export function isFunction(node: Node): node is Func {
    return node?.kind == NodeKind.func;
}

export function isGetter(node: Node): node is Getter {
    return node?.kind == NodeKind.getter;
}

export function isProperty(node: Node): node is Property {
    return node?.kind == NodeKind.property;
}

export function isInterface(node: Node): node is Interface {
    return node?.kind == NodeKind.interfaze;
}

export function isClass(node: Node): node is Class {
    return node?.kind == NodeKind.clazz;
}

export function customizeType(type: Node, config: Configuration): Node {
    let result = type;
    let replacement = config.typeCustomizer(result);
    while (replacement && replacement !== result) {
        result = replacement;
        replacement = config.typeCustomizer(replacement);
    }
    return result;
}

export function typeToString(type: Node, scope: Scope, typeLiteralsToWrite: Map<string, TypeLiteral>, config: Configuration): string {
    type = customizeType(type, config);
    if (isTypeReference(type)) {
        let result = "";
        result += type.name;
        if (type.typeParams && type.typeParams.length > 0) {
            result += "<";
            result += type.typeParams.map(t => typeToString(t, scope, typeLiteralsToWrite, config)).join(", ");
            result += ">";
        }
        return result;
    } else if (isThisType(type)) {
        return "THIS";
    } else if (isArrayType(type)) {
        return "List<" + typeToString(type.elementType, scope, typeLiteralsToWrite, config) + ">";
    } else if (isNullable(type)) {
        return typeToString(type.type, scope, typeLiteralsToWrite, config) + "?";
    } else if (isParenthesized(type)) {
        return typeToString(type.type, scope, typeLiteralsToWrite, config);
    } else if (isNullOrUndefined(type)) {
        return "Null";
    } else if (isFunction(type)) {
        return typeToString(type.type, scope, typeLiteralsToWrite, config);
    } else if (isFunctionType(type)) {
        return typeToString(type.returnType, scope, typeLiteralsToWrite, config) + " Function" + typeParamsToString(type.typeParams, scope, typeLiteralsToWrite, config) + paramsToString(type.params, scope, typeLiteralsToWrite, config);
    } else if (isTypeParameter(type)) {
        let result = type.name;
        if (type.constraint) {
            result += (' extends ' + typeToString(type.constraint, scope, typeLiteralsToWrite, config));
        }
        return result;
    } else if (isUnion(type)) {
        const nullTypes = type.types.filter(t => isNullOrUndefined(t));
        const notNullTypes = type.types.filter(t => !isNullOrUndefined(t)).map(t => typeToString(t, scope, typeLiteralsToWrite, config));
        const result = (notNullTypes.length - nullTypes.length > 1 ? "Object" : notNullTypes[0]);
        return result + (nullTypes.length > 0 && !result.endsWith("?") ? "?" : "");
    } else if (isTypeLiteral(type)) {
        let typeName = "";
        let s: Scope | undefined = scope;
        while (s !== undefined) {
            typeName = capitalize(s.name) + typeName;
            s = s.parent;
        }
        typeLiteralsToWrite.set(typeName, type);
        return typeName;
    } else if (isTypePredicate(type)) {
        return "bool";
    } else if (isClass(type)) {
        return classToString(type, config);
    } else if (isInterface(type)) {
        return interfaceToString(type, config);
    } else if (isUnsupportedType(type)) {
        console.log("WARNING! Unsupported type: " + type.description);
        return "UNSUPPORTED" + type.description;
    }
    throw new Error("Type not supported: " + type.kind + "!");
}

export function isFirstOptionalParam(params: Parameter[], index: number): boolean {
    for (let i = 0; i < index; i++) {
        if (params[i].optional) {
            return false;
        }
    }
    return params[index].optional;
}

export function isLastOptionalParam(params: Parameter[], index: number): boolean {
    return params.length === index + 1 && params[index].optional;
}

export function paramsToString(parameters: Parameter[], scope: Scope, typeLiteralsToWrite: Map<string, TypeLiteral>, config: Configuration): string {
    const params: string[] = [];
    for (let i = 0; i < parameters.length; i++) {
        const p = parameters[i];
        let paramString = "";
        if (isFirstOptionalParam(parameters, i)) {
            paramString += "[";
        }
        paramString += paramToString(p, scope, typeLiteralsToWrite, config);
        if (isLastOptionalParam(parameters, i)) {
            paramString += "]";
        }
        params.push(paramString);
    }
    return "(" + params.join(", ") + ")";
}

export function paramToString(param: Parameter, scope: Scope, typeLiteralsToWrite: Map<string, TypeLiteral>, config: Configuration): string {
    return typeToString(param.type, scopeFor(param, param.name, scope), typeLiteralsToWrite, config) + " " + param.name;
}

export function typeParamsToString(typeParams: Node[], scope: Scope, typeLiteralsToWrite: Map<string, TypeLiteral>, config: Configuration) {
    let result = "";
    if (typeParams.length > 0) {
        result += "<";
    }
    result += typeParams.map(t => typeToString(t, scope, typeLiteralsToWrite, config)).join(", ");
    if (typeParams.length > 0) {
        result += ">";
    }
    return result;
}

export function functionToString(func: Func, scope: Scope, typeLiteralsToWrite: Map<string, TypeLiteral>, config: Configuration): string {
    const functionScope = scopeFor(func, func.name, scope);
    let typeParams = func.type.typeParams;
    if (isThisType(func.type.returnType)) {
        typeParams = [...typeParams, <TypeReference>{
            kind: NodeKind.typeReference,
            name: "THIS extends " + scope.name,
            typeParams: []
        }];
    }
    const filteredModifiers = func.modifiers.filter(m => m != "protected");
    const modifierString = filteredModifiers.length > 0 ? filteredModifiers.join(" ") + " " : "";
    return modifierString + typeToString(func.type.returnType, functionScope, typeLiteralsToWrite, config) + " " + func.name + typeParamsToString(typeParams, functionScope, typeLiteralsToWrite, config) + paramsToString(func.type.params, functionScope, typeLiteralsToWrite, config);
}

export function getterToString(getter: Getter, scope: Scope, typeLiteralsToWrite: Map<string, TypeLiteral>, config: Configuration): string {
    return typeToString(getter.returnType, scope, typeLiteralsToWrite, config) + " get " + getter.name;
}

export function propertyToString(prop: Property, scope: Scope, typeLiteralsToWrite: Map<string, TypeLiteral>, config: Configuration): string {
    return (prop.isReadOnly ? "static " : "") + (prop.isReadOnly ? "final " : "") + typeToString(prop.type, scopeFor(prop, prop.name, scope), typeLiteralsToWrite, config) + " " + prop.name;
}

export function classToString(clazz: Class, config: Configuration): string {
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

    return writer.toString();
}

function interfaceToString(interfaze: Interface, config: Configuration): string {
    const typeLiteralsToWrite = new Map<string, TypeLiteral>();
    const scope = scopeFor(interfaze, interfaze.name);
    const writer = new Writer(config.targetFolder, "src/" + snakeCase(interfaze.name) + ".dart");
    writer.writeLine("part of " + config.libraryName + ";");
    writer.writeLine();
    writer.writeLine("/// interface " + interfaze.name);
    writer.writeLine("@JS()");
    writer.writeToken("abstract class " + interfaze.name);
    if (interfaze.typeParams.length > 0) {
        writer.writeToken("<" + interfaze.typeParams.map(t => typeToString(t, scope, typeLiteralsToWrite, config)).join(", ") + ">");
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

    return writer.toString();
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


