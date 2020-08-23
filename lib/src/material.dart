part of babylon;

@JS()
class Material {
  external set wireframe(bool v);
  external bool get wireframe;
  external set alpha(num v);
  external num get alpha;
}

@JS()
class StandardMaterial extends Material {
  external StandardMaterial(String name, Scene scene);
  external set diffuseColor(Color3 v);
  external Color3 get diffuseColor;
  external set specularColor(Color3 v);
  external Color3 get specularColor;
  external set diffuseTexture(BaseTexture v);
  external BaseTexture get diffuseTexture;
}
