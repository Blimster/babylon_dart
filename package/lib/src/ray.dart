part of babylon;

/// class Ray
@JS()
class Ray {
  external Ray(Vector3 origin, Vector3 direction, [num length]);
  external Vector3 get origin;
  external Vector3 get direction;
  external num get length;
  external static dynamic get smallnum;
  external static dynamic get rayl;
  external set origin(Vector3 origin);
  external set direction(Vector3 direction);
  external set length(num length);
  external static set smallnum(dynamic smallnum);
  external static set rayl(dynamic rayl);
  external bool intersectsBoxMinMax(Vector3 minimum, Vector3 maximum, [num intersectionTreshold]);
  external bool intersectsBox(BoundingBox box, [num intersectionTreshold]);
  external bool intersectsSphere(BoundingSphere sphere, [num intersectionTreshold]);
  external IntersectionInfo intersectsTriangle(Vector3 vertex0, Vector3 vertex1, Vector3 vertex2);
  external num intersectsPlane(Plane plane);
  external Vector3 intersectsAxis(String axis, [num offset]);
  external PickingInfo intersectsMesh(AbstractMesh mesh, [bool fastCheck]);
  external List<PickingInfo> intersectsMeshes(List<AbstractMesh> meshes, [bool fastCheck, List<PickingInfo> results]);
  external num intersectionSegment(Vector3 sega, Vector3 segb, num threshold);
  external Ray update(num x, num y, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection);
  external static Ray Zero();
  external static Ray CreateNew(num x, num y, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection);
  external static Ray CreateNewFromTo(Vector3 origin, Vector3 end, [Matrix world]);
  external static Ray Transform(Ray ray, Matrix matrix);
  external static void TransformToRef(Ray ray, Matrix matrix, Ray result);
  external void unprojectRayToRef(num sourceX, num sourceY, num viewportWidth, num viewportHeight, Matrix world, Matrix view, Matrix projection);
}
