part of babylon;

/// class RuntimeAnimation
@JS()
class RuntimeAnimation {
  external RuntimeAnimation(dynamic target, Animation animation, Scene scene, Animatable host);
  external num get currentFrame;
  external num get weight;
  external dynamic get currentValue;
  external String get targetPath;
  external dynamic get target;
  external Animation get animation;
  external void reset([bool restoreOriginal]);
  external bool isStopped();
  external void dispose();
  external void setValue(dynamic currentValue, num weight);
  external void goToFrame(num frame);
  external bool animate(num delay, num from, num to, bool loop, num speedRatio, [num weight]);
}
