part of babylon;

/// class HemisphericLight
@JS()
class HemisphericLight extends Light {
  external HemisphericLight(String name, Vector3 direction, Scene scene);
  external Color3 get groundColor;
  external Vector3 get direction;
  external set groundColor(Color3 groundColor);
  external set direction(Vector3 direction);
  external String getClassName();
  external Vector3 setDirectionToTarget(Vector3 target);
  external IShadowGenerator getShadowGenerator();
  external HemisphericLight transferToEffect(Effect effect, String lightIndex);
  external HemisphericLight transferToNodeMaterialEffect(Effect effect, String lightDataUniformName);
  external Matrix computeWorldMatrix([bool force]);
  external num getTypeID();
  external void prepareLightSpecificDefines(dynamic defines, num lightIndex);
}
