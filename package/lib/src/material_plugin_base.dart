part of babylon_dart;

/// class MaterialPluginBase
@JS()
class MaterialPluginBase {
  // properties
  external String name;
  external num priority;
  external bool registerForExtraEvents;
  external static final void Function() markAllDefinesAsDirty;
  // methods
  external String getClassName();
  external bool isReadyForSubMesh(MaterialDefines defines, Scene scene, Engine engine, SubMesh subMesh);
  external void hardBindForSubMesh(UniformBuffer uniformBuffer, Scene scene, Engine engine, SubMesh subMesh);
  external void bindForSubMesh(UniformBuffer uniformBuffer, Scene scene, Engine engine, SubMesh subMesh);
  external void dispose([bool forceDisposeTextures]);
  external MaterialPluginBaseGetCustomCode? getCustomCode(String shaderType);
  external void collectDefines(MaterialPluginBaseCollectDefinesDefines defines);
  external void prepareDefinesBeforeAttributes(MaterialDefines defines, Scene scene, AbstractMesh mesh);
  external void prepareDefines(MaterialDefines defines, Scene scene, AbstractMesh mesh);
  external bool hasTexture(BaseTexture texture);
  external bool hasRenderTargetTextures();
  external void fillRenderTargetTextures(SmartArray<RenderTargetTexture> renderTargets);
  external void getActiveTextures(List<BaseTexture> activeTextures);
  external void getAnimatables(List<IAnimatable> animatables);
  external num addFallbacks(MaterialDefines defines, EffectFallbacks fallbacks, num currentRank);
  external void getSamplers(List<String> samplers);
  external void getAttributes(List<String> attributes, Scene scene, AbstractMesh mesh);
  external void getUniformBuffersNames(List<String> ubos);
  external MaterialPluginBaseGetUniforms getUniforms();
  external void copyTo(MaterialPluginBase plugin);
  external Object serialize();
  external void parse(Object source, Scene scene, String rootUrl);
}

@JS()
@anonymous
class MaterialPluginBaseGetCustomCode {
}

@JS()
@anonymous
class MaterialPluginBaseCollectDefinesDefines {
}

@JS()
@anonymous
class MaterialPluginBaseGetUniforms {
}
