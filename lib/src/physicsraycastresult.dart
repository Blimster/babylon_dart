part of babylon;

/// class PhysicsRaycastResult
@JS()
class PhysicsRaycastResult {
  external bool get hasHit;
  external num get hitDistance;
  external Vector3 get hitNormalWorld;
  external Vector3 get hitPointWorld;
  external Vector3 get rayFromWorld;
  external Vector3 get rayToWorld;
  external void setHitDistance(num distance);
  external void calculateHitDistance();
  external void reset([Vector3 from, Vector3 to]);
}
