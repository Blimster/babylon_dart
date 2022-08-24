part of babylon_dart;

/// interface ICollisionCoordinator
@JS()
abstract class ICollisionCoordinator {
  // methods
  Collider createCollider();
  void getNewPosition(Vector3 position, Vector3 displacement, Collider collider, num maximumRetry, AbstractMesh? excludedMesh, void Function(num collisionIndex, Vector3 newPosition, AbstractMesh? collidedMesh) onNewPosition, num collisionIndex);
  void init(Scene scene);
}
