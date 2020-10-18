part of babylon;

/// interface IHighlightLayerOptions
@JS()
abstract class IHighlightLayerOptions {
  num mainTextureRatio;
  num mainTextureFixedSize;
  num blurTextureSizeRatio;
  num blurVerticalSize;
  num blurHorizontalSize;
  num alphaBlendingMode;
  Camera camera;
  bool isStroke;
  num renderingGroupId;
}
