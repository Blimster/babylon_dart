import { isClass, isEnum, isFunction, isFunctionAlias, isGetter, isInterface, isProperty, isTypeReference } from "./base";
import { Class, Configuration, Func, Interface, Node, NodeKind, Nullable, TypeReference } from "./model";

function createTypeReference(newName: string, typeParams?: Node[]): Node {
    return <TypeReference>{
        kind: NodeKind.typeReference,
        name: newName,
        typeParams: typeParams ? typeParams : []
    }
}

function removeDuplicateFunction(clazz: Class, className: string, functionName: string, paramNames: string[]): Node {
    if (clazz.name === className) {
        const result: Func[] = [];
        for (const func of clazz.functions) {
            if (func.name !== functionName) {
                result.push(func);
            } else {
                if (func.type.params.length === paramNames.length) {
                    var match = true;
                    for (var i = 0; i < paramNames.length; i++) {
                        if (func.type.params[i].name !== paramNames[i]) {
                            match = false;
                            break;
                        }
                    }
                    if (match) {
                        result.push(func);
                    }
                }
            }
        }
        clazz.functions = result;
    }
    return clazz;
}

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
    typeCustomizer: (node) => {
        if (isTypeReference(node)) {
            switch (node.name) {
                case "any":
                    return createTypeReference("Object");
                case "boolean":
                case "Boolean":
                    return createTypeReference("bool");
                case "number":
                case "float":
                    return createTypeReference("num");
                case "string":
                    return createTypeReference("String");
                case "FloatArray":
                case "Float32Array":
                    return createTypeReference("Float32List");
                case "IndicesArray":
                    return createTypeReference("Int32List");
                case "Array":
                case "ArrayLike":
                    return createTypeReference("List", [...node.typeParams]);
                case "ArrayBufferView":
                    return createTypeReference("ByteBuffer");
                case "Nullable":
                    return <Nullable>{
                        kind: NodeKind.nullable,
                        type: node.typeParams[0] as TypeReference
                    };
                case "DeepImmutable":
                    return node.typeParams[0] as TypeReference;
            }
        } else if (isClass(node)) {
            removeDuplicateFunction(node, "Camera", "attachControl", ["noPreventDefault"]);
            removeDuplicateFunction(node, "Camera", "detachControl", []);
            return node;
        }
        return null;
    },
    include: (scope) => {
        if (scope.name.startsWith("_")) {
            return false;
        }

        if (isEnum(scope.node) || isFunctionAlias(scope.node)) {
            return true;
        }

        if (isFunction(scope.node) || isProperty(scope.node) || isGetter(scope.node)) {
            return true;
        }

        if (isInterface(scope.node) || isClass(scope.node)) {
            return [
                "AbstractActionManager",
                "AbstractMesh",
                "AbstractScene",
                "Animatable",
                "AnimationGroup",
                "AssetContainer",
                "BaseTexture",
                "BoundingBox",
                "BoundingInfo",
                "BoundingSphere",
                "Camera",
                "CameraInputsManager",
                "CameraInputsMap",
                "Color3",
                "Color4",
                "Geometry",
                "IAction",
                "IActionEvent",
                "IAnimatable",
                "ICameraInput",
                "ICullable",
                "IDisposable",
                "IEdgesRendererOptions",
                "IGetSetVerticesData",
                "InstantiatedEntries",
                "IParticleSystem",
                "KeepAssets",
                "Light",
                "Material",
                "Matrix",
                "Mesh",
                "MorphTargetManager",
                "MultiMaterial",
                "Node",
                "Observable",
                "PickingInfo",
                "Plane",
                "PostProcess",
                "Quaternion",
                "Ray",
                "RenderTargetTexture",
                "RuntimeAnimation",
                "Scene",
                "Skeleton",
                "SmartArray",
                "SubMesh",
                "TargetedAnimation",
                "ThinTexture",
                "TransformNode",
                "UniformBuffer",
                "Vector3",
                "Viewport",
            ].indexOf(scope.node.name) !== -1;
        }

        return false;
    }
}


