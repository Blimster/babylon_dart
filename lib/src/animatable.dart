part of babylon;

/// class Animatable
@JS()
class Animatable {
  external Animatable(Scene scene, dynamic target, [num fromFrame, num toFrame, bool loopAnimation, num speedRatio, dynamic onAnimationEnd, List<Animation> animations, dynamic onAnimationLoop, bool isAdditive]);
  external Animatable get syncRoot;
  external num get masterFrame;
  external num get weight;
  external num get speedRatio;
  external dynamic get target;
  external num get fromFrame;
  external num get toFrame;
  external bool get loopAnimation;
  external dynamic get onAnimationEnd;
  external dynamic get onAnimationLoop;
  external bool get isAdditive;
  external bool get disposeOnEnd;
  external bool get animationStarted;
  external Observable<Animatable> get onAnimationEndObservable;
  external Observable<Animatable> get onAnimationLoopObservable;
  external set weight(num value);
  external set speedRatio(num value);
  external set target(dynamic target);
  external set fromFrame(num fromFrame);
  external set toFrame(num toFrame);
  external set loopAnimation(bool loopAnimation);
  external set onAnimationEnd(dynamic onAnimationEnd);
  external set onAnimationLoop(dynamic onAnimationLoop);
  external set isAdditive(bool isAdditive);
  external set disposeOnEnd(bool disposeOnEnd);
  external set animationStarted(bool animationStarted);
  external set onAnimationEndObservable(Observable<Animatable> onAnimationEndObservable);
  external set onAnimationLoopObservable(Observable<Animatable> onAnimationLoopObservable);
  external Animatable syncWith(Animatable root);
  external List<RuntimeAnimation> getAnimations();
  external void appendAnimations(dynamic target, List<Animation> animations);
  external Animation getAnimationByTargetProperty(String property);
  external RuntimeAnimation getRuntimeAnimationByTargetProperty(String property);
  external void reset();
  external void enableBlending(num blendingSpeed);
  external void disableBlending();
  external void goToFrame(num frame);
  external void pause();
  external void restart();
  external void stop([String animationName, bool Function(dynamic target) targetMask]);
  external Promise<Animatable> waitAsync();
}
