part of babylon;

/// class BoundingSphere
@JS()
class BoundingSphere {
  external BoundingSphere(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external Vector3 get center;
  external num get radius;
  external Vector3 get centerWorld;
  external num get radiusWorld;
  external Vector3 get minimum;
  external Vector3 get maximum;
  external static dynamic get TmpVector3;
  external set radius(num radius);
  external set radiusWorld(num radiusWorld);
  external void reConstruct(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external BoundingSphere scale(num factor);
  external Matrix getWorldMatrix();
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCenterInFrustum(List<Plane> frustumPlanes);
  external bool intersectsPoint(Vector3 point);
  external static bool Intersects(BoundingSphere sphere0, BoundingSphere sphere1);
}
