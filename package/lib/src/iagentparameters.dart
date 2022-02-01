part of babylon;

/// interface IAgentParameters
@JS()
@anonymous
class IAgentParameters {
  external factory IAgentParameters({num radius, num height, num maxAcceleration, num maxSpeed, num collisionQueryRange, num pathOptimizationRange, num separationWeight});
  external num get radius;
  external num get height;
  external num get maxAcceleration;
  external num get maxSpeed;
  external num get collisionQueryRange;
  external num get pathOptimizationRange;
  external num get separationWeight;
}
