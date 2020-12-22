part of babylon;

@JS()
@anonymous
class MeshInstantiateHierarchyOptions {
  external factory MeshInstantiateHierarchyOptions({bool doNotInstantiate});
  external bool get doNotInstantiate;
}

@JS()
@anonymous
class MeshValidateSkinningResult {
  external factory MeshValidateSkinningResult({bool skinned, bool valid, String report});
  external bool get skinned;
  external bool get valid;
  external String get report;
}

@JS()
@anonymous
class MeshCreateTiledGroundSubdivisions {
  external factory MeshCreateTiledGroundSubdivisions({num w, num h});
  external num get w;
  external num get h;
}

@JS()
@anonymous
class MeshCreateTiledGroundPrecision {
  external factory MeshCreateTiledGroundPrecision({num w, num h});
  external num get w;
  external num get h;
}

@JS()
@anonymous
class MeshCreatePolyhedronOptions {
  external factory MeshCreatePolyhedronOptions({num type, num size, num sizeX, num sizeY, num sizeZ, dynamic custom, List<Vector4> faceUV, List<Color4> faceColors, bool updatable, num sideOrientation});
  external num get type;
  external num get size;
  external num get sizeX;
  external num get sizeY;
  external num get sizeZ;
  external dynamic get custom;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external bool get updatable;
  external num get sideOrientation;
}

@JS()
@anonymous
class MeshCreateIcoSphereOptions {
  external factory MeshCreateIcoSphereOptions({num radius, bool flat, num subdivisions, num sideOrientation, bool updatable});
  external num get radius;
  external bool get flat;
  external num get subdivisions;
  external num get sideOrientation;
  external bool get updatable;
}

@JS()
@anonymous
class MeshMinMaxResult {
  external factory MeshMinMaxResult({Vector3 min, Vector3 max});
  external Vector3 get min;
  external Vector3 get max;
}

