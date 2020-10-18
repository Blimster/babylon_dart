part of babylon;

/// class Bone
@JS()
class Bone extends Node {
  external Bone(String name, Skeleton skeleton, [Bone parentBone, Matrix localMatrix, Matrix restPose, Matrix baseMatrix, num index]);
}
