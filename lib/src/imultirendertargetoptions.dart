part of babylon;

/// interface IMultiRenderTargetOptions
@JS()
abstract class IMultiRenderTargetOptions {
  external bool generateMipMaps;
  external List<num> types;
  external List<num> samplingModes;
  external bool generateDepthBuffer;
  external bool generateStencilBuffer;
  external bool generateDepthTexture;
  external num textureCount;
  external bool doNotChangeAspectRatio;
  external num defaultType;
}
