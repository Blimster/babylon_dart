part of babylon;

/// interface PhysicsImpostorJoint
@JS()
abstract class PhysicsImpostorJoint {
  PhysicsImpostor mainImpostor;
  PhysicsImpostor connectedImpostor;
  PhysicsJoint joint;
}
