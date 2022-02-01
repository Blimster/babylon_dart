part of babylon;

/// class BoundingInfo
@JS()
class BoundingInfo implements ICullable {
  external BoundingInfo(Vector3 minimum, Vector3 maximum, [Matrix worldMatrix]);
  external Vector3 get minimum;
  external Vector3 get maximum;
  external bool get isLocked;
  external num get diagonalLength;
  external BoundingBox get boundingBox;
  external BoundingSphere get boundingSphere;
  external static dynamic get TmpVector3;
  external set isLocked(bool value);
  external void reConstruct(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external void update(Matrix world);
  external BoundingInfo centerOn(Vector3 center, Vector3 extend);
  external BoundingInfo scale(num factor);
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
  external bool intersectsPoint(Vector3 point);
  external bool intersects(BoundingInfo boundingInfo, bool precise);
}
