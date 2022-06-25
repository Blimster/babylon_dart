part of babylon_dart;

/// class Ray
@JS()
class Ray {
  // properties
  external Vector3 origin;
  external Vector3 direction;
  external num length;
  // methods
  external Ray clone();
  external bool intersectsBoxMinMax(Vector3 minimum, Vector3 maximum, [num intersectionTreshold]);
  external bool intersectsBox(BoundingBox box, [num intersectionTreshold]);
  external bool intersectsSphere(BoundingSphere sphere, [num intersectionTreshold]);
  external IntersectionInfo? intersectsTriangle(Vector3 vertex0, Vector3 vertex1, Vector3 vertex2);
  external num? intersectsPlane(Plane plane);
  external Vector3? intersectsAxis(String axis, [num offset]);
  external PickingInfo intersectsMesh(AbstractMesh mesh, [bool fastCheck]);
  external List<PickingInfo> intersectsMeshes(List<AbstractMesh> meshes, [bool fastCheck, List<PickingInfo> results]);
  external num intersectionSegment(Vector3 sega, Vector3 segb, num threshold);
  external Ray update(num x, num y, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection, [bool enableDistantPicking]);
  external static Ray Zero();
  external static Ray CreateNew(num x, num y, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection);
  external static Ray CreateNewFromTo(Vector3 origin, Vector3 end, [Matrix world]);
  external static Ray Transform(Ray ray, Matrix matrix);
  external static void TransformToRef(Ray ray, Matrix matrix, Ray result);
  external void unprojectRayToRef(num sourceX, num sourceY, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection);
}
