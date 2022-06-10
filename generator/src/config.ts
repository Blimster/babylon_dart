import { isEmptyBindingPattern } from "typescript";
import { isClass, isEnum, isFunction, isFunctionAlias, isFunctionType, isGetter, isInterface, isProperty } from "./base";
import { Configuration, NodeKind, Nullable, TypeReference } from "./model";

export const config = <Configuration>{
    targetFolder: "../package/lib",
    libraryName: "babylon_dart",
    javascriptName: "BABYLON",
    additionalImports: [
        "dart:html",
        "dart:web_audio",
        "dart:web_gl",
        "dart:typed_data",
    ],
    sourceFiles: [
        "node_modules/babylonjs/babylon.d.ts",
        "node_modules/babylonjs-serializers/babylonjs.serializers.module.d.ts"
    ],
    nullSafe: true,
    typeReplacements: {
        "any": (_) => {
            return <TypeReference> {
                kind: NodeKind.typeReference,
                name: "Object",
                typeParams: []
            }
        },
        "boolean": (_) => {
            return <TypeReference> {
                kind: NodeKind.typeReference,
                name: "bool",
                typeParams: []
            }
        },
        "number": (_) => {
            return <TypeReference> {
                kind: NodeKind.typeReference,
                name: "num",
                typeParams: []
            }
        },
        "string": (_) => {
            return <TypeReference> {
                kind: NodeKind.typeReference,
                name: "String",
                typeParams: []
            }
        },
        "Nullable": (type) => {
            const typeParam0 = type.typeParams[0] as TypeReference;
            return <Nullable>{
                kind: NodeKind.nullable,
                type: typeParam0
            }
        },
        "Array": (type) => {
            return <TypeReference>{
                kind: NodeKind.typeReference,
                name: "List",
                typeParams: [...type.typeParams]
            }
        },
    },
    include: (scope) => {
        if(scope.name.startsWith("_")) {
            return false;
        }

        if (isEnum(scope.node) || isFunctionAlias(scope.node)) {
            return true;
        }
        
        if(isFunction(scope.node) || isProperty(scope.node) || isGetter(scope.node)) {
            return true;
        }

        if (isInterface(scope.node) || isClass(scope.node)) {
            return [
                "Animatable",
                "Observable",
                "Scene",
                "Vector3",
            ].indexOf(scope.node.name) !== -1;
        }

        return false;
    }
}


