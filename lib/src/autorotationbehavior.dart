part of babylon;

@JS()
class AutoRotationBehavior {
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
  external void init();
  external void attach(ArcRotateCamera camera);
  external void detach();
}
