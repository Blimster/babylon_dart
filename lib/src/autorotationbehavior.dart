part of babylon;

/// class AutoRotationBehavior
@JS()
class AutoRotationBehavior implements Behavior<ArcRotateCamera> {
  external String get name;
  external bool get zoomStopsAnimation;
  external num get idleRotationSpeed;
  external num get idleRotationWaitTime;
  external num get idleRotationSpinupTime;
  external bool get rotationInProgress;
  external set zoomStopsAnimation(bool flag);
  external set idleRotationSpeed(num speed);
  external set idleRotationWaitTime(num time);
  external set idleRotationSpinupTime(num time);
  external set name(String name);
  external void init();
  external void attach(ArcRotateCamera target);
  external void detach();
}
