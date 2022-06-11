part of babylon_dart;

/// class AbstractScene
@JS()
abstract class AbstractScene {
  // properties
  external List<Node> rootNodes;
  external List<Camera> cameras;
  external List<Light> lights;
  external List<AbstractMesh> meshes;
  external List<Skeleton> skeletons;
  external List<IParticleSystem> particleSystems;
  external List<Animation> animations;
  external List<AnimationGroup> animationGroups;
  external List<MultiMaterial> multiMaterials;
  external List<Material> materials;
  external List<MorphTargetManager> morphTargetManagers;
  external List<Geometry> geometries;
  external List<TransformNode> transformNodes;
  external List<AbstractActionManager> actionManagers;
  external List<BaseTexture> textures;
  external List<PostProcess> postProcesses;
  // methods
  external static void AddParser(String name, BabylonFileParser parser);
  external static BabylonFileParser? GetParser(String name);
  external static void AddIndividualParser(String name, IndividualBabylonFileParser parser);
  external static IndividualBabylonFileParser? GetIndividualParser(String name);
  external static void Parse(Object jsonData, Scene scene, AssetContainer container, String rootUrl);
  external List<Node> getNodes();
}
