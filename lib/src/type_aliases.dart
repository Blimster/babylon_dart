part of babylon;

typedef TrianglePickingPredicate = bool Function(Vector3 p0, Vector3 p1, Vector3 p2, Ray ray);
typedef MeshStageAction = bool Function(AbstractMesh mesh, bool hardwareInstancedRendering);
typedef EvaluateSubMeshStageAction = void Function(AbstractMesh mesh, SubMesh subMesh);
typedef PreActiveMeshStageAction = void Function(AbstractMesh mesh);
typedef CameraStageAction = void Function(Camera camera);
typedef CameraStageFrameBufferAction = bool Function(Camera camera);
typedef RenderTargetStageAction = void Function(RenderTargetTexture renderTarget);
typedef RenderingGroupStageAction = void Function(num renderingGroupId);
typedef SimpleStageAction = void Function();
typedef RenderTargetsStageAction = void Function(SmartArrayNoDuplicate<RenderTargetTexture> renderTargets);
typedef PointerMoveStageAction = PickingInfo Function(num unTranslatedPointerX, num unTranslatedPointerY, PickingInfo pickResult, bool isMeshPicked, HtmlElement element);
typedef PointerUpDownStageAction = PickingInfo Function(num unTranslatedPointerX, num unTranslatedPointerY, PickingInfo pickResult, PointerEvent evt);
typedef NodeConstructor = Node Function() Function(String name, Scene scene, [dynamic options]);
typedef BabylonFileParser = void Function(dynamic parsedData, Scene scene, AssetContainer container, String rootUrl);
typedef IndividualBabylonFileParser = dynamic Function(dynamic parsedData, Scene scene, String rootUrl);
typedef SceneLoaderSuccessCallback = void Function(List<AbstractMesh> meshes, List<IParticleSystem> particleSystems, List<Skeleton> skeletons, List<AnimationGroup> animationGroups, List<TransformNode> transformNodes, List<Geometry> geometries, List<Light> lights);
typedef XREventHandler = void Function(dynamic callback);
