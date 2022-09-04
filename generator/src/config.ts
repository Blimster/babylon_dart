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
                case "Uint8Array":
                    return createTypeReference("Uint8List");
                case "FloatArray":
                case "Float32Array":
                    return createTypeReference("Float32List");
                case "IndicesArray":
                case "Int32Array":
                    return createTypeReference("Int32List");
                case "Array":
                case "ArrayLike":
                    return createTypeReference("List", [...node.typeParams]);
                case "ArrayBufferView":
                    return createTypeReference("ByteBuffer");
                case "ClientRect":
                    return createTypeReference("Rectangle", [createTypeReference("num")]);
                case "WebGLRenderingContext":
                    return createTypeReference("RenderingContext");
                case "WebGLProgram":
                    return createTypeReference("Program");
                case "WebGLBuffer":
                    return createTypeReference("Buffer");
                case "WebGLTexture":
                    return createTypeReference("Texture");
                case "WebGLUniformLocation":
                    return createTypeReference("UniformLocation");
                case "WebGLVertexArrayObject":
                    return createTypeReference("VertexArrayObject");
                case "WebGLContextEvent":
                    return createTypeReference("ContextEvent");
                case "WEBGL_compressed_texture_s3tc":
                    return createTypeReference("CompressedTextureS3TC");
                case "WEBGL_compressed_texture_s3tc_srgb":
                    return createTypeReference("CompressedTextureS3TCsRgb");
                case "EXT_texture_filter_anisotropic":
                    return createTypeReference("ExtTextureFilterAnisotropic");
                case "EXT_disjoint_timer_query":
                    return createTypeReference("ExtDisjointTimerQuery");
                case "MediaTrackConstraints":
                    return createTypeReference("Map", [createTypeReference("String"), createTypeReference("Object")]);
                case "HTMLElement":
                    return createTypeReference("HtmlElement");
                case "HTMLCanvasElement":
                    return createTypeReference("CanvasElement");
                case "HTMLImageElement":
                    return createTypeReference("ImageElement");
                case "ImageBitmapSource":
                    return createTypeReference("Object");
                case "Nullable":
                    return <Nullable>{
                        kind: NodeKind.nullable,
                        type: node.typeParams[0] as TypeReference
                    };
                case "Partial":
                    return node.typeParams[0] as TypeReference;
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
    include: (scope, exported) => {
        if (!exported) {
            if (["IViewportOwnerLike"].indexOf(scope.name) !== -1) {
                return true;
            }
            return false;
        }

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
                "ActionManager",
                "Analyser",
                "Animatable",
                "AnimationGroup",
                "AnimationRange",
                "AssetContainer",
                "AsyncCoroutine",
                "BaseTexture",
                "Behavior",
                "Bone",
                "BoundingBox",
                "BoundingInfo",
                "BoundingSphere",
                "BoxParticleEmitter",
                "Camera",
                "ColorGradient",
                "CameraInputsManager",
                "CameraInputsMap",
                "Collider",
                "Color3",
                "Color3Gradient",
                "Color4",
                "ConeParticleEmitter",
                "CylinderParticleEmitter",
                "DataBuffer",
                "DrawWrapper",
                "Effect",
                "Engine",
                "EngineCapabilities",
                "EngineOptions",
                "EventState",
                "FactorGradient",
                "Geometry",
                "HemisphericParticleEmitter",
                "IAction",
                "IActionEvent",
                "IAnimatable",
                "IAudioEngine",
                "IBehaviorAware",
                "ICameraInput",
                "ICanvas",
                "ICanvasGradient",
                "ICanvasRenderingContext",
                "IClipPlanesHolder",
                "ICollisionCoordinator",
                "IColor3Like",
                "IColor4Like",
                "IComputePressureData",
                "ICullable",
                "ICustomAnimationFrameRequester",
                "ICustomShaderNameResolveOptions",
                "IDisplayChangedEventArgs",
                "IDisposable",
                "IDrawContext",
                "IEdgesRendererOptions",
                "IEffectFallbacks",
                "IGetSetVerticesData",
                "HostInformation",
                "IImage",
                "IInspectable",
                "IInspectableOptions",
                "IKeyboardEvent",
                "ILoadingScreen",
                "ImageBitmapOptions",
                "IMaterialCompilationOptions",
                "IMaterialContext",
                "IMatrixLike",
                "IMouseEvent",
                "IPointerEvent",
                "ImageProcessingPostProcess",
                "IMultiRenderTargetOptions",
                "InstantiatedEntries",
                "InstancedMesh",
                "InstancingAttributeInfo",
                "InternalTexture",
                "IntersectionInfo",
                "IOfflineProvider",
                "IParticleEmitterType",
                "IParticleSystem",
                "IPerfCustomEvent",
                "IPerfDatasets",
                "IPerfMetadata",
                "IPerformanceViewerStrategyParameter",
                "IPipelineContext",
                "IPlaneLike",
                "IQuaternionLike",
                "IRenderingManagerAutoClearSetup",
                "IRenderTargetTexture",
                "ISceneLike",
                "IShadowGenerator",
                "ISize",
                "ISmartArrayLike",
                "ISortableLight",
                "IStencilState",
                "ITextMetrics",
                "IValueGradient",
                "IVector2Like",
                "IVector3Like",
                "IVector4Like",
                "IViewportLike",
                "IViewportOwnerLike",
                "IWebXRFeature",
                "KeepAssets",
                "KeyboardInfo",
                "KeyboardInfoPre",
                "Light",
                "Material",
                "MaterialDefines",
                "MaterialPluginBase",
                "MaterialStencilState",
                "Matrix",
                "Mesh",
                "MeshLODLevel",
                "MorphTarget",
                "MorphTargetManager",
                "MultiMaterial",
                "MultiRenderTarget",
                "Node",
                "NodeMaterial",
                "Observable",
                "Observer",
                "Particle",
                "PerformanceViewerCollector",
                "PickingInfo",
                "Plane",
                "PointerEventTypes",
                "PointerInfo",
                "PointerInfoBase",
                "PointerInfoPre",
                "PointParticleEmitter",
                "PostProcess",
                "PostProcessManager",
                "PrePassEffectConfiguration",
                "PrePassRenderer",
                "PrePassRenderTarget",
                "Quaternion",
                "RawTexture",
                "Ray",
                "RenderingGroupInfo",
                "RenderTargetTexture",
                "RenderTargetWrapper",
                "RuntimeAnimation",
                "Scene",
                "ShadowDepthWrapper",
                "ShadowGenerator",
                "ShaderProcessingContext",
                "Skeleton",
                "SmartArray",
                "SphereDirectedParticleEmitter",
                "SphereParticleEmitter",
                "Sprite",
                "SpriteManager",
                "SubMesh",
                "TargetedAnimation",
                "Texture",
                "TextureSampler",
                "ThinEngine",
                "ThinSprite",
                "ThinTexture",
                "TransformNode",
                "UniformBuffer",
                "UniformBufferEffectCommonAccessor",
                "Vector2",
                "Vector3",
                "Vector4",
                "VertexBuffer",
                "Viewport",
                "WebXRAbstractMotionController",
                "WebXRSessionManager",
                "XRFrame",
                "XRInputSource",
            ].indexOf(scope.node.name) !== -1;
        }

        return false;
    }
}


