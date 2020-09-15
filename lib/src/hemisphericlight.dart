part of babylon;

@JS()
class HemisphericLight extends Light {
  external HemisphericLight(String name, Vector3 direction, Scene scene);
  Color3 groundColor;
  Vector3 direction;
  external String getClassName();
  external Vector3 setDirectionToTarget(Vector3 target);
  external HemisphericLight transferToEffect(Effect effect, String lightIndex);
  external HemisphericLight transferToNodeMaterialEffect(Effect effect, String lightDataUniformName);
  external Matrix computeWorldMatrix();
  external num getTypeID();
  external void prepareLightSpecificDefines(dynamic defines, num lightIndex);
}

