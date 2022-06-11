part of babylon_dart;

/// class RuntimeAnimation
@JS()
class RuntimeAnimation {
  // methods
  external void reset([bool restoreOriginal]);
  external bool isStopped();
  external void dispose();
  external void setValue(Object currentValue, num weight);
  external void goToFrame(num frame);
  external bool animate(num delay, num from, num to, bool loop, num speedRatio, [num weight]);
}
