part of babylon;

/// class PBRMaterial
@JS()
class PBRMaterial extends PBRBaseMaterial {
  external PBRMaterial(String name, Scene scene);
  external BaseTexture get refractionTexture;
  external num get indexOfRefraction;
  external bool get invertRefractionY;
  external bool get linkRefractionWithTransparency;
  external bool get usePhysicalLightFalloff;
  external bool get useGLTFLightFalloff;
  external ImageProcessingConfiguration get imageProcessingConfiguration;
  external bool get cameraColorCurvesEnabled;
  external bool get cameraColorGradingEnabled;
  external bool get cameraToneMappingEnabled;
  external num get cameraExposure;
  external num get cameraContrast;
  external BaseTexture get cameraColorGradingTexture;
  external ColorCurves get cameraColorCurves;
  external static num get PBRMATERIAL_OPAQUE;
  external static num get PBRMATERIAL_ALPHATEST;
  external static num get PBRMATERIAL_ALPHABLEND;
  external static num get PBRMATERIAL_ALPHATESTANDBLEND;
  external static num get DEFAULT_AO_ON_ANALYTICAL_LIGHTS;
  external num get directIntensity;
  external num get emissiveIntensity;
  external num get environmentIntensity;
  external num get specularIntensity;
  external bool get disableBumpMap;
  external BaseTexture get albedoTexture;
  external BaseTexture get ambientTexture;
  external num get ambientTextureStrength;
  external num get ambientTextureImpactOnAnalyticalLights;
  external BaseTexture get opacityTexture;
  external BaseTexture get reflectionTexture;
  external BaseTexture get emissiveTexture;
  external BaseTexture get reflectivityTexture;
  external BaseTexture get metallicTexture;
  external num get metallic;
  external num get roughness;
  external num get metallicF0Factor;
  external Color3 get metallicReflectanceColor;
  external BaseTexture get metallicReflectanceTexture;
  external BaseTexture get microSurfaceTexture;
  external BaseTexture get bumpTexture;
  external BaseTexture get lightmapTexture;
  external Color3 get ambientColor;
  external Color3 get albedoColor;
  external Color3 get reflectivityColor;
  external Color3 get reflectionColor;
  external Color3 get emissiveColor;
  external num get microSurface;
  external bool get useLightmapAsShadowmap;
  external bool get useAlphaFromAlbedoTexture;
  external bool get forceAlphaTest;
  external num get alphaCutOff;
  external bool get useSpecularOverAlpha;
  external bool get useMicroSurfaceFromReflectivityMapAlpha;
  external bool get useRoughnessFromMetallicTextureAlpha;
  external bool get useRoughnessFromMetallicTextureGreen;
  external bool get useMetallnessFromMetallicTextureBlue;
  external bool get useAmbientOcclusionFromMetallicTextureRed;
  external bool get useAmbientInGrayScale;
  external bool get useAutoMicroSurfaceFromReflectivityMap;
  external bool get useRadianceOverAlpha;
  external bool get useObjectSpaceNormalMap;
  external bool get useParallax;
  external bool get useParallaxOcclusion;
  external num get parallaxScaleBias;
  external bool get disableLighting;
  external bool get forceIrradianceInFragment;
  external num get maxSimultaneousLights;
  external bool get invertNormalMapX;
  external bool get invertNormalMapY;
  external bool get twoSidedLighting;
  external bool get useAlphaFresnel;
  external bool get useLinearAlphaFresnel;
  external BaseTexture get environmentBRDFTexture;
  external bool get forceNormalForward;
  external bool get enableSpecularAntiAliasing;
  external bool get useHorizonOcclusion;
  external bool get useRadianceOcclusion;
  external bool get unlit;
  external set refractionTexture(BaseTexture value);
  external set indexOfRefraction(num value);
  external set invertRefractionY(bool value);
  external set linkRefractionWithTransparency(bool value);
  external set usePhysicalLightFalloff(bool value);
  external set useGLTFLightFalloff(bool value);
  external set imageProcessingConfiguration(ImageProcessingConfiguration value);
  external set cameraColorCurvesEnabled(bool value);
  external set cameraColorGradingEnabled(bool value);
  external set cameraToneMappingEnabled(bool value);
  external set cameraExposure(num value);
  external set cameraContrast(num value);
  external set cameraColorGradingTexture(BaseTexture value);
  external set cameraColorCurves(ColorCurves value);
  external static set DEFAULT_AO_ON_ANALYTICAL_LIGHTS(num DEFAULT_AO_ON_ANALYTICAL_LIGHTS);
  external set directIntensity(num directIntensity);
  external set emissiveIntensity(num emissiveIntensity);
  external set environmentIntensity(num environmentIntensity);
  external set specularIntensity(num specularIntensity);
  external set disableBumpMap(bool disableBumpMap);
  external set albedoTexture(BaseTexture albedoTexture);
  external set ambientTexture(BaseTexture ambientTexture);
  external set ambientTextureStrength(num ambientTextureStrength);
  external set ambientTextureImpactOnAnalyticalLights(num ambientTextureImpactOnAnalyticalLights);
  external set opacityTexture(BaseTexture opacityTexture);
  external set reflectionTexture(BaseTexture reflectionTexture);
  external set emissiveTexture(BaseTexture emissiveTexture);
  external set reflectivityTexture(BaseTexture reflectivityTexture);
  external set metallicTexture(BaseTexture metallicTexture);
  external set metallic(num metallic);
  external set roughness(num roughness);
  external set metallicF0Factor(num metallicF0Factor);
  external set metallicReflectanceColor(Color3 metallicReflectanceColor);
  external set metallicReflectanceTexture(BaseTexture metallicReflectanceTexture);
  external set microSurfaceTexture(BaseTexture microSurfaceTexture);
  external set bumpTexture(BaseTexture bumpTexture);
  external set lightmapTexture(BaseTexture lightmapTexture);
  external set ambientColor(Color3 ambientColor);
  external set albedoColor(Color3 albedoColor);
  external set reflectivityColor(Color3 reflectivityColor);
  external set reflectionColor(Color3 reflectionColor);
  external set emissiveColor(Color3 emissiveColor);
  external set microSurface(num microSurface);
  external set useLightmapAsShadowmap(bool useLightmapAsShadowmap);
  external set useAlphaFromAlbedoTexture(bool useAlphaFromAlbedoTexture);
  external set forceAlphaTest(bool forceAlphaTest);
  external set alphaCutOff(num alphaCutOff);
  external set useSpecularOverAlpha(bool useSpecularOverAlpha);
  external set useMicroSurfaceFromReflectivityMapAlpha(bool useMicroSurfaceFromReflectivityMapAlpha);
  external set useRoughnessFromMetallicTextureAlpha(bool useRoughnessFromMetallicTextureAlpha);
  external set useRoughnessFromMetallicTextureGreen(bool useRoughnessFromMetallicTextureGreen);
  external set useMetallnessFromMetallicTextureBlue(bool useMetallnessFromMetallicTextureBlue);
  external set useAmbientOcclusionFromMetallicTextureRed(bool useAmbientOcclusionFromMetallicTextureRed);
  external set useAmbientInGrayScale(bool useAmbientInGrayScale);
  external set useAutoMicroSurfaceFromReflectivityMap(bool useAutoMicroSurfaceFromReflectivityMap);
  external set useRadianceOverAlpha(bool useRadianceOverAlpha);
  external set useObjectSpaceNormalMap(bool useObjectSpaceNormalMap);
  external set useParallax(bool useParallax);
  external set useParallaxOcclusion(bool useParallaxOcclusion);
  external set parallaxScaleBias(num parallaxScaleBias);
  external set disableLighting(bool disableLighting);
  external set forceIrradianceInFragment(bool forceIrradianceInFragment);
  external set maxSimultaneousLights(num maxSimultaneousLights);
  external set invertNormalMapX(bool invertNormalMapX);
  external set invertNormalMapY(bool invertNormalMapY);
  external set twoSidedLighting(bool twoSidedLighting);
  external set useAlphaFresnel(bool useAlphaFresnel);
  external set useLinearAlphaFresnel(bool useLinearAlphaFresnel);
  external set environmentBRDFTexture(BaseTexture environmentBRDFTexture);
  external set forceNormalForward(bool forceNormalForward);
  external set enableSpecularAntiAliasing(bool enableSpecularAntiAliasing);
  external set useHorizonOcclusion(bool useHorizonOcclusion);
  external set useRadianceOcclusion(bool useRadianceOcclusion);
  external set unlit(bool unlit);
  external String getClassName();
  external PBRMaterial clone(String name);
  external dynamic serialize();
  external static PBRMaterial Parse(dynamic parsedMaterial, Scene scene, String rootUrl);
}
