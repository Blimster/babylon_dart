import * as ts from "typescript";
import { Class, Constructor, Parameter, Getter, Setter, Method, Library, Type, TypeType, TypeKind, FunctionType, TypeLiteralType, Property, Interface, Enum } from "./model";
import { config } from "./config";
import { forceExport, includeTopLevel, isTypeLiteralType, isTypeType } from "./helper";
import { notStrictEqual } from "assert";

const isExported = (node: ts.Node): boolean => {
    return (
        (ts.getCombinedModifierFlags(node as ts.Declaration) & ts.ModifierFlags.Export) !== 0 ||
        (!!node.parent && node.parent.kind === ts.SyntaxKind.SourceFile)
    );
}

const isHidden = (name: string): boolean => {
    return name.startsWith("_");
}

const parseProperty = (node: ts.PropertyDeclaration | ts.PropertySignature, checker: ts.TypeChecker): Property => {
    if (!node.name.getText().startsWith("_")) {
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
        if (node.type) {
            return {
                isStatic,
                isReadOnly,
                name: node.name.getText(),
                type: parseType(node.type, checker),
                doc: "TODO"
            }
        }
        return {
            isStatic,
            isReadOnly,
            name: node.name.getText(),
            type: <TypeType>{
                kind: TypeKind.type,
                name: "dynamic",
                isArray: false,
                typeParameters: []
            },
            doc: "TODO"
        }
    }
    return null;
}

const parseProperties = (node: ts.Node, checker: ts.TypeChecker, debug?: boolean): Property[] => {
    const result: Property[] = [];
    node.forEachChild(p => {
        if (ts.isPropertyDeclaration(p) || ts.isPropertySignature(p)) {
            const prop = parseProperty(p, checker);
            if (prop) {
                result.push(prop);
            }
        } else {
            if (debug) {
                console.log(p.kind);
            }
        }
    });
    return result;
}


const parseType = (typeNode: ts.Node, checker: ts.TypeChecker): Type => {
    if (ts.isArrayTypeNode(typeNode)) {
        const elementType = parseType(typeNode.elementType, checker);
        if (isTypeType(elementType)) {
            return <TypeType>{
                kind: TypeKind.type,
                name: elementType.name,
                typeParameters: elementType.typeParameters,
                isArray: true
            }
        } else if (isTypeLiteralType(elementType)) {
            // FIXME the resulting code will not work, but the transpiler no longer 
            // crashes here and it is possible add excludes to the config.ts
            return <TypeLiteralType>{
                kind: TypeKind.typeLiteral,
                properties: [],
                callSignatures: [],
                indexSignature: false
            }
        }
    } else if (ts.isTypeReferenceNode(typeNode)) {
        return <TypeType>{
            kind: TypeKind.type,
            name: typeNode.typeName.getText(),
            typeParameters: typeNode.typeArguments ? typeNode.typeArguments.map(ta => parseType(ta, checker)) : [],
            isArray: false
        }
    } else if (ts.isTypeLiteralNode(typeNode)) {
        const properties: Property[] = [];
        const callSignatures: FunctionType[] = [];
        var indexSignature: boolean = false;
        typeNode.members.forEach(m => {
            if (ts.isPropertySignature(m)) {
                properties.push(parseProperty(m, checker));
            } else if (ts.isCallSignatureDeclaration(m)) {
                callSignatures.push(parseType(m, checker) as FunctionType);
            } else if (ts.isIndexSignatureDeclaration(m)) {
                indexSignature = true;
                // console.log("index signature found: " + m.getFullText());
                // console.log("index signature found: " + m.parameters[0].type.getText());
                // console.log("index signature found: " + m.parameters[0].name.getText());
            }
        });
        return <TypeLiteralType>{
            kind: TypeKind.typeLiteral,
            properties,
            callSignatures,
            indexSignature
        };
    } else if (ts.isFunctionTypeNode(typeNode)) {
        return <FunctionType>{
            kind: TypeKind.function,
            returnType: parseType(typeNode.type, checker),
            parameters: parseParameters(typeNode.parameters, checker)
        };
    } else if (ts.isCallSignatureDeclaration(typeNode)) {
        return <FunctionType>{
            kind: TypeKind.function,
            returnType: parseType(typeNode.type, checker),
            parameters: parseParameters(typeNode.parameters, checker)
        };
    } else if (ts.isExpressionWithTypeArguments(typeNode)) {
        return <TypeType>{
            kind: TypeKind.type,
            name: typeNode.expression.getText(),
            typeParameters: typeNode.typeArguments ? typeNode.typeArguments.map(ta => parseType(ta, checker)) : [],
            isArray: false
        };
    } else if (ts.isUnionTypeNode(typeNode)) {
        return <TypeType>{
            kind: TypeKind.type,
            name: "dynamic",
            typeParameters: [],
            isArray: false
        };
    } else if (ts.isTupleTypeNode(typeNode) && typeNode.getText() === "[]") {
        // a "[]" seems to be a tuple type
        return <TypeType>{
            kind: TypeKind.type,
            name: "List",
            typeParameters: [],
            isArray: false
        };
    } else {
        return <TypeType>{
            kind: TypeKind.type,
            name: typeNode.getText(),
            typeParameters: [],
            isArray: false
        };
    }
}

