part of babylon;

/// class Angle
@JS()
class Angle {
  external Angle(num radians);
  external num degrees();
  external num radians();
  external static Angle BetweenTwoPoints(Vector2 a, Vector2 b);
  external static Angle FromRadians(num radians);
  external static Angle FromDegrees(num degrees);
}
