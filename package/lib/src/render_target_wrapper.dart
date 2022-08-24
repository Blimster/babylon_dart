part of babylon_dart;

/// class RenderTargetWrapper
@JS()
class RenderTargetWrapper {
  // methods
  external num setSamples(num value, [bool initializeBuffers, bool force]);
  external void setTextures(Object textures);
  external void setTexture(InternalTexture texture, [num index, bool disposePrevious]);
  external InternalTexture createDepthStencilTexture([num comparisonFunction, bool bilinearFiltering, bool generateStencil, num samples, num format]);
  external void releaseTextures();
  external void dispose([bool disposeOnlyFramebuffers]);
}
