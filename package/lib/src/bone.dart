part of babylon_dart;

/// class Bone
@JS()
class Bone extends Node {
  // properties
  external String name;
  external List<Bone> children;
  external List<Animation> animations;
  external num length;
  // methods
  external String getClassName();
  external Skeleton getSkeleton();
  external Bone? getParent();
  external List<Bone> getChildren([bool Function(Node node) predicate, bool directDescendantsOnly]);
  external num getIndex();
  external void setParent(Bone? parent, [bool updateDifferenceMatrix]);
  external Matrix getLocalMatrix();
  external Matrix getBaseMatrix();
  external Matrix getRestPose();
  external void setRestPose(Matrix matrix);
  external Matrix getBindPose();
  external void setBindPose(Matrix matrix);
  external Matrix getWorldMatrix();
  external void returnToRest();
  external Matrix getInvertedAbsoluteTransform();
  external Matrix getAbsoluteTransform();
  external void linkTransformNode(TransformNode? transformNode);
  external TransformNode? getTransformNode();
  external void updateMatrix(Matrix matrix, [bool updateDifferenceMatrix, bool updateLocalMatrix]);
  external Bone markAsDirty([String property]);
  external void translate(Vector3 vec, [Space space, TransformNode tNode]);
  external void setPosition(Vector3 position, [Space space, TransformNode tNode]);
  external void setAbsolutePosition(Vector3 position, [TransformNode tNode]);
  external void scale(num x, num y, num z, [bool scaleChildren]);
  external void setScale(Vector3 scale);
  external Vector3 getScale();
  external void getScaleToRef(Vector3 result);
  external void setYawPitchRoll(num yaw, num pitch, num roll, [Space space, TransformNode tNode]);
  external void rotate(Vector3 axis, num amount, [Space space, TransformNode tNode]);
  external void setAxisAngle(Vector3 axis, num angle, [Space space, TransformNode tNode]);
  external void setRotation(Vector3 rotation, [Space space, TransformNode tNode]);
  external void setRotationQuaternion(Quaternion quat, [Space space, TransformNode tNode]);
  external void setRotationMatrix(Matrix rotMat, [Space space, TransformNode tNode]);
  external Vector3 getPosition([Space space, TransformNode? tNode]);
  external void getPositionToRef(Space? space, TransformNode? tNode, Vector3 result);
  external Vector3 getAbsolutePosition([TransformNode? tNode]);
  external void getAbsolutePositionToRef(TransformNode tNode, Vector3 result);
  external void computeAbsoluteTransforms();
  external Vector3 getDirection(Vector3 localAxis, [TransformNode? tNode]);
  external void getDirectionToRef(Vector3 localAxis, TransformNode? tNode, Vector3 result);
  external Vector3 getRotation([Space space, TransformNode? tNode]);
  external void getRotationToRef(Space? space, TransformNode? tNode, Vector3 result);
  external Quaternion getRotationQuaternion([Space space, TransformNode? tNode]);
  external void getRotationQuaternionToRef(Space? space, TransformNode? tNode, Quaternion result);
  external Matrix getRotationMatrix(Space? space, TransformNode tNode);
  external void getRotationMatrixToRef(Space? space, TransformNode tNode, Matrix result);
  external Vector3 getAbsolutePositionFromLocal(Vector3 position, [TransformNode? tNode]);
  external void getAbsolutePositionFromLocalToRef(Vector3 position, TransformNode? tNode, Vector3 result);
  external Vector3 getLocalPositionFromAbsolute(Vector3 position, [TransformNode? tNode]);
  external void getLocalPositionFromAbsoluteToRef(Vector3 position, TransformNode? tNode, Vector3 result);
  external void setCurrentPoseAsRest();
}
