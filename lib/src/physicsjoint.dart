part of babylon;

/// class PhysicsJoint
@JS()
class PhysicsJoint {
  external PhysicsJoint(num type, PhysicsJointData jointData);
  external dynamic get physicsJoint;
  external num get type;
  external PhysicsJointData get jointData;
  external static num get DistanceJoint;
  external static num get HingeJoint;
  external static num get BallAndSocketJoint;
  external static num get WheelJoint;
  external static num get SliderJoint;
  external static num get PrismaticJoint;
  external static num get UniversalJoint;
  external static num get Hinge2Joint;
  external static num get PointToPointJoint;
  external static num get SpringJoint;
  external static num get LockJoint;
  external set physicsJoint(dynamic newJoint);
  external set physicsPlugin(IPhysicsEnginePlugin physicsPlugin);
  external set type(num type);
  external set jointData(PhysicsJointData jointData);
  external static set DistanceJoint(num DistanceJoint);
  external static set HingeJoint(num HingeJoint);
  external static set BallAndSocketJoint(num BallAndSocketJoint);
  external static set WheelJoint(num WheelJoint);
  external static set SliderJoint(num SliderJoint);
  external static set PrismaticJoint(num PrismaticJoint);
  external static set UniversalJoint(num UniversalJoint);
  external static set Hinge2Joint(num Hinge2Joint);
  external static set PointToPointJoint(num PointToPointJoint);
  external static set SpringJoint(num SpringJoint);
  external static set LockJoint(num LockJoint);
  external void executeNativeFunction(void Function(dynamic world, dynamic physicsJoint) func);
}
