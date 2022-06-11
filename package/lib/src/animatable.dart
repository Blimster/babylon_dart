part of babylon_dart;

/// class Animatable
@JS()
class Animatable {
  // properties
  external Object target;
  external num fromFrame;
  external num toFrame;
  external bool loopAnimation;
  external void Function()? onAnimationEnd;
  external void Function()? onAnimationLoop;
  external bool isAdditive;
  external bool disposeOnEnd;
  external bool animationStarted;
  external Observable<Animatable> onAnimationEndObservable;
  external Observable<Animatable> onAnimationLoopObservable;
  // methods
  external Animatable syncWith(Animatable? root);
  external List<RuntimeAnimation> getAnimations();
  external void appendAnimations(Object target, List<Animation> animations);
  external Animation? getAnimationByTargetProperty(String property);
  external RuntimeAnimation? getRuntimeAnimationByTargetProperty(String property);
  external void reset();
  external void enableBlending(num blendingSpeed);
  external void disableBlending();
  external void goToFrame(num frame);
  external void pause();
  external void restart();
  external void stop([String animationName, bool Function(Object target) targetMask]);
  external Promise<Animatable> waitAsync();
}
