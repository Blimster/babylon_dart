part of babylon;

@JS()
@anonymous
class SolidParticleSystemOptions {
  external factory SolidParticleSystemOptions({bool updatable, bool isPickable, bool enableDepthSort, bool particleIntersection, bool boundingSphereOnly, num bSphereRadiusFactor, bool expandable, bool useModelMaterial, bool enableMultiMaterial});
  external bool get updatable;
  external bool get isPickable;
  external bool get enableDepthSort;
  external bool get particleIntersection;
  external bool get boundingSphereOnly;
  external num get bSphereRadiusFactor;
  external bool get expandable;
  external bool get useModelMaterial;
  external bool get enableMultiMaterial;
}

@JS()
@anonymous
class SolidParticleSystemDigestOptions {
  external factory SolidParticleSystemDigestOptions({num facetNb, num number, num delta, List storage});
  external num get facetNb;
  external num get number;
  external num get delta;
  external List get storage;
}

@JS()
@anonymous
class SolidParticleSystemAddShapeOptions {
  external factory SolidParticleSystemAddShapeOptions({dynamic positionFunction, dynamic vertexFunction, List storage});
  external dynamic get positionFunction;
  external dynamic get vertexFunction;
  external List get storage;
}

/// class SolidParticleSystem
@JS()
class SolidParticleSystem implements IDisposable {
  external SolidParticleSystem(String name, Scene scene, [SolidParticleSystemOptions options]);
  external bool get isAlwaysVisible;
  external bool get isVisibilityBoxLocked;
  external bool get computeParticleRotation;
  external bool get computeParticleColor;
  external bool get computeParticleTexture;
  external bool get computeParticleVertex;
  external bool get computeBoundingBox;
  external bool get depthSortParticles;
  external bool get expandable;
  external bool get multimaterialEnabled;
  external bool get useModelMaterial;
  external List<Material> get materials;
  external MultiMaterial get multimaterial;
  external bool get autoUpdateSubMeshes;
  external List<SolidParticle> get particles;
  external num get nbParticles;
  external bool get billboard;
  external bool get recomputeNormals;
  external num get counter;
  external String get name;
  external Mesh get mesh;
  external dynamic get vars;
  external List<DepthSortedParticle> get depthSortedParticles;
  external set isAlwaysVisible(bool val);
  external set isVisibilityBoxLocked(bool val);
  external set computeParticleRotation(bool val);
  external set computeParticleColor(bool val);
  external set computeParticleTexture(bool val);
  external set computeParticleVertex(bool val);
  external set computeBoundingBox(bool val);
  external set depthSortParticles(bool val);
  external set multimaterial(MultiMaterial mm);
  external set autoUpdateSubMeshes(bool val);
  external set particles(List<SolidParticle> particles);
  external set nbParticles(num nbParticles);
  external set billboard(bool billboard);
  external set recomputeNormals(bool recomputeNormals);
  external set counter(num counter);
  external set name(String name);
  external set mesh(Mesh mesh);
  external set vars(dynamic vars);
  external set depthSortedParticles(List<DepthSortedParticle> depthSortedParticles);
  external Mesh buildMesh();
  external SolidParticleSystem digest(Mesh mesh, [SolidParticleSystemDigestOptions options]);
  external num addShape(Mesh mesh, num nb, [SolidParticleSystemAddShapeOptions options]);
  external SolidParticleSystem rebuildMesh([bool reset]);
  external List<SolidParticle> removeParticles(num start, num end);
  external SolidParticleSystem insertParticlesFromArray(List<SolidParticle> solidParticleArray);
  external SolidParticleSystem setParticles([num start, num end, bool update]);
  external void dispose();
  external SolidParticle getParticleById(num id);
  external List<SolidParticle> getParticlesByShapeId(num shapeId);
  external SolidParticleSystem getParticlesByShapeIdToRef(num shapeId, List<SolidParticle> ref);
  external SolidParticleSystem computeSubMeshes();
  external SolidParticleSystem refreshVisibleSize();
  external void setVisibilityBox(num size);
  external void setMultiMaterial(List<Material> materials);
  external void initParticles();
  external SolidParticle recycleParticle(SolidParticle particle);
  external SolidParticle updateParticle(SolidParticle particle);
  external SolidParticleSystem updateParticleVertex(SolidParticle particle, SolidParticleVertex vertex, num pt);
  external void beforeUpdateParticles([num start, num stop, bool update]);
  external void afterUpdateParticles([num start, num stop, bool update]);
}
