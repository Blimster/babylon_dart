part of babylon_dart;

/// class Plane
@JS()
class Plane {
  // properties
  external Vector3 normal;
  external num d;
  // methods
  external List<num> asArray();
  external Plane clone();
  external String getClassName();
  external num getHashCode();
  external Plane normalize();
  external Plane transform(Matrix transformation);
  external num dotCoordinate(Vector3 point);
  external Plane copyFromPoints(Vector3 point1, Vector3 point2, Vector3 point3);
  external bool isFrontFacingTo(Vector3 direction, num epsilon);
  external num signedDistanceTo(Vector3 point);
  external static Plane FromArray(List<num> array);
  external static Plane FromPoints(Vector3 point1, Vector3 point2, Vector3 point3);
  external static Plane FromPositionAndNormal(Vector3 origin, Vector3 normal);
  external static num SignedDistanceToPlaneFromPositionAndNormal(Vector3 origin, Vector3 normal, Vector3 point);
}
