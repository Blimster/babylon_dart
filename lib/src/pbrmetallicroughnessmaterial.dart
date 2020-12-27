part of babylon;

/// class PBRMetallicRoughnessMaterial
@JS()
class PBRMetallicRoughnessMaterial extends PBRBaseSimpleMaterial {
  external PBRMetallicRoughnessMaterial(String name, Scene scene);
  external Color3 get baseColor;
  external BaseTexture get baseTexture;
  external num get metallic;
  external num get roughness;
  external BaseTexture get metallicRoughnessTexture;
  external set baseColor(Color3 baseColor);
  external set baseTexture(BaseTexture baseTexture);
  external set metallic(num metallic);
  external set roughness(num roughness);
  external set metallicRoughnessTexture(BaseTexture metallicRoughnessTexture);
  external String getClassName();
  external PBRMetallicRoughnessMaterial clone(String name);
  external dynamic serialize();
  external static PBRMetallicRoughnessMaterial Parse(dynamic parsedMaterial, Scene scene, String rootUrl);
}
