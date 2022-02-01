part of babylon;

/// class CSG
@JS()
class CSG {
  external dynamic get polygons;
  external Matrix get matrix;
  external Vector3 get position;
  external Vector3 get rotation;
  external Quaternion get rotationQuaternion;
  external Vector3 get scaling;
  external static dynamic get FromPolygons;
  external set polygons(dynamic polygons);
  external set matrix(Matrix matrix);
  external set position(Vector3 position);
  external set rotation(Vector3 rotation);
  external set rotationQuaternion(Quaternion rotationQuaternion);
  external set scaling(Vector3 scaling);
  external static set FromPolygons(dynamic FromPolygons);
  external static CSG FromMesh(Mesh mesh);
  external CSG clone();
  external CSG union(CSG csg);
  external void unionInPlace(CSG csg);
  external CSG subtract(CSG csg);
  external void subtractInPlace(CSG csg);
  external CSG intersect(CSG csg);
  external void intersectInPlace(CSG csg);
  external CSG inverse();
  external void inverseInPlace();
  external CSG copyTransformAttributes(CSG csg);
  external Mesh buildMeshGeometry(String name, [Scene scene, bool keepSubMeshes]);
  external Mesh toMesh(String name, [Material material, Scene scene, bool keepSubMeshes]);
}
