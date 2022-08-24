part of babylon_dart;

/// class Quaternion
@JS()
class Quaternion {
  // methods
  external String toString();
  external String getClassName();
  external num getHashCode();
  external List<num> asArray();
  external Quaternion toArray(Float32List array, [num index]);
  external bool equals(Quaternion otherQuaternion);
  external bool equalsWithEpsilon(Quaternion otherQuaternion, [num epsilon]);
  external Quaternion clone();
  external Quaternion copyFrom(Quaternion other);
  external Quaternion copyFromFloats(num x, num y, num z, num w);
  external Quaternion set(num x, num y, num z, num w);
  external Quaternion add(Quaternion other);
  external Quaternion addInPlace(Quaternion other);
  external Quaternion subtract(Quaternion other);
  external Quaternion subtractInPlace(Quaternion other);
  external Quaternion scale(num value);
  external Quaternion scaleToRef(num scale, Quaternion result);
  external Quaternion scaleInPlace(num value);
  external Quaternion scaleAndAddToRef(num scale, Quaternion result);
  external Quaternion multiply(Quaternion q1);
  external Quaternion multiplyToRef(Quaternion q1, Quaternion result);
  external Quaternion multiplyInPlace(Quaternion q1);
  external Quaternion conjugateToRef(Quaternion ref);
  external Quaternion conjugateInPlace();
  external Quaternion conjugate();
  external Quaternion invert();
  external Quaternion invertInPlace();
  external num lengthSquared();
  external num length();
  external Quaternion normalize();
  external Quaternion normalizeToNew();
  external Vector3 toEulerAngles();
  external Quaternion toEulerAnglesToRef(Vector3 result);
  external Quaternion toRotationMatrix(Matrix result);
  external Quaternion fromRotationMatrix(Matrix matrix);
  external static Quaternion FromRotationMatrix(Matrix matrix);
  external static void FromRotationMatrixToRef(Matrix matrix, Quaternion result);
  external static num Dot(Quaternion left, Quaternion right);
  external static bool AreClose(Quaternion quat0, Quaternion quat1);
  external static void SmoothToRef(Quaternion source, Quaternion goal, num deltaTime, num lerpTime, Quaternion result);
  external static Quaternion Zero();
  external static Quaternion Inverse(Quaternion q);
  external static Quaternion InverseToRef(Quaternion q, Quaternion result);
  external static Quaternion Identity();
  external static bool IsIdentity(Quaternion quaternion);
  external static Quaternion RotationAxis(Vector3 axis, num angle);
  external static Quaternion RotationAxisToRef(Vector3 axis, num angle, Quaternion result);
  external static Quaternion FromArray(List<num> array, [num offset]);
  external static void FromArrayToRef(List<num> array, num offset, Quaternion result);
  external static Quaternion FromEulerAngles(num x, num y, num z);
  external static Quaternion FromEulerAnglesToRef(num x, num y, num z, Quaternion result);
  external static Quaternion FromEulerVector(Vector3 vec);
  external static Quaternion FromEulerVectorToRef(Vector3 vec, Quaternion result);
  external static Quaternion FromUnitVectorsToRef(Vector3 vecFrom, Vector3 vecTo, Quaternion result);
  external static Quaternion RotationYawPitchRoll(num yaw, num pitch, num roll);
  external static void RotationYawPitchRollToRef(num yaw, num pitch, num roll, Quaternion result);
  external static Quaternion RotationAlphaBetaGamma(num alpha, num beta, num gamma);
  external static void RotationAlphaBetaGammaToRef(num alpha, num beta, num gamma, Quaternion result);
  external static Quaternion RotationQuaternionFromAxis(Vector3 axis1, Vector3 axis2, Vector3 axis3);
  external static void RotationQuaternionFromAxisToRef(Vector3 axis1, Vector3 axis2, Vector3 axis3, Quaternion ref);
  external static Quaternion FromLookDirectionLH(Vector3 forward, Vector3 up);
  external static void FromLookDirectionLHToRef(Vector3 forward, Vector3 up, Quaternion ref);
  external static Quaternion FromLookDirectionRH(Vector3 forward, Vector3 up);
  external static void FromLookDirectionRHToRef(Vector3 forward, Vector3 up, Quaternion ref);
  external static Quaternion Slerp(Quaternion left, Quaternion right, num amount);
  external static void SlerpToRef(Quaternion left, Quaternion right, num amount, Quaternion result);
  external static Quaternion Hermite(Quaternion value1, Quaternion tangent1, Quaternion value2, Quaternion tangent2, num amount);
  external static Quaternion Hermite1stDerivative(Quaternion value1, Quaternion tangent1, Quaternion value2, Quaternion tangent2, num time);
  external static void Hermite1stDerivativeToRef(Quaternion value1, Quaternion tangent1, Quaternion value2, Quaternion tangent2, num time, Quaternion result);
}
