part of babylon;

/// class OctreeBlock
@JS()
class OctreeBlock<T> {
  external OctreeBlock(Vector3 minPoint, Vector3 maxPoint, num capacity, num depth, num maxDepth, void Function(T entry, OctreeBlock<T> block) creationFunc);
  external num get capacity;
  external Vector3 get minPoint;
  external Vector3 get maxPoint;
  external List<T> get entries;
  external List<OctreeBlock<T>> get blocks;
  external set entries(List<T> entries);
  external set blocks(List<OctreeBlock<T>> blocks);
  external void addEntry(T entry);
  external void removeEntry(T entry);
  external void addEntries(List<T> entries);
  external void select(List<Plane> frustumPlanes, SmartArrayNoDuplicate<T> selection, [bool allowDuplicate]);
  external void intersects(Vector3 sphereCenter, num sphereRadius, SmartArrayNoDuplicate<T> selection, [bool allowDuplicate]);
  external void intersectsRay(Ray ray, SmartArrayNoDuplicate<T> selection);
  external void createInnerBlocks();
}
