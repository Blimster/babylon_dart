part of babylon;

@JS()
class PointLight extends ShadowLight {
  external PointLight(String name, Vector3 position, Scene scene);
  external num get shadowAngle;
  external Vector3 get direction;
  external set shadowAngle(num value);
  external set direction(Vector3 value);
  external String getClassName();
  external num getTypeID();
  external bool needCube();
  external Vector3 getShadowDirection([num faceIndex]);
  external PointLight transferToEffect(Effect effect, String lightIndex);
  external PointLight transferToNodeMaterialEffect(Effect effect, String lightDataUniformName);
  external void prepareLightSpecificDefines(dynamic defines, num lightIndex);
}
