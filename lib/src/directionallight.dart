part of babylon;

/// class DirectionalLight
@JS()
class DirectionalLight extends ShadowLight {
  external DirectionalLight(String name, Vector3 direction, Scene scene);
  external num get shadowFrustumSize;
  external num get shadowOrthoScale;
  external bool get autoUpdateExtends;
  external bool get autoCalcShadowZBounds;
  external set shadowFrustumSize(num value);
  external set shadowOrthoScale(num value);
  external set autoUpdateExtends(bool autoUpdateExtends);
  external set autoCalcShadowZBounds(bool autoCalcShadowZBounds);
  external String getClassName();
  external num getTypeID();
  external DirectionalLight transferToEffect(Effect effect, String lightIndex);
  external Light transferToNodeMaterialEffect(Effect effect, String lightDataUniformName);
  external num getDepthMinZ(Camera activeCamera);
  external num getDepthMaxZ(Camera activeCamera);
  external void prepareLightSpecificDefines(dynamic defines, num lightIndex);
}
