import { NodeMaterialBlockConnectionPointTypes } from "babylonjs";
import * as ts from "typescript";
import { ROOT_SCOPE, scopeFor } from "./base";
import { ArrayType, Configuration, Enum, Func, TypeAlias, FunctionType, Interface, Parameter, Program, Property, Node, NodeKind, TypeParameter, TypeReference, Unsupported, Getter, Class, Union, NullOrUndefined, Parenthesized, TypeLiteral, ThisType, TypePredicate, Literal, Unmappable } from "./model";

function isNodeExported(node: ts.Node): boolean {
    return (
        (ts.getCombinedModifierFlags(node as ts.Declaration) & ts.ModifierFlags.Export) !== 0 ||
        (!!node.parent && node.parent.kind === ts.SyntaxKind.SourceFile)
    );
}

function readType(typeNode: ts.Node | undefined, checker: ts.TypeChecker): Node {
    if (typeNode === undefined) {
        return <TypeReference>{
            kind: NodeKind.typeReference,
            name: "Object",
            typeParams: []
        }
    } else if (ts.isThisTypeNode(typeNode)) {
        return <ThisType>{
            kind: NodeKind.thisType
        }
    } else if (ts.isTypeReferenceNode(typeNode)) {
        return <TypeReference>{
            kind: NodeKind.typeReference,
            name: typeNode.typeName.getText(),
            typeParams: typeNode.typeArguments ? typeNode.typeArguments.map(ta => readType(ta, checker)) : [],
        }
    } else if ([
        ts.SyntaxKind.VoidKeyword,
        ts.SyntaxKind.AnyKeyword,
        ts.SyntaxKind.BooleanKeyword,
        ts.SyntaxKind.StringKeyword,
        ts.SyntaxKind.NumberKeyword].indexOf(typeNode.kind) !== -1) {
        return <TypeReference>{
            kind: NodeKind.typeReference,
            name: typeNode.getText(),
            typeParams: [],
            isArray: false
        }
    } else if (ts.isLiteralTypeNode(typeNode)) {
        return <Literal>{
            kind: NodeKind.literal,
            literal: typeNode.getText()
        };
    } else if (ts.isTypeLiteralNode(typeNode)) {
        const properties: Property[] = [];
        const callSignatures: FunctionType[] = [];
        typeNode.members.forEach(m => {
            if (ts.isPropertySignature(m)) {
                properties.push(readProperty(m, checker));
            } else if (ts.isCallSignatureDeclaration(m)) {
                callSignatures.push(readFunctionType(m, checker));
            }
        });
        return <TypeLiteral>{
            kind: NodeKind.typeLiteral,
            properties,
            callSignatures
        };
    } else if ([
        ts.SyntaxKind.NullKeyword,
        ts.SyntaxKind.UndefinedKeyword].indexOf(typeNode.kind) !== -1) {
        return <NullOrUndefined>{
            kind: NodeKind.nullOrUndefined,
        }
    } else if (ts.isArrayTypeNode(typeNode)) {
        return <ArrayType>{
            kind: NodeKind.arrayType,
            elementType: readType(typeNode.elementType, checker)
        }
    } else if (ts.isTypeParameterDeclaration(typeNode)) {
        return <TypeParameter>{
            kind: NodeKind.typeParameter,
            name: typeNode.name.getText(),
            constraint: typeNode.constraint ? readType(typeNode.constraint, checker) : null
        }
    } else if (ts.isFunctionTypeNode(typeNode)) {
        return <FunctionType>{
            kind: NodeKind.functionType,
            typeParams: typeNode.typeParameters ? typeNode.typeParameters.map(ta => readType(ta, checker)) : [],
            returnType: readType(typeNode.type, checker),
            params: readParameters(typeNode.parameters, checker)
        };
    } else if (ts.isExpressionWithTypeArguments(typeNode)) {
        return <TypeReference>{
            kind: NodeKind.typeReference,
            name: typeNode.expression.getText(),
            typeParams: typeNode.typeArguments ? typeNode.typeArguments.map(ta => readType(ta, checker)) : [],
        };
    } else if (ts.isUnionTypeNode(typeNode)) {
        return <Union>{
            kind: NodeKind.union,
            types: typeNode.types.map(ta => readType(ta, checker)),
        };
    } else if (ts.isParenthesizedTypeNode(typeNode)) {
        return <Parenthesized>{
            kind: NodeKind.parenthesized,
            type: readType(typeNode.type, checker)
        };
    } else if (ts.isTypePredicateNode(typeNode)) {
        return <TypePredicate>{
            kind: NodeKind.typePredicate,
        };
    } else if ([
        ts.SyntaxKind.ConditionalType,
        ts.SyntaxKind.MappedType,
        ts.SyntaxKind.IndexedAccessType,
        ts.SyntaxKind.IntersectionType,
        ts.SyntaxKind.TupleType,
    ].indexOf(typeNode.kind) !== -1) {
        return <Unmappable>{
            kind: NodeKind.unmappable,
            description: typeNode.getText()
        }
    }

    return <Unsupported>{
        kind: NodeKind.unsupported,
        description: "[" + ts.SyntaxKind[typeNode.kind] + "|" + typeNode.getText() + "]"
    }
}

