part of babylon;

@JS()
class ShadowGenerator {
  external ShadowGenerator(int mapSize, ShadowLight light);
  external RenderTargetTexture getShadowMap();
}
