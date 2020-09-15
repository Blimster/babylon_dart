part of babylon;

@JS()
class FramingBehavior {
  ExponentialEase EasingFunction;
  num EasingMode;
  bool autoCorrectCameraLimitsAndSensibility;
  num IgnoreBoundsSizeMode;
  num FitFrustumSidesMode;
  external String get name;
  external num get mode;
  external num get radiusScale;
  external num get positionScale;
  external num get defaultElevation;
  external num get elevationReturnTime;
  external num get elevationReturnWaitTime;
  external bool get zoomStopsAnimation;
  external num get framingTime;
  external bool get isUserIsMoving;
  external set mode(num mode);
  external set radiusScale(num radius);
  external set positionScale(num scale);
  external set defaultElevation(num elevation);
  external set elevationReturnTime(num speed);
  external set elevationReturnWaitTime(num time);
  external set zoomStopsAnimation(bool flag);
  external set framingTime(num time);
  external void init();
  external void attach(ArcRotateCamera camera);
  external void detach();
  external void stopAllAnimations();
}

