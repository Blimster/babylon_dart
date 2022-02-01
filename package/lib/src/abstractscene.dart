part of babylon;

/// class AbstractScene
@JS()
abstract class AbstractScene {
  external BaseTexture get environmentTexture;
  external List<Node> get rootNodes;
  external List<Camera> get cameras;
  external List<Light> get lights;
  external List<AbstractMesh> get meshes;
  external List<Skeleton> get skeletons;
  external List<IParticleSystem> get particleSystems;
  external List<Animation> get animations;
  external List<AnimationGroup> get animationGroups;
  external List<MultiMaterial> get multiMaterials;
  external List<Material> get materials;
  external List<Geometry> get geometries;
  external List<TransformNode> get transformNodes;
  external List<BaseTexture> get textures;
  external List<PostProcess> get postProcesses;
  external set environmentTexture(BaseTexture value);
  external set rootNodes(List<Node> rootNodes);
  external set cameras(List<Camera> cameras);
  external set lights(List<Light> lights);
  external set meshes(List<AbstractMesh> meshes);
  external set skeletons(List<Skeleton> skeletons);
  external set particleSystems(List<IParticleSystem> particleSystems);
  external set animations(List<Animation> animations);
  external set animationGroups(List<AnimationGroup> animationGroups);
  external set multiMaterials(List<MultiMaterial> multiMaterials);
  external set materials(List<Material> materials);
  external set geometries(List<Geometry> geometries);
  external set transformNodes(List<TransformNode> transformNodes);
  external set textures(List<BaseTexture> textures);
  external set postProcesses(List<PostProcess> postProcesses);
  external static void Parse(dynamic jsonData, Scene scene, AssetContainer container, String rootUrl);
  external List<Node> getNodes();
  external List<EffectLayer> effectLayers;
  external num removeEffectLayer(EffectLayer toRemove);
  external void addEffectLayer(EffectLayer newEffectLayer);
  external GlowLayer getGlowLayerByName(String name);
  external HighlightLayer getHighlightLayerByName(String name);
  external List<Layer> layers;
  external List<LensFlareSystem> lensFlareSystems;
  external num removeLensFlareSystem(LensFlareSystem toRemove);
  external void addLensFlareSystem(LensFlareSystem newLensFlareSystem);
  external LensFlareSystem getLensFlareSystemByName(String name);
  external LensFlareSystem getLensFlareSystemByID(String id);
  external List<ReflectionProbe> reflectionProbes;
  external num removeReflectionProbe(ReflectionProbe toRemove);
  external void addReflectionProbe(ReflectionProbe newReflectionProbe);
  external PrePassRenderer prePassRenderer;
  external PrePassRenderer enablePrePassRenderer();
  external void disablePrePassRenderer();
  external SubSurfaceConfiguration subSurfaceConfiguration;
  external SubSurfaceConfiguration enableSubSurfaceForPrePass();
  external void disableSubSurfaceForPrePass();
}
