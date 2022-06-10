import { ArrayType, Configuration, Enum, Func, FunctionAlias, FunctionType, Interface, Parameter, Property, Scope, Node, NodeKind, TypeParameter, TypeReference, UnsupportedType, Getter, Class, Nullable, Union, NullOrUndefined, Parenthesized, ThisType, TypeLiteral } from "./model";

export function scopeFor(node: any, name: string, parent?: Scope): Scope {
    return <Scope>{
        parent,
        name,
        node
    }
}

export function include(scope: Scope, config: Configuration): boolean {
    return config.include(scope);
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

export function isUnsupportedType(node: Node): node is UnsupportedType {
    return node.kind === NodeKind.unsupported;
}

export function isEnum(node: Node): node is Enum {
    return node?.kind == NodeKind.enm;
}

export function isFunctionAlias(node: Node): node is FunctionAlias {
    return node?.kind == NodeKind.functionAlias;
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

export function replaceType(type: Node, config: Configuration): Node {
    if (isTypeReference(type)) {
        const replacement = config.typeReplacements[type.name];
        if (replacement) {
            return replacement(type);
        }
    }
    return type;
}

export function typeToString(type: Node, scope: Scope, config: Configuration): string {
    type = replaceType(type, config);
    if (isTypeReference(type)) {
        let result = "";
        result += type.name;
        if (type.typeParams && type.typeParams.length > 0) {
            result += "<";
            result += type.typeParams.map(t => typeToString(t, scope, config)).join(", ");
            result += ">";
        }
        return result;
    } else if (isThisType(type)) {
        return "TODO: ThisType";
    } else if (isArrayType(type)) {
        return "List<" + typeToString(type.elementType, scope, config) + ">";
    } else if (isNullable(type)) {
        return typeToString(type.type, scope, config) + "?";
    } else if (isParenthesized(type)) {
        return typeToString(type.type, scope, config);
    } else if (isNullOrUndefined(type)) {
        return "Null";
    } else if (isFunctionType(type)) {
        return typeToString(type.returnType, scope, config) + " Function" + typeParamsToString(type.typeParams, scope, config) + paramsToString(type.params, scope, config);
    } else if (isTypeParameter(type)) {
        return type.name;
    } else if (isUnion(type)) {
        const nullTypes = type.types.filter(t => isNullOrUndefined(t));
        const notNullTypes = type.types.filter(t => !isNullOrUndefined(t)).map(t => typeToString(t, scope, config));
        return (notNullTypes.length - nullTypes.length > 1 ? "Object" : notNullTypes[0]) + (nullTypes.length > 0 ? "?": "");
    } else if (isTypeLiteral(type)) {
        return "TODO: TypeLiteral";
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

export function paramsToString(parameters: Parameter[], scope: Scope, config: Configuration): string {
    const params: string[] = [];
    for (let i = 0; i < parameters.length; i++) {
        const p = parameters[i];
        let paramString = "";
        if (isFirstOptionalParam(parameters, i)) {
            paramString += "[";
        }
        paramString += paramToString(p, scope, config);
        if (isLastOptionalParam(parameters, i)) {
            paramString += "]";
        }
        params.push(paramString);
    }
    return "(" + params.join(", ") + ")";
}

export function paramToString(param: Parameter, scope: Scope, config: Configuration): string {
    return typeToString(param.type, scope, config) + " " + param.name;
}

export function typeParamsToString(typeParams: Node[], scope: Scope, config: Configuration) {
    let result = "";
    if (typeParams.length > 0) {
        result += "<";
    }
    result += typeParams.map(t => typeToString(t, scope, config)).join(", ");
    if (typeParams.length > 0) {
        result += ">";
    }
    return result;
}

export function functionToString(func: Func, scope: Scope, config: Configuration): string {
    const modifierString = func.modifiers.length > 0 ? func.modifiers.join(" ") + " " : "";
    return modifierString + typeToString(func.type.returnType, scope, config) + " " + func.name + typeParamsToString(func.type.typeParams, scope, config) + paramsToString(func.type.params, scope, config);
}

export function getterToString(getter: Getter, scope: Scope, config: Configuration): string {
    return typeToString(getter.returnType, scope, config) + " get " + getter.name;
}

export function propertyToString(prop: Property, scope: Scope, config: Configuration): string {
    return (prop.isReadOnly ? "static " : "") + (prop.isReadOnly ? "final " : "") + typeToString(prop.type, scope, config) + " " + prop.name;
}
