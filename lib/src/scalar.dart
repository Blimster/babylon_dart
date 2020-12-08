part of babylon;

/// class Scalar
@JS()
class Scalar {
  external static num get TwoPi;
  external static set TwoPi(num TwoPi);
  external static bool WithinEpsilon(num a, num b, [num epsilon]);
  external static String ToHex(num i);
  external static num Sign(num value);
  external static num Clamp(num value, [num min, num max]);
  external static num Log2(num value);
  external static num Repeat(num value, num length);
  external static num Normalize(num value, num min, num max);
  external static num Denormalize(num normalized, num min, num max);
  external static num DeltaAngle(num current, num target);
  external static num PingPong(num tx, num length);
  external static num SmoothStep(num from, num to, num tx);
  external static num MoveTowards(num current, num target, num maxDelta);
  external static num MoveTowardsAngle(num current, num target, num maxDelta);
  external static num Lerp(num start, num end, num amount);
  external static num LerpAngle(num start, num end, num amount);
  external static num InverseLerp(num a, num b, num value);
  external static num Hermite(num value1, num tangent1, num value2, num tangent2, num amount);
  external static num RandomRange(num min, num max);
  external static num RangeToPercent(num number, num min, num max);
  external static num PercentToRange(num percent, num min, num max);
  external static num NormalizeRadians(num angle);
}
