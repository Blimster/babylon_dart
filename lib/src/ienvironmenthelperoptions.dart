part of babylon;

/// interface IEnvironmentHelperOptions
@JS()
abstract class IEnvironmentHelperOptions {
  bool createGround;
  num groundSize;
  dynamic groundTexture;
  Color3 groundColor;
  num groundOpacity;
  bool enableGroundShadow;
  num groundShadowLevel;
  bool enableGroundMirror;
  num groundMirrorSizeRatio;
  num groundMirrorBlurKernel;
  num groundMirrorAmount;
  num groundMirrorFresnelWeight;
  num groundMirrorFallOffDistance;
  num groundMirrorTextureType;
  num groundYBias;
  bool createSkybox;
  num skyboxSize;
  dynamic skyboxTexture;
  Color3 skyboxColor;
  num backgroundYRotation;
  bool sizeAuto;
  Vector3 rootPosition;
  bool setupImageProcessing;
  dynamic environmentTexture;
  num cameraExposure;
  num cameraContrast;
  bool toneMappingEnabled;
}
