part of babylon;

/// class PBRSpecularGlossinessMaterial
@JS()
class PBRSpecularGlossinessMaterial extends PBRBaseSimpleMaterial {
  external PBRSpecularGlossinessMaterial(String name, Scene scene);
  external Color3 get diffuseColor;
  external BaseTexture get diffuseTexture;
  external Color3 get specularColor;
  external num get glossiness;
  external BaseTexture get specularGlossinessTexture;
  external set diffuseColor(Color3 diffuseColor);
  external set diffuseTexture(BaseTexture diffuseTexture);
  external set specularColor(Color3 specularColor);
  external set glossiness(num glossiness);
  external set specularGlossinessTexture(BaseTexture specularGlossinessTexture);
  external String getClassName();
  external PBRSpecularGlossinessMaterial clone(String name);
  external dynamic serialize();
  external static PBRSpecularGlossinessMaterial Parse(dynamic parsedMaterial, Scene scene, String rootUrl);
}