const parseParameter = (parameter: ts.ParameterDeclaration, checker: ts.TypeChecker): Parameter => {
    return {
        name: parameter.name.getText(),
        type: parseType(parameter.type, checker),
        optional: checker.isOptionalParameter(parameter),
        doc: "TODO"
    };
}

const parseParameters = (parameters: ts.NodeArray<ts.ParameterDeclaration>, checker: ts.TypeChecker): Parameter[] => {
    return parameters.map(p => parseParameter(p, checker))
}

const parseConstructors = (clazz: ts.ClassDeclaration, checker: ts.TypeChecker): Constructor[] => {
    const result: Constructor[] = [];

    clazz.forEachChild(c => {
        if (ts.isConstructorDeclaration(c)) {
            const params = parseParameters(c.parameters, checker);
            result.push({
                name: "",
                parameters: params,
                doc: "TODO"
            });
        }
    });

    return result;
};

const parseGetters = (node: ts.ClassDeclaration, checker: ts.TypeChecker): Getter[] => {
    const result: Getter[] = [];
    node.forEachChild(n => {
        if (ts.isGetAccessorDeclaration(n)) {
            if (!isHidden(n.name.getText())) {
                const symbol = checker.getSymbolAtLocation(n.name);
                result.push({
                    name: n.name.getText(),
                    returnType: parseType(n.type, checker),
                    isStatic: false,
                    doc: ts.displayPartsToString(symbol.getDocumentationComment(checker))
                });
            }
        }
    });
    return result;
}

const parseSetters = (node: ts.ClassDeclaration, checker: ts.TypeChecker): Setter[] => {
    const result: Setter[] = [];
    node.forEachChild(n => {
        if (ts.isSetAccessorDeclaration(n)) {
            if (!isHidden(n.name.getText())) {
                const symbol = checker.getSymbolAtLocation(n.name);
                result.push({
                    name: n.name.getText(),
                    parameter: parseParameter(n.parameters[0], checker),
                    isStatic: false,
                    doc: ts.displayPartsToString(symbol.getDocumentationComment(checker))
                });
            }
        }
    });
    return result;
}

const parseMethods = (node: ts.Node, checker: ts.TypeChecker, debug?: boolean): Method[] => {
    const result: Method[] = [];
    node.forEachChild(n => {
        if (ts.isMethodDeclaration(n) || ts.isMethodSignature(n)) {
            const method = parseMethod(n, checker);
            if (method) {
                result.push(method);
            }
        }
    });
    return result;
}

const parseMethod = (node: ts.MethodDeclaration | ts.MethodSignature | ts.SignatureDeclarationBase, checker: ts.TypeChecker, fallbackName: string = null): Method => {
    var name = fallbackName;
    if(node.name) {
        name = node.name.getText();
    }
    if (!isHidden(name)) {
        return {
            name,
            modifiers: node.modifiers ? node.modifiers.filter(m => m.getText() !== "abstract").map(m => m.getText()) : [],
            returnType: parseType(node.type, checker),
            parameters: parseParameters(node.parameters, checker),
            doc: "TODO"
        };
    }
}