/// class Mesh
@JS()
class Mesh extends AbstractMesh implements IGetSetVerticesData {
  external Mesh();
  external Mesh.args(String name, [Scene scene, Node parent, Mesh source, bool doNotCloneChildren, bool clonePhysicsImpostor]);
  external bool get computeBonesUsingShaders;
  external Observable<Mesh> get onBeforeRenderObservable;
  external Observable<Mesh> get onBeforeBindObservable;
  external Observable<Mesh> get onAfterRenderObservable;
  external Observable<Mesh> get onBeforeDrawObservable;
  external bool get hasInstances;
  external bool get hasThinInstances;
  external Mesh get source;
  external bool get isUnIndexed;
  external Float32List get worldMatrixInstancedBuffer;
  external bool get manualUpdateOfWorldMatrixInstancedBuffer;
  external bool get hasLODLevels;
  external Geometry get geometry;
  external bool get isBlocked;
  external bool get areNormalsFrozen;
  external static num get FRONTSIDE;
  external static num get BACKSIDE;
  external static num get DOUBLESIDE;
  external static num get DEFAULTSIDE;
  external static num get NO_CAP;
  external static num get CAP_START;
  external static num get CAP_END;
  external static num get CAP_ALL;
  external static num get NO_FLIP;
  external static num get FLIP_TILE;
  external static num get ROTATE_TILE;
  external static num get FLIP_ROW;
  external static num get ROTATE_ROW;
  external static num get FLIP_N_ROTATE_TILE;
  external static num get FLIP_N_ROTATE_ROW;
  external static num get CENTER;
  external static num get LEFT;
  external static num get RIGHT;
  external static num get TOP;
  external static num get BOTTOM;
  external num get delayLoadState;
  external List<InstancedMesh> get instances;
  external String get delayLoadingFile;
  external void Function(num distance, Mesh mesh, Mesh selectedLevel) get onLODLevelSelection;
  external num get overrideMaterialSideOrientation;
  external dynamic get normalizeSkinFourWeights;
  external dynamic get normalizeSkinWeightsAndExtra;
  external set computeBonesUsingShaders(bool value);
  external set onBeforeDraw(void Function() callback);
  external set isUnIndexed(bool value);
  external set manualUpdateOfWorldMatrixInstancedBuffer(bool value);
  external set overridenInstanceCount(num count);
  external set delayLoadState(num delayLoadState);
  external set instances(List<InstancedMesh> instances);
  external set delayLoadingFile(String delayLoadingFile);
  external set onLODLevelSelection(void Function(num distance, Mesh mesh, Mesh selectedLevel) onLODLevelSelection);
  external set overrideMaterialSideOrientation(num overrideMaterialSideOrientation);
  external set normalizeSkinFourWeights(dynamic normalizeSkinFourWeights);
  external set normalizeSkinWeightsAndExtra(dynamic normalizeSkinWeightsAndExtra);
  external String getClassName();
  external String toString([bool fullDetails]);
  external Mesh addLODLevel(num distance, Mesh mesh);
  external Mesh getLODLevelAtDistance(num distance);
  external Mesh removeLODLevel(Mesh mesh);
  external AbstractMesh getLOD(Camera camera);
  external num getTotalVertices();
  external Float32List getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external VertexBuffer getVertexBuffer(String kind);
  external bool isVerticesDataPresent(String kind);
  external bool isVertexBufferUpdatable(String kind);
  external List<String> getVerticesDataKinds();
  external num getTotalIndices();
  external Int32List getIndices([bool copyWhenShared, bool forceCopy]);
  external bool isReady([bool completeCheck]);
  external Mesh freezeNormals();
  external Mesh unfreezeNormals();
  external Mesh refreshBoundingInfo([bool applySkeleton]);
  external void subdivide(num count);
  external AbstractMesh setVerticesData(String kind, Float32List data, bool updatable);
  external void removeVerticesData(String kind);
  external void markVerticesDataAsUpdatable(String kind, [bool updatable]);
  external Mesh setVerticesBuffer(VertexBuffer buffer);
  external AbstractMesh updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  external Mesh updateMeshPositions(void Function(Float32List data) positionFunction, [bool computeNormals]);
  external Mesh makeGeometryUnique();
  external AbstractMesh setIndices(Int32List indices, num totalVertices, [bool updatable]);
  external AbstractMesh updateIndices(Int32List indices, [num offset, bool gpuMemoryOnly]);
  external Mesh toLeftHanded();
  external Mesh registerBeforeRender(void Function(AbstractMesh mesh) func);
  external Mesh unregisterBeforeRender(void Function(AbstractMesh mesh) func);
  external Mesh registerAfterRender(void Function(AbstractMesh mesh) func);
  external Mesh unregisterAfterRender(void Function(AbstractMesh mesh) func);
  external Mesh render(SubMesh subMesh, bool enableAlphaMode, [AbstractMesh effectiveMeshReplacement]);
  external void cleanMatrixWeights();
  external bool isInFrustum(List<Plane> frustumPlanes);
  external Mesh setMaterialByID(String id);
  external List<IAnimatable> getAnimatables();
  external Mesh bakeTransformIntoVertices(Matrix transform);
  external Mesh bakeCurrentTransformIntoVertices([bool bakeIndependenlyOfChildren]);
  external Mesh clone(String name, Node newParent, [bool doNotCloneChildren]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external Mesh applyDisplacementMap(String url, num minHeight, num maxHeight, [void Function(Mesh mesh) onSuccess, Vector2 uvOffset, Vector2 uvScale, bool forceUpdate]);
  external Mesh applyDisplacementMapFromBuffer(Uint8List buffer, num heightMapWidth, num heightMapHeight, num minHeight, num maxHeight, [Vector2 uvOffset, Vector2 uvScale, bool forceUpdate]);
  external Mesh convertToFlatShadedMesh();
  external Mesh convertToUnIndexedMesh();
  external Mesh flipFaces([bool flipNormals]);
  external void increaseVertices(num numberPerEdge);
  external void forceSharedVertices();
  external InstancedMesh createInstance(String name);
  external Mesh synchronizeInstances();
  external Mesh optimizeIndices([void Function(Mesh mesh) successCallback]);
  external void serialize([dynamic currentSerializationObject]);
  external static Mesh Parse(dynamic parsedTransformNode, Scene scene, String rootUrl);
  external static Mesh CreateRibbon(String name, List<Vector3> pathArray, bool closeArray, bool closePath, num offset, [Scene scene, bool updatable, num sideOrientation, Mesh instance]);
  external static Mesh CreateDisc(String name, num radius, num tessellation, [Scene scene, bool updatable, num sideOrientation]);
  external static Mesh CreateBox(String name, num size, [Scene scene, bool updatable, num sideOrientation]);
  external static Mesh CreateSphere(String name, num segments, num diameter, [Scene scene, bool updatable, num sideOrientation]);
  external static Mesh CreateHemisphere(String name, num segments, num diameter, [Scene scene]);
  external static Mesh CreateCylinder(String name, num height, num diameterTop, num diameterBottom, num tessellation, dynamic subdivisions, [Scene scene, dynamic updatable, num sideOrientation]);
  external static Mesh CreateTorus(String name, num diameter, num thickness, num tessellation, [Scene scene, bool updatable, num sideOrientation]);
  external static Mesh CreateTorusKnot(String name, num radius, num tube, num radialSegments, num tubularSegments, num p, num q, [Scene scene, bool updatable, num sideOrientation]);
  external static LinesMesh CreateLines(String name, List<Vector3> points, [Scene scene, bool updatable, LinesMesh instance]);
  external static LinesMesh CreateDashedLines(String name, List<Vector3> points, num dashSize, num gapSize, num dashNb, [Scene scene, bool updatable, LinesMesh instance]);
  external static Mesh CreatePolygon(String name, List<Vector3> shape, Scene scene, [List<Vector3> holes, bool updatable, num sideOrientation, dynamic earcutInjection]);
  external static Mesh ExtrudePolygon(String name, List<Vector3> shape, num depth, Scene scene, [List<Vector3> holes, bool updatable, num sideOrientation, dynamic earcutInjection]);
  external static Mesh ExtrudeShape(String name, List<Vector3> shape, List<Vector3> path, num scale, num rotation, num cap, [Scene scene, bool updatable, num sideOrientation, Mesh instance]);
  external static Mesh ExtrudeShapeCustom(String name, List<Vector3> shape, List<Vector3> path, Function scaleFunction, Function rotationFunction, bool ribbonCloseArray, bool ribbonClosePath, num cap, Scene scene, [bool updatable, num sideOrientation, Mesh instance]);
  external static Mesh CreateLathe(String name, List<Vector3> shape, num radius, num tessellation, Scene scene, [bool updatable, num sideOrientation]);
  external static Mesh CreatePlane(String name, num size, Scene scene, [bool updatable, num sideOrientation]);
  external static Mesh CreateGround(String name, num width, num height, num subdivisions, [Scene scene, bool updatable]);
  external static Mesh CreateTiledGround(String name, num xmin, num zmin, num xmax, num zmax, MeshCreateTiledGroundSubdivisions subdivisions, MeshCreateTiledGroundPrecision precision, Scene scene, [bool updatable]);
  external static GroundMesh CreateGroundFromHeightMap(String name, String url, num width, num height, num subdivisions, num minHeight, num maxHeight, Scene scene, [bool updatable, void Function(GroundMesh mesh) onReady, num alphaFilter]);
  external static Mesh CreateTube(String name, List<Vector3> path, num radius, num tessellation, num Function(num i, num distance) radiusFunction, num cap, Scene scene, [bool updatable, num sideOrientation, Mesh instance]);
  external static Mesh CreatePolyhedron(String name, MeshCreatePolyhedronOptions options, Scene scene);
  external static Mesh CreateIcoSphere(String name, MeshCreateIcoSphereOptions options, Scene scene);
  external static Mesh CreateDecal(String name, AbstractMesh sourceMesh, Vector3 position, Vector3 normal, Vector3 size, num angle);
  external static Mesh CreateCapsule(String name, ICreateCapsuleOptions options, Scene scene);
  external Float32List setPositionsForCPUSkinning();
  external Float32List setNormalsForCPUSkinning();
  external Mesh applySkeleton(Skeleton skeleton);
  external static Mesh MergeMeshes(List<Mesh> meshes, [bool disposeSource, bool allow32BitsIndices, Mesh meshSubclass, bool subdivideWithSubMeshes, bool multiMultiMaterials]);
  external void addInstance(InstancedMesh instance);
  external void removeInstance(InstancedMesh instance);
  bool edgesShareWithInstances;
  external void registerInstancedBuffer(String kind, num stride);
  bool thinInstanceEnablePicking;
  num thinInstanceCount;
  external num thinInstanceAdd(dynamic matrix, bool refresh);
  external num thinInstanceAddSelf(bool refresh);
  external void thinInstanceRegisterAttribute(String kind, num stride);
  external void thinInstanceSetMatrixAt(num index, Matrix matrix, bool refresh);
  external void thinInstanceSetAttributeAt(String kind, num index, List<num> value, bool refresh);
  external void thinInstanceSetBuffer(String kind, Float32List buffer, num stride, bool staticBuffer);
  external List<Matrix> thinInstanceGetWorldMatrices();
  external void thinInstanceBufferUpdated(String kind);
  external void thinInstancePartialBufferUpdate(String kind, Float32List data, num offset);
  external void thinInstanceRefreshBoundingInfo(bool forceRefreshParentInfo);
  external List<IParticleSystem> getEmittedParticleSystems();
  external List<IParticleSystem> getHierarchyEmittedParticleSystems();
}
