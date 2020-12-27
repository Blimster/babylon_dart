part of babylon;

/// class PBRClearCoatConfiguration
@JS()
class PBRClearCoatConfiguration {
  external PBRClearCoatConfiguration(void Function() markAllSubMeshesAsTexturesDirty);
  external bool get isEnabled;
  external num get intensity;
  external num get roughness;
  external num get indexOfRefraction;
  external BaseTexture get texture;
  external bool get useRoughnessFromMainTexture;
  external BaseTexture get textureRoughness;
  external bool get remapF0OnInterfaceChange;
  external BaseTexture get bumpTexture;
  external bool get isTintEnabled;
  external Color3 get tintColor;
  external num get tintColorAtDistance;
  external num get tintThickness;
  external BaseTexture get tintTexture;
  external set isEnabled(bool isEnabled);
  external set intensity(num intensity);
  external set roughness(num roughness);
  external set indexOfRefraction(num indexOfRefraction);
  external set texture(BaseTexture texture);
  external set useRoughnessFromMainTexture(bool useRoughnessFromMainTexture);
  external set textureRoughness(BaseTexture textureRoughness);
  external set remapF0OnInterfaceChange(bool remapF0OnInterfaceChange);
  external set bumpTexture(BaseTexture bumpTexture);
  external set isTintEnabled(bool isTintEnabled);
  external set tintColor(Color3 tintColor);
  external set tintColorAtDistance(num tintColorAtDistance);
  external set tintThickness(num tintThickness);
  external set tintTexture(BaseTexture tintTexture);
  external bool isReadyForSubMesh(IMaterialClearCoatDefines defines, Scene scene, Engine engine, bool disableBumpMap);
  external void prepareDefines(IMaterialClearCoatDefines defines, Scene scene);
  external void bindForSubMesh(UniformBuffer uniformBuffer, Scene scene, Engine engine, bool disableBumpMap, bool isFrozen, bool invertNormalMapX, bool invertNormalMapY, [SubMesh subMesh]);
  external bool hasTexture(BaseTexture texture);
  external void getActiveTextures(List<BaseTexture> activeTextures);
  external void getAnimatables(List<IAnimatable> animatables);
  external void dispose([bool forceDisposeTextures]);
  external String getClassName();
  external static num AddFallbacks(IMaterialClearCoatDefines defines, EffectFallbacks fallbacks, num currentRank);
  external static void AddUniforms(List<String> uniforms);
  external static void AddSamplers(List<String> samplers);
  external static void PrepareUniformBuffer(UniformBuffer uniformBuffer);
  external void copyTo(PBRClearCoatConfiguration clearCoatConfiguration);
  external dynamic serialize();
  external void parse(dynamic source, Scene scene, String rootUrl);
}