const parseClass = (node: ts.ClassDeclaration, checker: ts.TypeChecker): Class => {
    const symbol = checker.getSymbolAtLocation(node.name);

    if (includeTopLevel(symbol.getName()) && (isExported(node) || forceExport(symbol.getName()))) {
        if (!isHidden(symbol.getName())) {
            let isAbstract = false;
            if (node.modifiers) {
                for (const modifier of node.modifiers) {
                    if (modifier.getText().trim() === "abstract") {
                        isAbstract = true;
                    }
                }
            }

            const typeParams: string[] = [];
            if (node.typeParameters) {
                for (const typeParam of node.typeParameters) {
                    typeParams.push(typeParam.name.getText());
                }
            }
            let superType: TypeType = null;
            const interfaces: TypeType[] = [];
            if (node.heritageClauses) {
                for (const heritageClause of node.heritageClauses) {
                    if (heritageClause.token === ts.SyntaxKind.ExtendsKeyword) {
                        const typeNode = heritageClause.types[0];
                        superType = parseType(typeNode, checker) as TypeType;
                    } else if (heritageClause.token === ts.SyntaxKind.ImplementsKeyword) {
                        for (const type of heritageClause.types) {
                            interfaces.push(parseType(type, checker) as TypeType);
                        }
                    }
                }
            }

            return {
                name: symbol.getName(),
                isAbstract,
                typeParams,
                superType,
                interfaces,
                constructors: parseConstructors(node, checker),
                properties: parseProperties(node, checker),
                getters: parseGetters(node, checker),
                setters: parseSetters(node, checker),
                methods: parseMethods(node, checker)
            };
        }
    }
    return null;
};

const parseInterface = (node: ts.InterfaceDeclaration, checker: ts.TypeChecker): Interface => {
    const symbol = checker.getSymbolAtLocation(node.name);
    if (includeTopLevel(symbol.getName())) {
        if (!isHidden(symbol.getName())) {
            const typeParams: string[] = [];
            if (node.typeParameters) {
                for (const typeParam of node.typeParameters) {
                    typeParams.push(typeParam.name.getText());
                }
            }

            let superTypes: TypeType[] = [];
            if (node.heritageClauses) {
                for (const heritageClause of node.heritageClauses) {
                    if (heritageClause.token === ts.SyntaxKind.ExtendsKeyword) {
                        for (const type of heritageClause.types) {
                            superTypes.push(parseType(type, checker) as TypeType);
                        }
                    }
                }
            }

            const interfaze = {
                name: node.name.getText(),
                typeParams,
                isExported: isExported(node) || forceExport(node.name.getText()),
                superTypes,
                constructors: [],
                properties: parseProperties(node, checker),
                setters: [],
                getters: [],
                methods: parseMethods(node, checker)
            };
            return interfaze;
        }
    }
    return null;
}

const parseEnum = (node: ts.EnumDeclaration, checker: ts.TypeChecker): Enum => {
    if (includeTopLevel(node.name.getText())) {
        return {
            name: node.name.getText(),
            members: node.members.map(m => m.name.getText())
        }
    }
    return null;
}

const parseNode = (node: ts.Node, checker: ts.TypeChecker, library: Library): void => {
    if (ts.isClassDeclaration(node)) {
        const clazz = parseClass(node, checker);
        if (clazz) {
            library.classes.push(clazz);
        }
    } else if (ts.isInterfaceDeclaration(node)) {
        const interfaze = parseInterface(node, checker);
        if (interfaze) {
            library.interfaces.push(interfaze);
        }
    } else if (ts.isEnumDeclaration(node)) {
        const enm = parseEnum(node, checker);
        if (enm) {
            library.enums.push(enm);
        }
    } else if (ts.isTypeAliasDeclaration(node)) {
        const name = node.name;
        const type = node.type;
        if (ts.isFunctionTypeNode(type)) {
           const method = parseMethod(type, checker, name.getText()); 
           library.functionAliases.push(method);
        }
    }
    else {
        ts.forEachChild(node, (n) => parseNode(n, checker, library));
    }

};

export const parseLibraries = (): Library => {
    const program = ts.createProgram({
        rootNames: config.fileNames,
        options: {
        },
    });
    const checker = program.getTypeChecker();
    const sourceFiles = program.getSourceFiles();

    const library: Library = {
        classes: [],
        interfaces: [],
        enums: [],
        functionAliases: []
    };
    for (const sourceFile of sourceFiles) {
        if (config.fileNames.filter(f => sourceFile.fileName.indexOf(f) !== -1).length > 0) {
            parseNode(sourceFile, checker, library);
        }
    }
    return library;
};
