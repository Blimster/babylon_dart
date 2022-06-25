import { isClass, isEnum, isFunction, isFunctionAlias, isGetter, isInterface, isProperty } from "./base";
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
        "Boolean": (_) => {
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
        "float": (_) => {
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
        "FloatArray": (_) => {
            return <TypeReference> {
                kind: NodeKind.typeReference,
                name: "Float32List",
                typeParams: []
            }
        },
        "Float32Array": (_) => {
            return <TypeReference> {
                kind: NodeKind.typeReference,
                name: "Float32List",
                typeParams: []
            }
        },
        "IndicesArray": (_) => {
            return <TypeReference> {
                kind: NodeKind.typeReference,
                name: "Int32List",
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
        "ArrayLike": (type) => {
            return <TypeReference>{
                kind: NodeKind.typeReference,
                name: "List",
                typeParams: [...type.typeParams]
            }
        },
        "DeepImmutable": (type) => {
            return type.typeParams[0] as TypeReference;
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
                "AbstractActionManager",
                "AbstractMesh",
                "AbstractScene",
                "Animatable",
                "AssetContainer",
                "BoundingBox",
                "BoundingInfo",
                "BoundingSphere",
                "Camera",
                "Color3",
                "Color4",
                "IAction",
                "IActionEvent",
                "ICullable",
                "IDisposable",
                "IEdgesRendererOptions",
                "IGetSetVerticesData",
                "IParticleSystem",
                "Light",
                "Material",
                "Matrix",
                "Node",
                "Observable",
                "PickingInfo",
                "Plane",
                "Quaternion",
                "Ray",
                "RuntimeAnimation",
                "Scene",
                "Skeleton",
                "SubMesh",
                "TransformNode",
                "UniformBuffer",
                "Vector3",
                "Viewport",
            ].indexOf(scope.node.name) !== -1;
        }

        return false;
    }
}


