part of babylon;

/// interface WebVROptions
@JS()
abstract class WebVROptions {
  external bool trackPosition;
  external num positionScale;
  external String displayName;
  external bool controllerMeshes;
  external bool defaultLightingOnControllers;
  external bool useCustomVRButton;
  external ButtonElement customVRButton;
  external num rayLength;
  external num defaultHeight;
  external bool useMultiview;
}
