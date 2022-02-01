part of babylon;

/// interface IShadowGenerator
@JS()
abstract class IShadowGenerator {
  external String id;
  RenderTargetTexture getShadowMap();
  bool isReady(SubMesh subMesh, bool useInstances, bool isTransparent);
  void prepareDefines(MaterialDefines defines, num lightIndex);
  void bindShadowLight(String lightIndex, Effect effect);
  Matrix getTransformMatrix();
  void recreateShadowMap();
  dynamic serialize();
  void dispose();
}
