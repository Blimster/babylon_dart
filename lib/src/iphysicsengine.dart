part of babylon;

/// interface IPhysicsEngine
@JS()
abstract class IPhysicsEngine {
  Vector3 gravity;
  void setGravity(Vector3 gravity);
  void setTimeStep(num newTimeStep);
  num getTimeStep();
  void setSubTimeStep(num subTimeStep);
  num getSubTimeStep();
  void dispose();
  String getPhysicsPluginName();
  void addImpostor(PhysicsImpostor impostor);
  void removeImpostor(PhysicsImpostor impostor);
  void addJoint(PhysicsImpostor mainImpostor, PhysicsImpostor connectedImpostor, PhysicsJoint joint);
  void removeJoint(PhysicsImpostor mainImpostor, PhysicsImpostor connectedImpostor, PhysicsJoint joint);
  IPhysicsEnginePlugin getPhysicsPlugin();
  List<PhysicsImpostor> getImpostors();
  PhysicsImpostor getImpostorForPhysicsObject(IPhysicsEnabledObject object);
  PhysicsImpostor getImpostorWithPhysicsBody(dynamic body);
  PhysicsRaycastResult raycast(Vector3 from, Vector3 to);
}
