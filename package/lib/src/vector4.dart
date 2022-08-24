part of babylon_dart;

/// class Vector4
@JS()
class Vector4 {
  // properties
  external num x;
  external num y;
  external num z;
  external num w;
  // methods
  external String toString();
  external String getClassName();
  external num getHashCode();
  external List<num> asArray();
  external Vector4 toArray(Float32List array, [num index]);
  external Vector4 fromArray(Float32List array, [num index]);
  external Vector4 addInPlace(Vector4 otherVector);
  external Vector4 add(Vector4 otherVector);
  external Vector4 addToRef(Vector4 otherVector, Vector4 result);
  external Vector4 subtractInPlace(Vector4 otherVector);
  external Vector4 subtract(Vector4 otherVector);
  external Vector4 subtractToRef(Vector4 otherVector, Vector4 result);
  external Vector4 subtractFromFloats(num x, num y, num z, num w);
  external Vector4 subtractFromFloatsToRef(num x, num y, num z, num w, Vector4 result);
  external Vector4 negate();
  external Vector4 negateInPlace();
  external Vector4 negateToRef(Vector4 result);
  external Vector4 scaleInPlace(num scale);
  external Vector4 scale(num scale);
  external Vector4 scaleToRef(num scale, Vector4 result);
  external Vector4 scaleAndAddToRef(num scale, Vector4 result);
  external bool equals(Vector4 otherVector);
  external bool equalsWithEpsilon(Vector4 otherVector, [num epsilon]);
  external bool equalsToFloats(num x, num y, num z, num w);
  external Vector4 multiplyInPlace(Vector4 otherVector);
  external Vector4 multiply(Vector4 otherVector);
  external Vector4 multiplyToRef(Vector4 otherVector, Vector4 result);
  external Vector4 multiplyByFloats(num x, num y, num z, num w);
  external Vector4 divide(Vector4 otherVector);
  external Vector4 divideToRef(Vector4 otherVector, Vector4 result);
  external Vector4 divideInPlace(Vector4 otherVector);
  external Vector4 minimizeInPlace(Vector4 other);
  external Vector4 maximizeInPlace(Vector4 other);
  external Vector4 floor();
  external Vector4 fract();
  external num length();
  external num lengthSquared();
  external Vector4 normalize();
  external Vector3 toVector3();
  external Vector4 clone();
  external Vector4 copyFrom(Vector4 source);
  external Vector4 copyFromFloats(num x, num y, num z, num w);
  external Vector4 set(num x, num y, num z, num w);
  external Vector4 setAll(num v);
  external static Vector4 FromArray(List<num> array, [num offset]);
  external static void FromArrayToRef(List<num> array, num offset, Vector4 result);
  external static void FromFloatArrayToRef(Float32List array, num offset, Vector4 result);
  external static void FromFloatsToRef(num x, num y, num z, num w, Vector4 result);
  external static Vector4 Zero();
  external static Vector4 One();
  external static Vector4 Normalize(Vector4 vector);
  external static void NormalizeToRef(Vector4 vector, Vector4 result);
  external static Vector4 Minimize(Vector4 left, Vector4 right);
  external static Vector4 Maximize(Vector4 left, Vector4 right);
  external static num Distance(Vector4 value1, Vector4 value2);
  external static num DistanceSquared(Vector4 value1, Vector4 value2);
  external static Vector4 Center(Vector4 value1, Vector4 value2);
  external static Vector4 CenterToRef(Vector4 value1, Vector4 value2, Vector4 ref);
  external static Vector4 TransformCoordinates(Vector3 vector, Matrix transformation);
  external static void TransformCoordinatesToRef(Vector3 vector, Matrix transformation, Vector4 result);
  external static void TransformCoordinatesFromFloatsToRef(num x, num y, num z, Matrix transformation, Vector4 result);
  external static Vector4 TransformNormal(Vector4 vector, Matrix transformation);
  external static void TransformNormalToRef(Vector4 vector, Matrix transformation, Vector4 result);
  external static void TransformNormalFromFloatsToRef(num x, num y, num z, num w, Matrix transformation, Vector4 result);
  external static Vector4 FromVector3(Vector3 source, [num w]);
}
