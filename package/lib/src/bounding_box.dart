part of babylon_dart;

/// class BoundingBox
@JS()
class BoundingBox implements ICullable {
  // properties
  external static final List<Vector3> vectors;
  external static final Vector3 center;
  external static final Vector3 centerWorld;
  external static final Vector3 extendSize;
  external static final Vector3 extendSizeWorld;
  external static final List<Vector3> directions;
  external static final List<Vector3> vectorsWorld;
  external static final Vector3 minimumWorld;
  external static final Vector3 maximumWorld;
  external static final Vector3 minimum;
  external static final Vector3 maximum;
  // methods
  external void reConstruct(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external BoundingBox scale(num factor);
  external Matrix getWorldMatrix();
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
  external bool intersectsPoint(Vector3 point);
  external bool intersectsSphere(BoundingSphere sphere);
  external bool intersectsMinMax(Vector3 min, Vector3 max);
  external void dispose();
  external static bool Intersects(BoundingBox box0, BoundingBox box1);
  external static bool IntersectsSphere(Vector3 minPoint, Vector3 maxPoint, Vector3 sphereCenter, num sphereRadius);
  external static bool IsCompletelyInFrustum(List<Vector3> boundingVectors, List<Plane> frustumPlanes);
  external static bool IsInFrustum(List<Vector3> boundingVectors, List<Plane> frustumPlanes);
}
