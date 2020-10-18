part of babylon;

/// class BouncingBehavior
@JS()
class BouncingBehavior implements Behavior<ArcRotateCamera> {
  external String get name;
  external bool get autoTransitionRange;
  external static BackEase get EasingFunction;
  external static num get EasingMode;
  external num get transitionDuration;
  external num get lowerRadiusTransitionRange;
  external num get upperRadiusTransitionRange;
  external set autoTransitionRange(bool value);
  external static set EasingFunction(BackEase EasingFunction);
  external static set EasingMode(num EasingMode);
  external set transitionDuration(num transitionDuration);
  external set lowerRadiusTransitionRange(num lowerRadiusTransitionRange);
  external set upperRadiusTransitionRange(num upperRadiusTransitionRange);
  external set name(String name);
  external void init();
  external void attach(ArcRotateCamera target);
  external void detach();
  external void stopAllAnimations();
}
