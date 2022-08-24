part of babylon_dart;

/// class InstancedMesh
@JS()
class InstancedMesh extends AbstractMesh {
  // methods
  external String getClassName();
  external num getTotalVertices();
  external num getTotalIndices();
  external InstancedMesh createInstance(String name);
  external bool isReady([bool completeCheck]);
  external Float32List? getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external AbstractMesh setVerticesData(String kind, Float32List data, [bool updatable, num stride]);
  external Mesh updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  external Mesh setIndices(Int32List indices, [num? totalVertices, bool updatable]);
  external bool isVerticesDataPresent(String kind);
  external Int32List? getIndices([bool copyWhenShared, bool forceCopy]);
  external InstancedMesh refreshBoundingInfo([bool applySkeleton, bool applyMorph]);
  external Matrix getWorldMatrix();
  external AbstractMesh getLOD(Camera camera);
  external InstancedMesh clone(String name, [Node? newParent, bool doNotCloneChildren]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
}
