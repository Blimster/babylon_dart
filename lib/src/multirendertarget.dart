part of babylon;

/// class MultiRenderTarget
@JS()
class MultiRenderTarget extends RenderTargetTexture {
  external MultiRenderTarget(String name, dynamic size, num count, Scene scene, [IMultiRenderTargetOptions options]);
  external bool get isSupported;
  external List<Texture> get textures;
  external Texture get depthTexture;
  external num get samples;
  external set wrapU(num wrap);
  external set wrapV(num wrap);
  external set samples(num value);
  external void resize(dynamic size);
  external void dispose();
  external void releaseInternalTextures();
}
