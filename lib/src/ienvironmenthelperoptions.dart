part of babylon;

/// interface IEnvironmentHelperOptions
@JS()
abstract class IEnvironmentHelperOptions {
  external bool createGround;
  external num groundSize;
  external dynamic groundTexture;
  external Color3 groundColor;
  external num groundOpacity;
  external bool enableGroundShadow;
  external num groundShadowLevel;
  external bool enableGroundMirror;
  external num groundMirrorSizeRatio;
  external num groundMirrorBlurKernel;
  external num groundMirrorAmount;
  external num groundMirrorFresnelWeight;
  external num groundMirrorFallOffDistance;
  external num groundMirrorTextureType;
  external num groundYBias;
  external bool createSkybox;
  external num skyboxSize;
  external dynamic skyboxTexture;
  external Color3 skyboxColor;
  external num backgroundYRotation;
  external bool sizeAuto;
  external Vector3 rootPosition;
  external bool setupImageProcessing;
  external dynamic environmentTexture;
  external num cameraExposure;
  external num cameraContrast;
  external bool toneMappingEnabled;
}
