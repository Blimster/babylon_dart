part of babylon;

@JS()
class AbstractScene {
  List<Node> rootNodes;
  List<Camera> cameras;
  List<Light> lights;
  List<AbstractMesh> meshes;
  List<Skeleton> skeletons;
  List<IParticleSystem> particleSystems;
  List<Animation> animations;
  List<AnimationGroup> animationGroups;
  List<MultiMaterial> multiMaterials;
  List<Material> materials;
  List<Geometry> geometries;
  List<TransformNode> transformNodes;
  List<BaseTexture> textures;
  BaseTexture environmentTexture;
  external static void Parse(dynamic jsonData, Scene scene, AssetContainer container, String rootUrl);
  external List<Node> getNodes();
}

