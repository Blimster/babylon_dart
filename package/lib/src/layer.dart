part of babylon;

/// class Layer
@JS()
class Layer {
  external Layer(String name, String imgUrl, Scene scene, [bool isBackground, Color4 color]);
  external String get name;
  external Texture get texture;
  external bool get isBackground;
  external Color4 get color;
  external Vector2 get scale;
  external Vector2 get offset;
  external num get alphaBlendingMode;
  external bool get alphaTest;
  external num get layerMask;
  external List<RenderTargetTexture> get renderTargetTextures;
  external bool get renderOnlyInRenderTargetTextures;
  external Observable<Layer> get onDisposeObservable;
  external Observable<Layer> get onBeforeRenderObservable;
  external Observable<Layer> get onAfterRenderObservable;
  external set onDispose(void Function() callback);
  external set onBeforeRender(void Function() callback);
  external set onAfterRender(void Function() callback);
  external set name(String name);
  external set texture(Texture texture);
  external set isBackground(bool isBackground);
  external set color(Color4 color);
  external set scale(Vector2 scale);
  external set offset(Vector2 offset);
  external set alphaBlendingMode(num alphaBlendingMode);
  external set alphaTest(bool alphaTest);
  external set layerMask(num layerMask);
  external set renderTargetTextures(List<RenderTargetTexture> renderTargetTextures);
  external set renderOnlyInRenderTargetTextures(bool renderOnlyInRenderTargetTextures);
  external set onDisposeObservable(Observable<Layer> onDisposeObservable);
  external set onBeforeRenderObservable(Observable<Layer> onBeforeRenderObservable);
  external set onAfterRenderObservable(Observable<Layer> onAfterRenderObservable);
  external void render();
  external void dispose();
}
