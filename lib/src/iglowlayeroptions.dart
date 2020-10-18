part of babylon;

/// interface IGlowLayerOptions
@JS()
abstract class IGlowLayerOptions {
  num mainTextureRatio;
  num mainTextureFixedSize;
  num blurKernelSize;
  Camera camera;
  num mainTextureSamples;
  num renderingGroupId;
}
