part of babylon_dart;

/// class Collider
@JS()
class Collider {
  // properties
  external bool collisionFound;
  external Vector3 intersectionPoint;
  external AbstractMesh? collidedMesh;
  external bool DoubleSidedCheck;
}
