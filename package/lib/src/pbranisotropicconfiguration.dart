part of babylon;

/// class PBRAnisotropicConfiguration
@JS()
class PBRAnisotropicConfiguration {
  external PBRAnisotropicConfiguration(void Function() markAllSubMeshesAsTexturesDirty);
  external bool get isEnabled;
  external num get intensity;
  external Vector2 get direction;
  external BaseTexture get texture;
  external set isEnabled(bool isEnabled);
  external set intensity(num intensity);
  external set direction(Vector2 direction);
  external set texture(BaseTexture texture);
  external bool isReadyForSubMesh(IMaterialAnisotropicDefines defines, Scene scene);
  external void prepareDefines(IMaterialAnisotropicDefines defines, AbstractMesh mesh, Scene scene);
  external void bindForSubMesh(UniformBuffer uniformBuffer, Scene scene, bool isFrozen);
  external bool hasTexture(BaseTexture texture);
  external void getActiveTextures(List<BaseTexture> activeTextures);
  external void getAnimatables(List<IAnimatable> animatables);
  external void dispose([bool forceDisposeTextures]);
  external String getClassName();
  external static num AddFallbacks(IMaterialAnisotropicDefines defines, EffectFallbacks fallbacks, num currentRank);
  external static void AddUniforms(List<String> uniforms);
  external static void PrepareUniformBuffer(UniformBuffer uniformBuffer);
  external static void AddSamplers(List<String> samplers);
  external void copyTo(PBRAnisotropicConfiguration anisotropicConfiguration);
  external dynamic serialize();
  external void parse(dynamic source, Scene scene, String rootUrl);
}
