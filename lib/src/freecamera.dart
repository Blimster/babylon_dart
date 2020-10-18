part of babylon;

/// class FreeCamera
@JS()
class FreeCamera extends TargetCamera {
  external FreeCamera(String name, Vector3 position, Scene scene, [bool setActiveOnSceneIfNoneActive]);
  external num get angularSensibility;
  external List<num> get keysUp;
  external List<num> get keysDown;
  external List<num> get keysLeft;
  external List<num> get keysRight;
  external num get collisionMask;
  external Vector3 get ellipsoid;
  external Vector3 get ellipsoidOffset;
  external bool get checkCollisions;
  external bool get applyGravity;
  external void Function(AbstractMesh collidedMesh) get onCollide;
  external set angularSensibility(num value);
  external set keysUp(List<num> value);
  external set keysDown(List<num> value);
  external set keysLeft(List<num> value);
  external set keysRight(List<num> value);
  external set collisionMask(num mask);
  external set ellipsoid(Vector3 ellipsoid);
  external set ellipsoidOffset(Vector3 ellipsoidOffset);
  external set checkCollisions(bool checkCollisions);
  external set applyGravity(bool applyGravity);
  external set onCollide(void Function(AbstractMesh collidedMesh) onCollide);
  external void attachControl(HtmlElement element, [bool noPreventDefault]);
  external void detachControl(HtmlElement element);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external String getClassName();
}
