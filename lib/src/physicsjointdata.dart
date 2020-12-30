part of babylon;

/// interface PhysicsJointData
@JS()
abstract class PhysicsJointData {
  external Vector3 mainPivot;
  external Vector3 connectedPivot;
  external Vector3 mainAxis;
  external Vector3 connectedAxis;
  external bool collision;
  external dynamic nativeParams;
}
