part of babylon;

/// class FramingBehavior
@JS()
class FramingBehavior implements Behavior<ArcRotateCamera> {
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
  external static ExponentialEase get EasingFunction;
  external static num get EasingMode;
  external bool get autoCorrectCameraLimitsAndSensibility;
  external static num get IgnoreBoundsSizeMode;
  external static num get FitFrustumSidesMode;
  external set mode(num mode);
  external set radiusScale(num radius);
  external set positionScale(num scale);
  external set defaultElevation(num elevation);
  external set elevationReturnTime(num speed);
  external set elevationReturnWaitTime(num time);
  external set zoomStopsAnimation(bool flag);
  external set framingTime(num time);
  external static set EasingFunction(ExponentialEase EasingFunction);
  external static set EasingMode(num EasingMode);
  external set autoCorrectCameraLimitsAndSensibility(bool autoCorrectCameraLimitsAndSensibility);
  external static set IgnoreBoundsSizeMode(num IgnoreBoundsSizeMode);
  external static set FitFrustumSidesMode(num FitFrustumSidesMode);
  external set name(String name);
  external void init();
  external void attach(ArcRotateCamera target);
  external void detach();
  external void stopAllAnimations();
}
