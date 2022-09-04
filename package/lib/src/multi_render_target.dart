part of babylon_dart;

/// class MultiRenderTarget
@JS()
class MultiRenderTarget extends RenderTargetTexture {
  // methods
  external void setInternalTexture(InternalTexture texture, num index, [bool disposePrevious]);
  external void resize(Object size);
  external void updateCount(num count, [IMultiRenderTargetOptions options, List<String> textureNames]);
  external void dispose([bool doNotDisposeInternalTextures]);
  external void releaseInternalTextures();
}