function readParameter(parameter: ts.ParameterDeclaration, checker: ts.TypeChecker): Parameter {
    return <Parameter>{
        name: parameter.name.getText(),
        type: readType(parameter.type, checker),
        optional: checker.isOptionalParameter(parameter)
    };
}

function readParameters(parameters: ts.NodeArray<ts.ParameterDeclaration>, checker: ts.TypeChecker): Parameter[] {
    return parameters.map(p => readParameter(p, checker))
}

function readFunctionType(node: ts.SignatureDeclarationBase, checker: ts.TypeChecker): FunctionType {
    return <FunctionType>{
        kind: NodeKind.functionType,
        typeParams: node.typeParameters ? node.typeParameters.map(ta => readType(ta, checker)) : [],
        returnType: readType(node.type, checker),
        params: readParameters(node.parameters, checker)
    }
}

function readFunction(node: ts.MethodDeclaration | ts.MethodSignature | ts.SignatureDeclarationBase | ts.CallSignatureDeclaration, checker: ts.TypeChecker): Func {
    return <Func>{
        kind: NodeKind.func,
        name: node.name?.getText(),
        modifiers: node.modifiers ? node.modifiers.filter(m => m.getText() !== "abstract").map(m => m.getText()) : [] as string[],
        type: readFunctionType(node, checker)
    }
}

function readTypeAlias(typeAlias: ts.TypeAliasDeclaration, checker: ts.TypeChecker): TypeAlias {
    return <TypeAlias>{
        kind: NodeKind.typeAlias,
        name: typeAlias.name.getText(),
        typeParams: typeAlias.typeParameters ? typeAlias.typeParameters.map(ta => readType(ta, checker)) : [],
        type: readType(typeAlias.type, checker)
    };
}

function readEnum(node: ts.EnumDeclaration, checker: ts.TypeChecker): Enum {
    return <Enum>{
        kind: NodeKind.enm,
        name: node.name.getText(),
        members: node.members.map(m => m.name.getText()).map(m => m.startsWith("\"") ? m.substring(1, m.length - 1) : m)
    }
}

function readProperties(node: ts.Node, checker: ts.TypeChecker, debug?: boolean): Property[] {
    const result: Property[] = [];
    node.forEachChild(p => {
        if (ts.isPropertyDeclaration(p) || ts.isPropertySignature(p)) {
            result.push(readProperty(p, checker));
        }
    });
    return result;
}

function readProperty(node: ts.PropertyDeclaration | ts.PropertySignature, checker: ts.TypeChecker): Property {
    let isStatic = false;
    let isReadOnly = false;
    if (node.modifiers) {
        node.modifiers.forEach(modifier => {
            if (modifier.getText() === "static") {
                isStatic = true;
            }
            if (modifier.getText() === "readonly") {
                isReadOnly = true;
            }
        });
    }
    return <Property>{
        kind: NodeKind.property,
        isStatic,
        isReadOnly,
        name: node.name.getText(),
        type: readType(node.type, checker)
    }
}

function readGetters(node: ts.ClassDeclaration | ts.InterfaceDeclaration, checker: ts.TypeChecker): Getter[] {
    const result: Getter[] = [];
    node.forEachChild(n => {
        if (ts.isGetAccessorDeclaration(n)) {
            result.push(<Getter>{
                kind: NodeKind.getter,
                name: n.name.getText(),
                returnType: readType(n.type, checker),
                isStatic: false
            });
        }
    });
    return result;
}

