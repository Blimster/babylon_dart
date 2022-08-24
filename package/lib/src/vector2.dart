part of babylon_dart;

/// class Vector2
@JS()
class Vector2 {
  // properties
  external num x;
  external num y;
  // methods
  external String toString();
  external String getClassName();
  external num getHashCode();
  external Vector2 toArray(Float32List array, [num index]);
  external Vector2 fromArray(Float32List array, [num index]);
  external List<num> asArray();
  external Vector2 copyFrom(Vector2 source);
  external Vector2 copyFromFloats(num x, num y);
  external Vector2 set(num x, num y);
  external Vector2 add(Vector2 otherVector);
  external Vector2 addToRef(Vector2 otherVector, Vector2 result);
  external Vector2 addInPlace(Vector2 otherVector);
  external Vector2 addVector3(Vector3 otherVector);
  external Vector2 subtract(Vector2 otherVector);
  external Vector2 subtractToRef(Vector2 otherVector, Vector2 result);
  external Vector2 subtractInPlace(Vector2 otherVector);
  external Vector2 multiplyInPlace(Vector2 otherVector);
  external Vector2 multiply(Vector2 otherVector);
  external Vector2 multiplyToRef(Vector2 otherVector, Vector2 result);
  external Vector2 multiplyByFloats(num x, num y);
  external Vector2 divide(Vector2 otherVector);
  external Vector2 divideToRef(Vector2 otherVector, Vector2 result);
  external Vector2 divideInPlace(Vector2 otherVector);
  external Vector2 negate();
  external Vector2 negateInPlace();
  external Vector2 negateToRef(Vector2 result);
  external Vector2 scaleInPlace(num scale);
  external Vector2 scale(num scale);
  external Vector2 scaleToRef(num scale, Vector2 result);
  external Vector2 scaleAndAddToRef(num scale, Vector2 result);
  external bool equals(Vector2 otherVector);
  external bool equalsWithEpsilon(Vector2 otherVector, [num epsilon]);
  external Vector2 floor();
  external Vector2 fract();
  external THIS rotateToRef<THIS extends Vector2>(num angle, Vector2 result);
  external num length();
  external num lengthSquared();
  external Vector2 normalize();
  external Vector2 clone();
  external static Vector2 Zero();
  external static Vector2 One();
  external static Vector2 FromArray(List<num> array, [num offset]);
  external static void FromArrayToRef(List<num> array, num offset, Vector2 result);
  external static Vector2 CatmullRom(Vector2 value1, Vector2 value2, Vector2 value3, Vector2 value4, num amount);
  external static Vector2 Clamp(Vector2 value, Vector2 min, Vector2 max);
  external static Vector2 Hermite(Vector2 value1, Vector2 tangent1, Vector2 value2, Vector2 tangent2, num amount);
  external static Vector2 Hermite1stDerivative(Vector2 value1, Vector2 tangent1, Vector2 value2, Vector2 tangent2, num time);
  external static void Hermite1stDerivativeToRef(Vector2 value1, Vector2 tangent1, Vector2 value2, Vector2 tangent2, num time, Vector2 result);
  external static Vector2 Lerp(Vector2 start, Vector2 end, num amount);
  external static num Dot(Vector2 left, Vector2 right);
  external static Vector2 Normalize(Vector2 vector);
  external static void NormalizeToRef(Vector2 vector, Vector2 result);
  external static Vector2 Minimize(Vector2 left, Vector2 right);
  external static Vector2 Maximize(Vector2 left, Vector2 right);
  external static Vector2 Transform(Vector2 vector, Matrix transformation);
  external static void TransformToRef(Vector2 vector, Matrix transformation, Vector2 result);
  external static bool PointInTriangle(Vector2 p, Vector2 p0, Vector2 p1, Vector2 p2);
  external static num Distance(Vector2 value1, Vector2 value2);
  external static num DistanceSquared(Vector2 value1, Vector2 value2);
  external static Vector2 Center(Vector2 value1, Vector2 value2);
  external static Vector2 CenterToRef(Vector2 value1, Vector2 value2, Vector2 ref);
  external static num DistanceOfPointFromSegment(Vector2 p, Vector2 segA, Vector2 segB);
}
