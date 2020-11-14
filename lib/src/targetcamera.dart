part of babylon;

/// class TargetCamera
@JS()
class TargetCamera extends Camera {
  external TargetCamera();
  external TargetCamera.args(String name, Vector3 position, Scene scene, [bool setActiveOnSceneIfNoneActive]);
  external Vector3 get target;
  external Vector3 get cameraDirection;
  external Vector2 get cameraRotation;
  external bool get ignoreParentScaling;
  external bool get updateUpVectorFromRotation;
  external Vector3 get rotation;
  external Quaternion get rotationQuaternion;
  external num get speed;
  external bool get noRotationConstraint;
  external bool get invertRotation;
  external num get inverseRotationSpeed;
  external dynamic get lockedTarget;
  external set target(Vector3 value);
  external set cameraDirection(Vector3 cameraDirection);
  external set cameraRotation(Vector2 cameraRotation);
  external set ignoreParentScaling(bool ignoreParentScaling);
  external set updateUpVectorFromRotation(bool updateUpVectorFromRotation);
  external set rotation(Vector3 rotation);
  external set rotationQuaternion(Quaternion rotationQuaternion);
  external set speed(num speed);
  external set noRotationConstraint(bool noRotationConstraint);
  external set invertRotation(bool invertRotation);
  external set inverseRotationSpeed(num inverseRotationSpeed);
  external set lockedTarget(dynamic lockedTarget);
  external Vector3 getFrontPosition(num distance);
  external Camera storeState();
  external void setTarget(Vector3 target);
  external Vector3 getTarget();
  external Camera createRigCamera(String name, num cameraIndex);
  external String getClassName();
}
