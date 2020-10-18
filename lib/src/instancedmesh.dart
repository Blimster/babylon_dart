part of babylon;

/// class InstancedMesh
@JS()
class InstancedMesh extends AbstractMesh {
  external InstancedMesh(String name, Mesh source);
  external List<Light> get lightSources;
  external bool get receiveShadows;
  external Material get material;
  external num get visibility;
  external Skeleton get skeleton;
  external num get renderingGroupId;
  external Mesh get sourceMesh;
  external bool get isAnInstance;
  external set renderingGroupId(num value);
  external String getClassName();
  external num getTotalVertices();
  external num getTotalIndices();
  external bool isReady([bool completeCheck]);
  external Float32List getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external AbstractMesh setVerticesData(String kind, Float32List data, bool updatable);
  external Mesh updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  external Mesh setIndices(Int32List indices, num totalVertices, [bool updatable]);
  external bool isVerticesDataPresent(String kind);
  external Int32List getIndices([bool copyWhenShared, bool forceCopy]);
  external InstancedMesh refreshBoundingInfo([bool applySkeleton]);
  external Matrix getWorldMatrix();
  external AbstractMesh getLOD(Camera camera);
  external InstancedMesh clone(String name, Node newParent, [bool doNotCloneChildren]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
}
