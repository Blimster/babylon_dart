part of babylon;

@JS()
abstract class IShadowGenerator {
  external RenderTargetTexture getShadowMap();
  external bool isReady(SubMesh subMesh, bool useInstances, bool isTransparent);
  external void prepareDefines(MaterialDefines defines, num lightIndex);
  external void bindShadowLight(String lightIndex, Effect effect);
  external Matrix getTransformMatrix();
  external void recreateShadowMap();
  external dynamic serialize();
  external void dispose();
}
