part of babylon;

@JS()
class BoundingBox {
  external BoundingBox(Vector3 min, Vector3 max, Matrix worldMatrix);
  List<Vector3> vectors;
  Vector3 center;
  Vector3 centerWorld;
  Vector3 extendSize;
  Vector3 extendSizeWorld;
  List<Vector3> directions;
  List<Vector3> vectorsWorld;
  Vector3 minimumWorld;
  Vector3 maximumWorld;
  Vector3 minimum;
  Vector3 maximum;
  dynamic TmpVector3;
  external void reConstruct(Vector3 min, Vector3 max, Matrix worldMatrix);
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

