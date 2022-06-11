part of babylon_dart;

/// class BoundingSphere
@JS()
class BoundingSphere {
  // properties
  external static final Vector3 center;
  external num radius;
  external static final Vector3 centerWorld;
  external num radiusWorld;
  external static final Vector3 minimum;
  external static final Vector3 maximum;
  // methods
  external void reConstruct(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external BoundingSphere scale(num factor);
  external Matrix getWorldMatrix();
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCenterInFrustum(List<Plane> frustumPlanes);
  external bool intersectsPoint(Vector3 point);
  external static bool Intersects(BoundingSphere sphere0, BoundingSphere sphere1);
  external static BoundingSphere CreateFromCenterAndRadius(Vector3 center, num radius, [Matrix matrix]);
}
