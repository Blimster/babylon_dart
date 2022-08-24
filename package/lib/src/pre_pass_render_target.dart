part of babylon_dart;

/// class PrePassRenderTarget
@JS()
class PrePassRenderTarget extends MultiRenderTarget {
  // properties
  external ImageProcessingPostProcess imageProcessingPostProcess;
  external bool enabled;
  external RenderTargetTexture? renderTargetTexture;
  // methods
  external void updateCount(num count, [IMultiRenderTargetOptions options, List<String> textureNames]);
  external void dispose([bool doNotDisposeInternalTextures]);
}
