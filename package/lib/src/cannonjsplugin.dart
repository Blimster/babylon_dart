part of babylon;

/// class CannonJSPlugin
@JS()
class CannonJSPlugin implements IPhysicsEnginePlugin {
  external CannonJSPlugin([bool _useDeltaForWorldStep, num iterations, dynamic cannonInjection]);
  external dynamic get world;
  external String get name;
  external dynamic get BJSCANNON;
  external set world(dynamic world);
  external set name(String name);
  external set BJSCANNON(dynamic BJSCANNON);
  external void setGravity(Vector3 gravity);
  external void setTimeStep(num timeStep);
  external num getTimeStep();
  external void executeStep(num delta, List<PhysicsImpostor> impostors);
  external void applyImpulse(PhysicsImpostor impostor, Vector3 force, Vector3 contactPoint);
  external void applyForce(PhysicsImpostor impostor, Vector3 force, Vector3 contactPoint);
  external void generatePhysicsBody(PhysicsImpostor impostor);
  external void removePhysicsBody(PhysicsImpostor impostor);
  external void generateJoint(PhysicsImpostorJoint joint);
  external void removeJoint(PhysicsImpostorJoint joint);
  external void setTransformationFromPhysicsBody(PhysicsImpostor impostor);
  external void setPhysicsBodyTransformation(PhysicsImpostor impostor, Vector3 newPosition, Quaternion newRotation);
  external bool isSupported();
  external void setLinearVelocity(PhysicsImpostor impostor, Vector3 velocity);
  external void setAngularVelocity(PhysicsImpostor impostor, Vector3 velocity);
  external Vector3 getLinearVelocity(PhysicsImpostor impostor);
  external Vector3 getAngularVelocity(PhysicsImpostor impostor);
  external void setBodyMass(PhysicsImpostor impostor, num mass);
  external num getBodyMass(PhysicsImpostor impostor);
  external num getBodyFriction(PhysicsImpostor impostor);
  external void setBodyFriction(PhysicsImpostor impostor, num friction);
  external num getBodyRestitution(PhysicsImpostor impostor);
  external void setBodyRestitution(PhysicsImpostor impostor, num restitution);
  external void sleepBody(PhysicsImpostor impostor);
  external void wakeUpBody(PhysicsImpostor impostor);
  external void updateDistanceJoint(PhysicsJoint joint, num maxDistance, [num minDistance]);
  external void setMotor(IMotorEnabledJoint joint, num speed, [num maxForce, num motorIndex]);
  external void setLimit(IMotorEnabledJoint joint, num upperLimit, [num lowerLimit, num motorIndex]);
  external void syncMeshWithImpostor(AbstractMesh mesh, PhysicsImpostor impostor);
  external num getRadius(PhysicsImpostor impostor);
  external void getBoxSizeToRef(PhysicsImpostor impostor, Vector3 result);
  external void dispose();
  external PhysicsRaycastResult raycast(Vector3 from, Vector3 to);
}
