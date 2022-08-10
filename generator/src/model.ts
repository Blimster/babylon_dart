export interface Configuration {
    targetFolder: string;
    libraryName: string;
    javascriptName: string;
    additionalImports: string[];
    sourceFiles: string[];
    nullSafe: boolean;
    typeCustomizer: (node: Node) => Node | null;
    include: (node: Scope) => boolean;
}

export interface Scope {
    parent: Scope | undefined;
    name: string;
    node: any;
}

export enum NodeKind {
    root,
    thisType,
    typeReference,
    typeLiteral,
    arrayType,
    nullable,
    parenthesized,
    nullOrUndefined,
    functionType,
    typeParameter,
    enm,
    functionAlias,
    union,
    interfaze,
    clazz,
    parameter,
    func,
    getter,
    setter,
    property,
    unsupported
}

export interface Node {
    kind: NodeKind;
}

export interface Root extends Node {
    kind: NodeKind.root;
}

export interface ThisType extends Node {
    kind: NodeKind.thisType;
}

export interface TypeReference extends Node {
    kind: NodeKind.typeReference;
    name: string;
    typeParams: Node[];
}

export interface TypeLiteral extends Node {
    kind: NodeKind.typeLiteral;
    properties: Property[];
    callSignatures: FunctionType[];
}

export interface ArrayType extends Node {
    kind: NodeKind.arrayType;
    elementType: Node;
}

export interface Nullable extends Node {
    kind: NodeKind.nullable;
    type: Node;
}

export interface Parenthesized extends Node {
    kind: NodeKind.parenthesized;
    type: Node;
}

export interface NullOrUndefined extends Node {
    kind: NodeKind.nullOrUndefined;
}

export interface FunctionType extends Node {
    kind: NodeKind.functionType;
    typeParams: Node[];
    returnType: Node;
    params: Parameter[];
}

export interface TypeParameter extends Node {
    kind: NodeKind.typeParameter;
    name: string;
}

export interface UnsupportedType extends Node {
    description: string;
}

export interface Parameter extends Node {
    kind: NodeKind.parameter;
    name: string;
    type: Node;
    optional: boolean;
}

export interface Func extends Node {
    kind: NodeKind.func;
    name: string;
    modifiers: string[];
    type: FunctionType;
}

export interface Getter extends Node {
    kind: NodeKind.getter;
    name: string;
    returnType: Node;
    isStatic: boolean;
}

export interface Property extends Node {
    kind: NodeKind.property;
    isStatic: boolean;
    isReadOnly: boolean;
    name: string;
    type: Node;
}

export interface Enum extends Node {
    kind: NodeKind.enm;
    name: string;
    members: string[];
}

export interface FunctionAlias extends Node {
    kind: NodeKind.functionAlias;
    name: string;
    typeParams: Node[];
    func: Func;
}

export interface Union extends Node {
    kind: NodeKind.union;
    types: Node[];
}

export interface Interface extends Node {
    kind: NodeKind.interfaze;
    name: string;
    typeParams: Node[];
    properties: Property[];
    functions: Func[];
    superTypes: Node[];
}

export interface Class extends Node {
    kind: NodeKind.clazz;
    isAbstract: boolean;
    name: string;
    typeParams: Node[];
    superType: Node | null;
    interfaces: Node[];
    //constructors: Constructor[];
    properties: Property[];
    functions: Func[];
    getters: Getter[];
    //setters: Setter[];
}

export interface Program {
    enums: Enum[];
    functionAliases: FunctionAlias[];
    interfaces: Interface[];
    classes: Class[];
}