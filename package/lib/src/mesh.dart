part of babylon_dart;

/// class Mesh
@JS()
class Mesh extends AbstractMesh implements IGetSetVerticesData {
  // properties
  external static final Object FRONTSIDE;
  external static final Object BACKSIDE;
  external static final Object DOUBLESIDE;
  external static final Object DEFAULTSIDE;
  external static final Object NO_CAP;
  external static final Object CAP_START;
  external static final Object CAP_END;
  external static final Object CAP_ALL;
  external static final Object NO_FLIP;
  external static final Object FLIP_TILE;
  external static final Object ROTATE_TILE;
  external static final Object FLIP_ROW;
  external static final Object ROTATE_ROW;
  external static final Object FLIP_N_ROTATE_TILE;
  external static final Object FLIP_N_ROTATE_ROW;
  external static final Object CENTER;
  external static final Object LEFT;
  external static final Object RIGHT;
  external static final Object TOP;
  external static final Object BOTTOM;
  external bool INSTANCEDMESH_SORT_TRANSPARENT;
  external Observable<Mesh> onMeshReadyObservable;
  external num delayLoadState;
  external List<InstancedMesh> instances;
  external String delayLoadingFile;
  external void Function(num distance, Mesh mesh, Mesh? selectedLevel) onLODLevelSelection;
  external num? overrideMaterialSideOrientation;
  external bool ignoreCameraMaxZ;
  // methods
  external TransformNode? instantiateHierarchy([TransformNode? newParent, MeshInstantiateHierarchyOptions options, void Function(TransformNode source, TransformNode clone) onNewNodeCreated]);
  external String getClassName();
  external String toString([bool fullDetails]);
  external List<MeshLODLevel> getLODLevels();
  external Mesh addLODLevel(num distanceOrScreenCoverage, Mesh? mesh);
  external Mesh? getLODLevelAtDistance(num distance);
  external Mesh removeLODLevel(Mesh mesh);
  external AbstractMesh? getLOD(Camera camera, [BoundingSphere boundingSphere]);
  external num getTotalVertices();
  external Float32List? getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external VertexBuffer? getVertexBuffer(String kind);
  external bool isVerticesDataPresent(String kind);
  external bool isVertexBufferUpdatable(String kind);
  external List<String> getVerticesDataKinds();
  external num getTotalIndices();
  external Int32List? getIndices([bool copyWhenShared, bool forceCopy]);
  external bool isReady([bool completeCheck, bool forceInstanceSupport]);
  external Mesh freezeNormals();
  external Mesh unfreezeNormals();
  external Mesh refreshBoundingInfo([bool applySkeleton, bool applyMorph]);
  external void subdivide(num count);
  external AbstractMesh setVerticesData(String kind, Float32List data, [bool updatable, num stride]);
  external void removeVerticesData(String kind);
  external void markVerticesDataAsUpdatable(String kind, [bool updatable]);
  external Mesh setVerticesBuffer(VertexBuffer buffer, [bool disposeExistingBuffer]);
  external AbstractMesh updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  external Mesh updateMeshPositions(void Function(Float32List data) positionFunction, [bool computeNormals]);
  external Mesh makeGeometryUnique();
  external AbstractMesh setIndices(Int32List indices, [num? totalVertices, bool updatable]);
  external AbstractMesh updateIndices(Int32List indices, [num offset, bool gpuMemoryOnly]);
  external Mesh toLeftHanded();
  external Mesh registerBeforeRender(void Function(AbstractMesh mesh) func);
  external Mesh unregisterBeforeRender(void Function(AbstractMesh mesh) func);
  external Mesh registerAfterRender(void Function(AbstractMesh mesh) func);
  external Mesh unregisterAfterRender(void Function(AbstractMesh mesh) func);
  external Mesh render(SubMesh subMesh, bool enableAlphaMode, [AbstractMesh effectiveMeshReplacement]);
  external void cleanMatrixWeights();
  external MeshValidateSkinning validateSkinning();
  external bool isInFrustum(List<Plane> frustumPlanes);
  external Mesh setMaterialById(String id);
  external List<IAnimatable> getAnimatables();
  external Mesh bakeTransformIntoVertices(Matrix transform);
  external Mesh bakeCurrentTransformIntoVertices([bool bakeIndependenlyOfChildren]);
  external Mesh clone([String name, Node? newParent, bool doNotCloneChildren, bool clonePhysicsImpostor]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external Mesh applyDisplacementMap(String url, num minHeight, num maxHeight, [void Function(Mesh mesh) onSuccess, Vector2 uvOffset, Vector2 uvScale, bool forceUpdate]);
  external Mesh applyDisplacementMapFromBuffer(Uint8Array buffer, num heightMapWidth, num heightMapHeight, num minHeight, num maxHeight, [Vector2 uvOffset, Vector2 uvScale, bool forceUpdate]);
  external Mesh convertToFlatShadedMesh();
  external Mesh convertToUnIndexedMesh();
  external Mesh flipFaces([bool flipNormals]);
  external void increaseVertices([num numberPerEdge]);
  external void forceSharedVertices();
  external InstancedMesh createInstance(String name);
  external Mesh synchronizeInstances();
  external Mesh optimizeIndices([void Function([Mesh mesh]) successCallback]);
  external void serialize(Object serializationObject);
  external static Mesh Parse(Object parsedMesh, Scene scene, String rootUrl);
  external Float32List? setPositionsForCPUSkinning();
  external Float32List? setNormalsForCPUSkinning();
  external Mesh applySkeleton(Skeleton skeleton);
  external static MeshMinMax MinMax(List<AbstractMesh> meshes);
  external static Vector3 Center(Object meshesOrMinMaxVector);
  external static Mesh? MergeMeshes(List<Mesh> meshes, [bool disposeSource, bool allow32BitsIndices, Mesh meshSubclass, bool subdivideWithSubMeshes, bool multiMultiMaterials]);
  external static Promise<Object> MergeMeshesAsync(List<Mesh> meshes, [bool disposeSource, bool allow32BitsIndices, Mesh meshSubclass, bool subdivideWithSubMeshes, bool multiMultiMaterials]);
  external void addInstance(InstancedMesh instance);
  external void removeInstance(InstancedMesh instance);
}

@JS()
@anonymous
class MeshInstantiateHierarchyOptions {
}

@JS()
@anonymous
class MeshValidateSkinning {
}

@JS()
@anonymous
class MeshMinMax {
}

@JS()
@anonymous
class MeshCenterMeshesOrMinMaxVector {
}
