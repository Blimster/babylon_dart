part of babylon;

/// interface IMultiRenderTargetOptions
@JS()
abstract class IMultiRenderTargetOptions {
  bool generateMipMaps;
  List<num> types;
  List<num> samplingModes;
  bool generateDepthBuffer;
  bool generateStencilBuffer;
  bool generateDepthTexture;
  num textureCount;
  bool doNotChangeAspectRatio;
  num defaultType;
}
