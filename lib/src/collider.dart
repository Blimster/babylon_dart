part of babylon;

/// class Collider
@JS()
class Collider {
  external num get collisionMask;
  external Vector3 get slidePlaneNormal;
  external bool get collisionFound;
  external Vector3 get intersectionPoint;
  external AbstractMesh get collidedMesh;
  external set collisionMask(num mask);
  external set collisionFound(bool collisionFound);
  external set intersectionPoint(Vector3 intersectionPoint);
  external set collidedMesh(AbstractMesh collidedMesh);
}
