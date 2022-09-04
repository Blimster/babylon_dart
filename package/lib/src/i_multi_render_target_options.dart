part of babylon_dart;

/// interface IMultiRenderTargetOptions
@JS()
abstract class IMultiRenderTargetOptions {
  // properties
  external bool generateMipMaps;
  external List<num> types;
  external List<num> samplingModes;
  external List<bool> useSRGBBuffers;
  external bool generateDepthBuffer;
  external bool generateStencilBuffer;
  external bool generateDepthTexture;
  external num depthTextureFormat;
  external num textureCount;
  external bool doNotChangeAspectRatio;
  external num defaultType;
  external bool drawOnlyOnFirstAttachmentByDefault;
}
