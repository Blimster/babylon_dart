part of babylon;

/// class Octree
@JS()
class Octree<T> {
  external Octree(void Function(T entry, OctreeBlock<T> block) creationFunc, [num maxBlockCapacity, num maxDepth]);
  external num get maxDepth;
  external List<OctreeBlock<T>> get blocks;
  external List<T> get dynamicContent;
  external static void Function(AbstractMesh entry, OctreeBlock<AbstractMesh> block) get CreationFuncForMeshes;
  external static void Function(SubMesh entry, OctreeBlock<SubMesh> block) get CreationFuncForSubMeshes;
  external set maxDepth(num maxDepth);
  external set blocks(List<OctreeBlock<T>> blocks);
  external set dynamicContent(List<T> dynamicContent);
  external static set CreationFuncForMeshes(void Function(AbstractMesh entry, OctreeBlock<AbstractMesh> block) CreationFuncForMeshes);
  external static set CreationFuncForSubMeshes(void Function(SubMesh entry, OctreeBlock<SubMesh> block) CreationFuncForSubMeshes);
  external void update(Vector3 worldMin, Vector3 worldMax, List<T> entries);
  external void addMesh(T entry);
  external void removeMesh(T entry);
  external SmartArray<T> select(List<Plane> frustumPlanes, [bool allowDuplicate]);
  external SmartArray<T> intersects(Vector3 sphereCenter, num sphereRadius, [bool allowDuplicate]);
  external SmartArray<T> intersectsRay(Ray ray);
}
