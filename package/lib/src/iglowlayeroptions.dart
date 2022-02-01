part of babylon;

/// interface IGlowLayerOptions
@JS()
abstract class IGlowLayerOptions {
  external num mainTextureRatio;
  external num mainTextureFixedSize;
  external num blurKernelSize;
  external Camera camera;
  external num mainTextureSamples;
  external num renderingGroupId;
}
