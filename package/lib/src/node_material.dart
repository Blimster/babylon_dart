part of babylon_dart;

/// class NodeMaterial
@JS()
class NodeMaterial extends PushMaterial {
  // properties
  external String EditorURL;
  external String SnippetUrl;
  external bool IgnoreTexturesAtLoadTime;
  external Object BJSNODEMATERIALEDITOR;
  external String snippetId;
  external Object editorData;
  external bool ignoreAlpha;
  external num maxSimultaneousLights;
  external Observable<NodeMaterial> onBuildObservable;
  external List<NodeMaterialBlock> attachedBlocks;
  external String comment;
  external bool forceAlphaBlending;
  // methods
  external String getClassName();
  external Object getBlockByName(String name);
  external Object getBlockByPredicate(bool Function(NodeMaterialBlock block) predicate);
  external InputBlock? getInputBlockByPredicate(bool Function(InputBlock block) predicate);
  external List<InputBlock> getInputBlocks();
  external THIS? registerOptimizer(NodeMaterialOptimizer optimizer);
  external THIS? unregisterOptimizer(NodeMaterialOptimizer optimizer);
  external THIS addOutputNode<THIS extends NodeMaterial>(NodeMaterialBlock node);
  external THIS removeOutputNode<THIS extends NodeMaterial>(NodeMaterialBlock node);
  external bool needAlphaBlending();
  external bool needAlphaTesting();
  external void removeBlock(NodeMaterialBlock block);
  external void build([bool verbose, bool updateBuildId, bool autoConfigure]);
  external void optimize();
  external PostProcess? createPostProcess(Camera? camera, [Object options, num samplingMode, Engine engine, bool reusable, num textureType, num textureFormat]);
  external void createEffectForPostProcess(PostProcess postProcess);
  external ProceduralTexture? createProceduralTexture(Object size, Scene scene);
  external void createEffectForParticles(IParticleSystem particleSystem, [void Function(Effect effect) onCompiled, void Function(Effect effect, String errors) onError]);
  external void createAsShadowDepthWrapper(Material targetMaterial);
  external bool isReadyForSubMesh(AbstractMesh mesh, SubMesh subMesh, [bool useInstances]);
  external void bindOnlyWorldMatrix(Matrix world);
  external void bindForSubMesh(Matrix world, Mesh mesh, SubMesh subMesh);
  external List<BaseTexture> getActiveTextures();
  external List<Object> getTextureBlocks();
  external bool hasTexture(BaseTexture texture);
  external void dispose([bool forceDisposeEffect, bool forceDisposeTextures, bool notBoundToMesh]);
  external Promise<void> edit([INodeMaterialEditorOptions config]);
  external void clear();
  external void setToDefault();
  external void setToDefaultPostProcess();
  external void setToDefaultProceduralTexture();
  external void setToDefaultParticle();
  external Promise<NodeMaterial> loadAsync(String url, [String rootUrl]);
  external String generateCode();
  external Object serialize([List<NodeMaterialBlock> selectedBlocks]);
  external void parseSerializedObject(Object source, [String rootUrl, bool merge]);
  external void loadFromSerialization(Object source, [String rootUrl, bool merge]);
  external NodeMaterial clone(String name, [bool shareEffect]);
  external static NodeMaterial Parse(Object source, Scene scene, [String rootUrl]);
  external static Promise<NodeMaterial> ParseFromFileAsync(String name, String url, Scene scene, [String rootUrl, bool skipBuild, NodeMaterial targetMaterial]);
  external static Promise<NodeMaterial> ParseFromSnippetAsync(String snippetId, [Scene scene, String rootUrl, NodeMaterial nodeMaterial, bool skipBuild]);
  external static NodeMaterial CreateDefault(String name, [Scene scene]);
}

@JS()
@anonymous
class NodeMaterialCreateProceduralTextureSize {
}
