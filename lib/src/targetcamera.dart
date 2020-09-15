part of babylon;

@JS()
class TargetCamera extends Camera {
  Vector3 cameraDirection;
  Vector2 cameraRotation;
  bool ignoreParentScaling;
  bool updateUpVectorFromRotation;
  Vector3 rotation;
  Quaternion rotationQuaternion;
  num speed;
  bool noRotationConstraint;
  bool invertRotation;
  num inverseRotationSpeed;
  dynamic lockedTarget;
  external Vector3 getFrontPosition(num distance);
  external Camera storeState();
  external void setTarget(Vector3 target);
  external Vector3 getTarget();
  external Camera createRigCamera(String name, num cameraIndex);
  external String getClassName();
}

