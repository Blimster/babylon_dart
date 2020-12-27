part of babylon;

/// class PBRBaseSimpleMaterial
@JS()
abstract class PBRBaseSimpleMaterial extends PBRBaseMaterial {
  external bool get doubleSided;
  external num get maxSimultaneousLights;
  external bool get disableLighting;
  external BaseTexture get environmentTexture;
  external bool get invertNormalMapX;
  external bool get invertNormalMapY;
  external BaseTexture get normalTexture;
  external Color3 get emissiveColor;
  external BaseTexture get emissiveTexture;
  external num get occlusionStrength;
  external BaseTexture get occlusionTexture;
  external num get alphaCutOff;
  external BaseTexture get lightmapTexture;
  external bool get useLightmapAsShadowmap;
  external set doubleSided(bool value);
  external set maxSimultaneousLights(num maxSimultaneousLights);
  external set disableLighting(bool disableLighting);
  external set environmentTexture(BaseTexture environmentTexture);
  external set invertNormalMapX(bool invertNormalMapX);
  external set invertNormalMapY(bool invertNormalMapY);
  external set normalTexture(BaseTexture normalTexture);
  external set emissiveColor(Color3 emissiveColor);
  external set emissiveTexture(BaseTexture emissiveTexture);
  external set occlusionStrength(num occlusionStrength);
  external set occlusionTexture(BaseTexture occlusionTexture);
  external set alphaCutOff(num alphaCutOff);
  external set lightmapTexture(BaseTexture lightmapTexture);
  external set useLightmapAsShadowmap(bool useLightmapAsShadowmap);
  external String getClassName();
}
