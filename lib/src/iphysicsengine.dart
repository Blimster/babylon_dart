part of babylon;

/// interface IPhysicsEngine
@JS()
abstract class IPhysicsEngine {
  Vector3 gravity;
  external void setGravity(Vector3 gravity);
  external void setTimeStep(num newTimeStep);
  external num getTimeStep();
  external void setSubTimeStep(num subTimeStep);
  external num getSubTimeStep();
  external void dispose();
  external String getPhysicsPluginName();
  external void addImpostor(PhysicsImpostor impostor);
  external void removeImpostor(PhysicsImpostor impostor);
  external void addJoint(PhysicsImpostor mainImpostor, PhysicsImpostor connectedImpostor, PhysicsJoint joint);
  external void removeJoint(PhysicsImpostor mainImpostor, PhysicsImpostor connectedImpostor, PhysicsJoint joint);
  external IPhysicsEnginePlugin getPhysicsPlugin();
  external List<PhysicsImpostor> getImpostors();
  external PhysicsImpostor getImpostorForPhysicsObject(IPhysicsEnabledObject object);
  external PhysicsImpostor getImpostorWithPhysicsBody(dynamic body);
  external PhysicsRaycastResult raycast(Vector3 from, Vector3 to);
}
