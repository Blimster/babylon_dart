part of babylon_dart;

/// class Skeleton
@JS()
class Skeleton implements IAnimatable {
  // properties
  external String name;
  external String id;
  external List<Bone> bones;
  external Vector3 dimensionsAtRest;
  external bool needInitialSkinMatrix;
  external List<Animation> animations;
  external bool doNotSerialize;
  external List<IInspectable> inspectableCustomProperties;
  external Observable<Skeleton> onBeforeComputeObservable;
  // methods
  external String getClassName();
  external List<Bone> getChildren();
  external Float32List getTransformMatrices(AbstractMesh mesh);
  external RawTexture? getTransformMatrixTexture(AbstractMesh mesh);
  external Scene getScene();
  external String toString([bool fullDetails]);
  external num getBoneIndexByName(String name);
  external void createAnimationRange(String name, num from, num to);
  external void deleteAnimationRange(String name, [bool deleteFrames]);
  external AnimationRange? getAnimationRange(String name);
  external List<AnimationRange?> getAnimationRanges();
  external bool copyAnimationRange(Skeleton source, String name, [bool rescaleAsRequired]);
  external void returnToRest();
  external Animatable? beginAnimation(String name, [bool loop, num speedRatio, void Function() onAnimationEnd]);
  external static Skeleton? MakeAnimationAdditive(Skeleton skeleton, num? referenceFrame, String range);
  external void prepare();
  external List<IAnimatable> getAnimatables();
  external Skeleton clone(String name, [String id]);
  external void enableBlending([num blendingSpeed]);
  external void dispose();
  external Object serialize();
  external static Skeleton Parse(Object parsedSkeleton, Scene scene);
  external void computeAbsoluteTransforms([bool forceUpdate]);
  external Matrix? getPoseMatrix();
  external void sortBones();
  external void setCurrentPoseAsRest();
}
