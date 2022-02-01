part of babylon;

/// interface IHighlightLayerOptions
@JS()
abstract class IHighlightLayerOptions {
  external num mainTextureRatio;
  external num mainTextureFixedSize;
  external num blurTextureSizeRatio;
  external num blurVerticalSize;
  external num blurHorizontalSize;
  external num alphaBlendingMode;
  external Camera camera;
  external bool isStroke;
  external num renderingGroupId;
}
