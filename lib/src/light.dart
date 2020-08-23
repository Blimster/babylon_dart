part of babylon;

@JS()
class Light {
  external set diffuse(Color3 v);
  external set intensity(num v);
  external num get intensity;
}

@JS()
class ShadowLight extends Light {
  external Vector3 get position;
}

@JS()
class HemisphericLight extends Light {
  external HemisphericLight(String name, Vector3 direction, Scene scene);
  external set diffuse(Color3 v);
}

@JS()
class PointLight extends ShadowLight {
  external PointLight(String name, Vector3 position, Scene scene);
}
