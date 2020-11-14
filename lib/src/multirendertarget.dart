part of babylon;

/// class MultiRenderTarget
@JS()
class MultiRenderTarget extends RenderTargetTexture {
  external MultiRenderTarget(String name, dynamic size, num count, Scene scene, [IMultiRenderTargetOptions options]);
  external bool get isSupported;
  external List<Texture> get textures;
  external num get count;
  external Texture get depthTexture;
  external num get samples;
  external set wrapU(num wrap);
  external set wrapV(num wrap);
  external set samples(num value);
  external void replaceTexture(Texture texture, num index);
  external void resize(dynamic size);
  external void updateCount(num count, [IMultiRenderTargetOptions options]);
  external void dispose();
  external void releaseInternalTextures();
}
