import { Config } from "./model";

export const config = <Config>{
    fileNames: [
        "node_modules/babylonjs/babylon.module.d.ts",
        "node_modules/babylonjs-serializers/babylonjs.serializers.module.d.ts"
    ],
    libraryName: "babylon",
    outFolder: "../package/lib/src",
    typeReplacements: {
        "any": "dynamic",
        "string": "String",
        "boolean": "bool",
        "Boolean": "bool",
        "number": "num",
        "float": "num",
        "Float32Array": "Float32List",
        "FloatArray": "Float32List",
        "Uint8Array": "Uint8List",
        "Int32Array": "Int32List",
        "ArrayBufferView": "List",
        "DataArray": "ByteBuffer",
        "IndicesArray": "Int32List",
        "DeepImmutableObject<#1>": "#1",
        "DeepImmutable<#1>": "#1",
        "ArrayLike<#1>": "List<#1>",
        "Nullable<#1>": "#1",
        "Array<#1>": "List<#1>",
        "Partial<#1>": "#1",
        "ClientRect": "Rectangle",
        "WebGLProgram": "Program",
        "WebGLTransformFeedback": "TransformFeedback",
        "WebGLQuery": "Query",
        "WebGLBuffer": "Buffer",
        "WebGLUniformLocation": "UniformLocation",
        "WebGLRenderingContext": "RenderingContext",
        "WebGLContextEvent": "ContextEvent",
        "WebGLVertexArrayObject": "VertexArrayObject",
        "HTMLCanvasElement": "CanvasElement",
        "HTMLElement": "HtmlElement",
        "HTMLImageElement": "ImageElement",
        "HTMLButtonElement": "ButtonElement",
        "HTMLVideoElement": "VideoElement",
        "PointerEventInit": "dynamic", // interface for type literal defined by typescript dom lib
    },
    secondLevelConfigs: {
        __type_alias__: {
            exclude: [
                "RenderingMeshStageAction", // not yet generated
                "WebXRFeatureConstructor", // not yet generated
                "MotionControllerConstructor", // not yet generated
                "XRFrameRequestCallback", // not yet generated
            ]
        },
        AbstractActionManager: {
            exclude: [
                "Triggers", // type literal not generated
            ]
        },
        AbstractMesh: {
            exclude: [
                "collider", // not yet generated
                "intersects", // not yet generatedd
                "intersectsMesh", // union type
                "instancedBuffers", // unsupported
                "edgesRenderer", // not yet generated
                "createOrUpdateSubmeshesOctree", // not yet generated
            ]
        },
        AbstractScene: {
            exclude: [
                "morphTargetManagers", // type not yet generated
                "actionManagers", // type not yet generated
                "AddParser", // type not yet generated
                "GetParser", // type not yet generated
                "AddIndividualParser", // type not yet generated
                "GetIndividualParser", // type not yet generated
                "proceduralTextures", // not yet generated
                "sounds", // not yet generated
            ]
        },
        ActionManager: {},
        AlphaState: {},
        Analyser: {
            include: [] // not yet generated 
        },
        Angle: {},
        Animatable: {},
        AnimationPropertiesOverride: {},
        ArcRotateCamera: {
            exclude: [
                "focusOn", // union type
                "setTarget", // union type
                "inputs", // type not yet generated
                "attachControl", // invalid override
                "detachControl", // invalid override
            ]
        },
        AutoRotationBehavior: {},
        AxisDragGizmo: {
            exclude: [
                "onSnapObservable" // object literal as type parameter
            ]
        },
        AxisScaleGizmo: {
            exclude: [
                "onSnapObservable" // object literal as type parameter
            ]
        },
        Bone: {
            include: [
                "constructor"
            ]
        },
        BackEase: {},
        BaseSubMesh: {},
        BaseTexture: {},
        Behavior: {},
        BouncingBehavior: {},
        BoundingBox: {},
        BoundingBoxGizmo: {
            exclude: [
                "onDragStartObservable", // type not yet generated
                "onScaleBoxDragObservable", // type not yet generated
                "onScaleBoxDragEndObservable", // type not yet generated
                "onRotationSphereDragObservable", // type not yet generated
                "onRotationSphereDragEndObservable", // type not yet generated
            ]
        },
        BoundingBoxRenderer: {},
        BoundingInfo: {},
        BoundingSphere: {},
        Camera: {
            exclude: [
                "getActiveMeshes", // type not yet generated
                "inputs", // type not yet generated
                "computeWorldMatrix", // invalid override
                {
                    name: "attachControl",
                    paramNames: ["ignored", "noPreventDefault"]
                }, // method override
                {
                    name: "detachControl",
                    paramNames: ["ignored"],
                }, // method override
            ]
        },
        CannonJSPlugin: {},
        Collider: {},
        Color3: {
            exclude: [
                'clampToRef' // union type
            ]
        },
        Color4: {
            exclude: [
                'clampToRef' // union type
            ]
        },
        ColorCurves: {},
        CSG: {},
        CubeTexture: {},
        DataBuffer: {},
        DebugLayer: {},
        DebugLayerTab: {},
        DepthCullingState: {},
        DepthRenderer: {},
        DepthSortedParticle: {},
        DepthTextureCreationOptions: {},
        DetailMapConfiguration: {
            include: []
        },
        DirectionalLight: {},
        DynamicTexture: {},
        EasingFunction: {},
        Effect: {
            include: [
                "dispose"
            ]
        },
        EffectFallbacks: {},
        EffectLayer: {},
        Engine: {
            exclude: [
                "startTimeQuery", // not yet generated
                "endTimeQuery", // not yet generated
            ]
        },
        EngineCapabilities: {
            exclude: [
                "s3tc", // not yet supported
                "textureAnisotropicFilterExtension", // not yet supported
                "timerQuery", // not yet supported
            ]
        },
        EngineView: {},
        EnvironmentHelper: {
            include: [] // not yet generated
        },
        EventState: {},
        ExponentialEase: {},
        FramingBehavior: {},
        FreeCamera: {
            exclude: [
                "inputs", // type not yet generated
                "attachControl", // invalid override
                "detachControl", // invalid override
            ]
        },
        FresnelParameters: {
            include: []
        },
        GamepadManager: {},
        Geometry: {
            exclude: [
                "extend", // type not yet generated
                "getVertexBuffers", // Nullable<> on return type
            ]
        },
        GeometryBufferRenderer: {},
        Gizmo: {},
        GizmoAxisCache: {},
        GizmoManager: {},
        GlowLayer: {},
        GLTFData: {},
        GLTF2Export: {},
        GroundMesh: {},
        HemisphericLight: {},
        HighlightLayer: {},
        HostInformation: {},
        IAction: {},
        IActionEvent: {},
        IAgentParameters: {
            treatAsObjectLiteral: true,
        },
        IAnimatable: {},
        IAudioEngine: {},
        IBehaviorAware: {},
        IClipPlanesHolder: {},
        ICollisionCoordinator: {},
        IColor4Like: {},
        ICreateCapsuleOptions: {},
        ICrowd: {},
        ICullable: {},
        ICustomAnimationFrameRequester: {},
        ICustomShaderNameResolveOptions: {},
        IDisplayChangedEventArgs: {},
        IDisposable: {},
        IEasingFunction: {},
        IEdgesRendererOptions: {},
        IEffectFallbacks: {},
        IEnvironmentHelperOptions: {},
        IExplorerExtensibilityGroup: {},
        IExplorerExtensibilityOption: {},
        IExportOptions: {},
        IGetSetVerticesData: {},
        IGlowLayerOptions: {},
        IHighlightLayerOptions: {},
        IImageProcessingConfigurationDefines: {},
        IInspectable: {},
        IInspectorOptions: {
            treatAsObjectLiteral: true,
        },
        IIOptionShadowDepthMaterial: {},
        ILoadingScreen: {},
        IMaterialAnisotropicDefines: {},
        IMaterialBRDFDefines: {},
        IMaterialClearCoatDefines: {},
        IMaterialCompilationOptions: {},
        IMaterialSheenDefines: {},
        IMaterialSubSurfaceDefines: {},
        IMotorEnabledJoint: {},
        ImageProcessingConfiguration: {},
        ImageProcessingPostProcess: {},
        IMaterialDetailMapDefines: {},
        IMultiRenderTargetOptions: {},
        INavigationEnginePlugin: {},
        INavMeshParameters: {
            treatAsObjectLiteral: true,
        },
        InspectableType: {},
        InstancedMesh: {},
        InternalTextureSource: {},
        IntersectionInfo: {},
        InternalTexture: {},
        InstancingAttributeInfo: {},
        IOfflineProvider: {},
        IPhysicsEnabledObject: {
            exclude: [
                "rotate", // not yet generatd
                "translate", // not yet generatd
            ]
        },
        IPhysicsEngine: {},
        IPhysicsEnginePlugin: {
            include: [] // CannonJSPlugin does not implement many methods
        },
        IPipelineContext: {},
        IPlaneLike: {},
        IRenderingManagerAutoClearSetup: {},
        ISceneComponent: {},
        ISceneLike: {},
        IShadowGenerator: {
            exclude: [
                "forceCompilation", // mix of replaceType() and type literal
                "forceCompilationAsync", // mix of replaceType() and type literal
            ]
        },
        IShadowLight: {},
        ISimplificationSettings: {},
        ISimplificationTask: {
            include: [] // not yet generated
        },
        ISize: {},
        ISmartArrayLike: {},
        ISoundOptions: {},
        ISoundTrackOptions: {},
        ISpriteManager: {},
        IVector3Like: {},
        IViewportLike: {},
        IViewportOwnerLike: {
            forceExport: true
        },
        IVRPresentationAttributes: {},
        KeyboardInfo: {},
        KeyboardInfoPre: {},
        Layer: {},
        LensFlare: {},
        LensFlareSystem: {},
        Light: {},
        LinesMesh: {
            exclude: [
                "useVertexColor", // union type
                "useVertexAlpha", // union type
                "createInstance", // not yet generated
                "clone", // invalid override
                "enableEdgesRendering", // invalid override
            ]
        },
        Material: {
            exclude: [
                "inspectableCustomProperties", // not yet implemented
                "meshMap", // nullable function
                "bindSceneUniformBuffer", // not yet generated
                "forceCompilation", // not yet generated
                "forceCompilationAsync", // not yet generated
                "onEffectCreatedObservable", // object literal
            ]
        },
        MaterialDefines: {},
        MaterialOnEffectCreatedObservable: {},
        Matrix: {},
        MultiMaterial: {},
        Mesh: {
            exclude: [
                "morphTargetManager", // not yet generated
                "instantiateHierarchy", // invalid override
                "getLODLevels", // not yet generated
                "validateSkinning", // not yet generated
                "MinMax", // not yet generated
                "Center", // union type
                "simplify", // not yet implemented
                "cloneMeshMap", // unsupported type
            ]
        },
        MeshBuilder: {},
        ModelShape: {},
        MorphTarget: {},
        MorphTargetManager: {},
        MultiRenderTarget: {
            exclude: [
                "unbindFrameBuffer", // unsupported protected modifier
            ]
        },
        Node: {
            exclude: [
                "inspectableCustomProperties", // not yet generated
                "animationPropertiesOverride", // not yet generated
                "AddNodeConstructor", // not yet generated
                "getAnimationRange", // not yet generated
                "getAnimationRanges", // not yet generated
                "beginAnimation", // not yet generated
                "getHierarchyBoundingVectors", // not yet generated
            ]
        },
        NullEngine: {
            exclude: [
                "updateDynamicTexture", // invalid override
                "updateDynamicIndexBuffer", // invalid override
                "updateDynamicVertexBuffer", // invalid override
            ]
        },
        NullEngineOptions: {
            treatAsObjectLiteral: true
        },
        Observable: {},
        Observer: {},
        Octree: {},
        OctreeBlock: {},
        OutlineRenderer: {
            exclude: [
                "render", // parameter with type starting with an underscore
            ]
        },
        PassPostProcess: {},
        PBRAnisotropicConfiguration: {},
        PBRBaseMaterial: {},
        PBRBaseSimpleMaterial: {},
        PBRBRDFConfiguration: {},
        PBRClearCoatConfiguration: {},
        PBRCustomMaterial: {},
        PBRMaterial: {},
        PBRMetallicRoughnessMaterial: {},
        PBRSheenConfiguration: {},
        PBRSpecularGlossinessMaterial: {},
        PBRSubSurfaceConfiguration: {},
        PerfCounter: {},
        PerformanceMonitor: {},
        PhysicsImpostor: {
            exclude: [
                "onCollide", // not yet generated
            ]
        },
        PhysicsImpostorJoint: {},
        PhysicsImpostorParameters: {
            treatAsObjectLiteral: true
        },
        PhysicsJoint: {},
        PhysicsJointData: {},
        PhysicsRaycastResult: {
            exclude: [
                "setHitData", // not yet generated
            ]
        },
        PickingInfo: {},
        Plane: {},
        PlaneDragGizmo: {
            exclude: [
                "onSnapObservable" // object literal as type parameter
            ]
        },
        PlaneRotationGizmo: {
            exclude: [
                "onSnapObservable" // object literal as type parameter
            ]
        },
        PointerDragBehavior: {
            exclude: [
                "onDragObservable", // object literal as type parameter
                "onDragStartObservable", // object literal as type parameter
                "onDragEndObservable", // object literal as type parameter
            ]
        },
        PointerEventTypes: {},
        PointerInfo: {},
        PointerInfoBase: {},
        PointerInfoPre: {},
        PointLight: {},
        PositionGizmo: {
            exclude: [
                "onDragStartObservable",
                "onDragEndObservable",
            ]
        },
        PostProcess: {
            include: []
        },
        PostProcessManager: {},
        PostProcessRenderEffect: {},
        PostProcessRenderPipeline: {},
        PostProcessRenderPipelineManager: {},
        PrePassConfiguration: {
            exclude: [
                "previousWorldMatrices", // unsupported type
                "previousBones", // unsupported type
            ]
        },
        PrePassEffectConfiguration: {
            convertFunctionPropertiesToFunctions: true,
        },
        PrePassRenderer: {},
        PushMaterial: {},
        Quaternion: {},
        Ray: {},
        RecastJSPlugin: {},
        ReflectionProbe: {},
        RenderingGroupInfo: {},
        RenderTargetCreationOptions: {},
        RenderTargetTexture: {
            exclude: [
                "unbindFrameBuffer", // unhandled modifier protected
                "getCustomRenderList", // not yet generated
            ]
        },
        RotationGizmo: {
            exclude: [
                "onDragStartObservable", // unknown type parameter
                "onDragEndObservable", // unknown type parameter
            ]
        },
        RuntimeAnimation: {},
        Scalar: {},
        ScaleGizmo: {
            exclude: [
                "onDragStartObservable", // unknown type parameter
                "onDragEndObservable", // unknown type parameter
            ]
        },
        Scene: {
            exclude: [
                "getWorldExtends", // bug in type literal naming for a return type
                "multiPick", // function type
                "multiPickWithRay", // function type
                "addExternalData", // function with type parameters
                "getExternalData", // function with type parameters
                "getOrAddExternalDataWithFactory", // function with type parameters
            ]
        },
        SceneOptions: {},
        ShadowDepthWrapper: {},
        ShadowLight: {},
        SimplificationQueue: {},
        SixDofDragBehavior: {
            exclude: [
                "onDragStartObservable", // unknown type parameter
                "onDragEndObservable", // unknown type parameter
            ]
        },
        SmartArray: {},
        SmartArrayNoDuplicate: {},
        SolidParticle: {},
        SolidParticleSystem: {
            exclude: [
                "pickedParticles", // array of type literals
                "pickedBySubMesh", // array of type literals
                "pickedParticle", // nullable type literal
            ]
        },
        SolidParticleVertex: {},
        Sound: {},
        SoundTrack: {},
        Space: {},
        SphericalHarmonics: {},
        SphericalPolynomial: {},
        Sprite: {
            exclude: [
                "Parse", // not yet generated
                "position", // invalid override
                "color", // invalid override
            ]
        },
        StandardMaterial: {},
        StandardMaterialDefines: {},
        StencilState: {},
        SubMesh: {
            exclude: [
                "intersects", // function type 
            ]
        },
        SubSurfaceConfiguration: {
            overrides: {
                "postProcess": {
                    getter: "external PostProcess get postProcess;",
                    setter: "external set postProcess(PostProcess postProcess);",
                }
            }
        },
        SubSurfaceScatteringPostProcess: {},
        TargetCamera: {},
        Texture: {},
        ThinEngine: {
            exclude: [
                "ExceptionList", // not yet supported
                "attachContextLostEvent", // method with params as parameter
                "attachContextRestoredEvent", // method with params as parameter
                "bindIndexBuffer", // protected modifier
                "getGlInfo", // object literal as result of a function
                "framebufferDimensionsObject", // object literal as type param
                "createRawCubeTextureFromUrl", // method with param as parameter
            ],
        },
        ThinSprite: {},
        ThinTexture: {},
        TransformNode: {},
        UniformBuffer: {},
        UtilityLayerRenderer: {},
        Vector2: {},
        Vector3: {},
        Vector4: {},
        VertexBuffer: {
            exclude: [
                "constructor" // union type
            ]
        },
        VertexData: {},
        Viewport: {},
        VRCameraMetrics: {},
        VRExperienceHelper: {
            include: [] // not yet generated
        },
        VRExperienceHelperOptions: {},
        WebVROptions: {},
        WebXRDefaultExperience: {
            include: [] // not yet generated
        },
        WebXRDefaultExperienceOptions: {
            include: [] // not yet generated
        },
    },
};
