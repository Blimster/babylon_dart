part of babylon;

/// class PBRSheenConfiguration
@JS()
class PBRSheenConfiguration {
  external PBRSheenConfiguration(void Function() markAllSubMeshesAsTexturesDirty);
  external bool get isEnabled;
  external bool get linkSheenWithAlbedo;
  external num get intensity;
  external Color3 get color;
  external BaseTexture get texture;
  external bool get useRoughnessFromMainTexture;
  external num get roughness;
  external BaseTexture get textureRoughness;
  external bool get albedoScaling;
  external set isEnabled(bool isEnabled);
  external set linkSheenWithAlbedo(bool linkSheenWithAlbedo);
  external set intensity(num intensity);
  external set color(Color3 color);
  external set texture(BaseTexture texture);
  external set useRoughnessFromMainTexture(bool useRoughnessFromMainTexture);
  external set roughness(num roughness);
  external set textureRoughness(BaseTexture textureRoughness);
  external set albedoScaling(bool albedoScaling);
  external bool isReadyForSubMesh(IMaterialSheenDefines defines, Scene scene);
  external void prepareDefines(IMaterialSheenDefines defines, Scene scene);
  external void bindForSubMesh(UniformBuffer uniformBuffer, Scene scene, bool isFrozen, [SubMesh subMesh]);
  external bool hasTexture(BaseTexture texture);
  external void getActiveTextures(List<BaseTexture> activeTextures);
  external void getAnimatables(List<IAnimatable> animatables);
  external void dispose([bool forceDisposeTextures]);
  external String getClassName();
  external static num AddFallbacks(IMaterialSheenDefines defines, EffectFallbacks fallbacks, num currentRank);
  external static void AddUniforms(List<String> uniforms);
  external static void PrepareUniformBuffer(UniformBuffer uniformBuffer);
  external static void AddSamplers(List<String> samplers);
  external void copyTo(PBRSheenConfiguration sheenConfiguration);
  external dynamic serialize();
  external void parse(dynamic source, Scene scene, String rootUrl);
}
