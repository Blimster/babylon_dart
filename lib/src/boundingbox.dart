part of babylon;

/// class BoundingBox
@JS()
class BoundingBox implements ICullable {
  external BoundingBox(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external List<Vector3> get vectors;
  external Vector3 get center;
  external Vector3 get centerWorld;
  external Vector3 get extendSize;
  external Vector3 get extendSizeWorld;
  external List<Vector3> get directions;
  external List<Vector3> get vectorsWorld;
  external Vector3 get minimumWorld;
  external Vector3 get maximumWorld;
  external Vector3 get minimum;
  external Vector3 get maximum;
  external static dynamic get TmpVector3;
  external void reConstruct(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external BoundingBox scale(num factor);
  external Matrix getWorldMatrix();
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
  external bool intersectsPoint(Vector3 point);
  external bool intersectsSphere(BoundingSphere sphere);
  external bool intersectsMinMax(Vector3 min, Vector3 max);
  external static bool Intersects(BoundingBox box0, BoundingBox box1);
  external static bool IntersectsSphere(Vector3 minPoint, Vector3 maxPoint, Vector3 sphereCenter, num sphereRadius);
  external static bool IsCompletelyInFrustum(List<Vector3> boundingVectors, List<Plane> frustumPlanes);
  external static bool IsInFrustum(List<Vector3> boundingVectors, List<Plane> frustumPlanes);
}
