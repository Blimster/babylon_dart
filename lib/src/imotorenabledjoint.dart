part of babylon;

/// interface IMotorEnabledJoint
@JS()
abstract class IMotorEnabledJoint {
  dynamic physicsJoint;
  external void setMotor([num force, num maxForce, num motorIndex]);
  external void setLimit(num upperLimit, [num lowerLimit, num motorIndex]);
}
