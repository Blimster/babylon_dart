part of babylon;

@JS()
class BouncingBehavior {
  BackEase EasingFunction;
  num EasingMode;
  num transitionDuration;
  num lowerRadiusTransitionRange;
  num upperRadiusTransitionRange;
  external String get name;
  external bool get autoTransitionRange;
  external set autoTransitionRange(bool value);
  external void init();
  external void attach(ArcRotateCamera camera);
  external void detach();
  external void stopAllAnimations();
}

