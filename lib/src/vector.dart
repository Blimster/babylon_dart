part of babylon;

@JS()
class Vector3 {
  external static Vector3 Zero();
  external static Vector3 TransformCoordinates(Vector3 vector, Matrix transformation);
  external Vector3(num x, num y, num z);
  external set x(num v);
  external num get x;
  external set y(num v);
  external num get y;
  external set z(num v);
  external num get z;
  external Vector3 normalize();
  external Vector3 add(Vector3 other);
  external Vector3 scale(num scale);
}
