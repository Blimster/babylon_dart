part of babylon;

@JS()
class FreeCamera extends TargetCamera {
  external FreeCamera(String name, Vector3 position, Scene scene, [bool setActiveOnSceneIfNoneActive]);
  Vector3 ellipsoid;
  Vector3 ellipsoidOffset;
  bool checkCollisions;
  bool applyGravity;
  void Function(AbstractMesh collidedMesh) onCollide;
  external num get angularSensibility;
  external List<num> get keysUp;
  external List<num> get keysUpward;
  external List<num> get keysDown;
  external List<num> get keysDownward;
  external List<num> get keysLeft;
  external List<num> get keysRight;
  external num get collisionMask;
  external set angularSensibility(num value);
  external set keysUp(List<num> value);
  external set keysUpward(List<num> value);
  external set keysDown(List<num> value);
  external set keysDownward(List<num> value);
  external set keysLeft(List<num> value);
  external set keysRight(List<num> value);
  external set collisionMask(num mask);
  external void attachControl(HtmlElement element, [bool noPreventDefault]);
  external void detachControl(HtmlElement element);
  external void dispose();
  external String getClassName();
}

