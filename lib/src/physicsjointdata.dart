part of babylon;

/// interface PhysicsJointData
@JS()
abstract class PhysicsJointData {
  Vector3 mainPivot;
  Vector3 connectedPivot;
  Vector3 mainAxis;
  Vector3 connectedAxis;
  bool collision;
  dynamic nativeParams;
}
