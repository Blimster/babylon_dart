part of babylon;

/// interface WebVROptions
@JS()
abstract class WebVROptions {
  bool trackPosition;
  num positionScale;
  String displayName;
  bool controllerMeshes;
  bool defaultLightingOnControllers;
  bool useCustomVRButton;
  ButtonElement customVRButton;
  num rayLength;
  num defaultHeight;
  bool useMultiview;
}
