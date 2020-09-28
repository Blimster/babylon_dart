part of babylon;

@JS()
class BoundingSphere {
  external BoundingSphere(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  Vector3 center;
  num radius;
  Vector3 centerWorld;
  num radiusWorld;
  Vector3 minimum;
  Vector3 maximum;
  dynamic TmpVector3;
  external void reConstruct(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external BoundingSphere scale(num factor);
  external Matrix getWorldMatrix();
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCenterInFrustum(List<Plane> frustumPlanes);
  external bool intersectsPoint(Vector3 point);
  external static bool Intersects(BoundingSphere sphere0, BoundingSphere sphere1);
}

