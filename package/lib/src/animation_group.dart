part of babylon_dart;

/// class AnimationGroup
@JS()
class AnimationGroup implements IDisposable {
  // properties
  external String name;
  external num uniqueId;
  external Observable<TargetedAnimation> onAnimationEndObservable;
  external Observable<TargetedAnimation> onAnimationLoopObservable;
  external Observable<AnimationGroup> onAnimationGroupLoopObservable;
  external Observable<AnimationGroup> onAnimationGroupEndObservable;
  external Observable<AnimationGroup> onAnimationGroupPauseObservable;
  external Observable<AnimationGroup> onAnimationGroupPlayObservable;
  external Object metadata;
  // methods
  external TargetedAnimation addTargetedAnimation(Animation animation, Object target);
  external AnimationGroup normalize([num? beginFrame, num? endFrame]);
  external AnimationGroup start([bool loop, num speedRatio, num from, num to, bool isAdditive]);
  external AnimationGroup pause();
  external AnimationGroup play([bool loop]);
  external AnimationGroup reset();
  external AnimationGroup restart();
  external AnimationGroup stop();
  external AnimationGroup setWeightForAllAnimatables(num weight);
  external AnimationGroup syncAllAnimationsWith(Animatable? root);
  external AnimationGroup goToFrame(num frame);
  external void dispose();
  external AnimationGroup clone(String newName, [Object Function(Object oldTarget) targetConverter, bool cloneAnimations]);
  external Object serialize();
  external static AnimationGroup Parse(Object parsedAnimationGroup, Scene scene);
  external static AnimationGroup MakeAnimationAdditive(AnimationGroup sourceAnimationGroup, [num referenceFrame, String range, bool cloneOriginal, String clonedName]);
  external String getClassName();
  external String toString([bool fullDetails]);
}
