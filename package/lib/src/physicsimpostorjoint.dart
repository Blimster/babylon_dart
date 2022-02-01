part of babylon;

/// interface PhysicsImpostorJoint
@JS()
abstract class PhysicsImpostorJoint {
  external PhysicsImpostor mainImpostor;
  external PhysicsImpostor connectedImpostor;
  external PhysicsJoint joint;
}