function readInterface(node: ts.InterfaceDeclaration, checker: ts.TypeChecker): Interface {
    const superTypes: Node[] = [];
    if (node.heritageClauses) {
        for (const heritageClause of node.heritageClauses) {
            if (heritageClause.token === ts.SyntaxKind.ExtendsKeyword) {
                for (const type of heritageClause.types) {
                    superTypes.push(readType(type, checker));
                }
            }
        }
    }

    const functions: Func[] = [];
    node.forEachChild(n => {
        if (ts.isMethodDeclaration(n) || ts.isMethodSignature(n)) {
            const func = readFunction(n, checker);
            if (func) {
                functions.push(func);
            }
        }
    });

    return <Interface>{
        kind: NodeKind.interfaze,
        name: node.name.getText(),
        typeParams: node.typeParameters ? node.typeParameters.map(ta => readType(ta, checker)) : [],
        getters: readGetters(node, checker),
        properties: readProperties(node, checker),
        functions,
        superTypes
    }
}

function readClass(node: ts.ClassDeclaration, checker: ts.TypeChecker): Class {
    let isAbstract = false;
    if (node.modifiers) {
        for (const modifier of node.modifiers) {
            if (modifier.getText().trim() === "abstract") {
                isAbstract = true;
            }
        }
    }

    let superType: Node | null = null;
    const interfaces: Node[] = [];
    if (node.heritageClauses) {
        for (const heritageClause of node.heritageClauses) {
            if (heritageClause.token === ts.SyntaxKind.ExtendsKeyword) {
                const typeNode = heritageClause.types[0];
                superType = readType(typeNode, checker);
            } else if (heritageClause.token === ts.SyntaxKind.ImplementsKeyword) {
                for (const type of heritageClause.types) {
                    interfaces.push(readType(type, checker));
                }
            }
        }
    }

    const functions: Func[] = [];
    node.forEachChild(n => {
        if (ts.isMethodDeclaration(n) || ts.isMethodSignature(n)) {
            const func = readFunction(n, checker);
            if (func) {
                functions.push(func);
            }
        }
    });

    return <Class>{
        kind: NodeKind.clazz,
        isAbstract,
        name: node.name?.getText(),
        typeParams: node.typeParameters ? node.typeParameters.map(ta => readType(ta, checker)) : [],
        superType,
        interfaces,
        getters: readGetters(node, checker),
        properties: readProperties(node, checker),
        functions
    }
}

function readNode(node: ts.Node, checker: ts.TypeChecker, program: Program, config: Configuration): void {
    if (ts.isEnumDeclaration(node)) {
        const enm = readEnum(node, checker);
        if (!program.enums.find(e => e.name === enm.name)) {
            program.enums.push(enm);
        }
    } else if (ts.isTypeAliasDeclaration(node)) {
        const typeAlias = readTypeAlias(node, checker);
        if (isNodeExported(node) || config.include(scopeFor(typeAlias, typeAlias.name, ROOT_SCOPE), false)) {
            if (!program.typeAliases.find(f => f.name === typeAlias.name)) {
                program.typeAliases.push(typeAlias);
            }
        }
    } else if (ts.isInterfaceDeclaration(node)) {
        const interfaze = readInterface(node, checker);
        if (isNodeExported(node) || config.include(scopeFor(interfaze, interfaze.name, ROOT_SCOPE), false)) {
            if (!program.interfaces.find(f => f.name === interfaze.name)) {
                program.interfaces.push(interfaze);
            }
        }
    } else if (ts.isClassDeclaration(node)) {
        const clazz = readClass(node, checker);
        if (isNodeExported(node) || config.include(scopeFor(clazz, clazz.name, ROOT_SCOPE), false)) {
            if (!program.classes.find(f => f.name === clazz.name)) {
                program.classes.push(clazz);
            }
        }
    } else if (ts.isModuleDeclaration(node)) {
        console.log(node.name.getText());
    } else {
        ts.forEachChild(node, (n) => readNode(n, checker, program, config));
    }
};

export function readProgram(config: Configuration): Program {
    const program = ts.createProgram({
        rootNames: config.sourceFiles,
        options: {},
    });

    const checker = program.getTypeChecker();
    const sourceFiles = program.getSourceFiles();

    const result: Program = {
        enums: [],
        typeAliases: [],
        interfaces: [],
        classes: []
    };

    for (const sourceFile of sourceFiles) {
        if (config.sourceFiles.filter(f => sourceFile.fileName.indexOf(f) !== -1).length > 0) {
            readNode(sourceFile, checker, result, config);
        }
    }

    return result;
};