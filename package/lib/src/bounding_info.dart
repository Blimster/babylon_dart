part of babylon_dart;

/// class BoundingInfo
@JS()
class BoundingInfo implements ICullable {
  // properties
  external static final BoundingBox boundingBox;
  external static final BoundingSphere boundingSphere;
  // methods
  external void reConstruct(Vector3 min, Vector3 max, [Matrix worldMatrix]);
  external void update(Matrix world);
  external BoundingInfo centerOn(Vector3 center, Vector3 extend);
  external BoundingInfo encapsulate(Vector3 point);
  external BoundingInfo encapsulateBoundingInfo(BoundingInfo toEncapsulate);
  external BoundingInfo scale(num factor);
  external bool isInFrustum(List<Plane> frustumPlanes, [num strategy]);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
  external bool intersectsPoint(Vector3 point);
  external bool intersects(BoundingInfo boundingInfo, bool precise);
}
