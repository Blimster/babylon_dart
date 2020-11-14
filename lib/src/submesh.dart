part of babylon;

/// class SubMesh
@JS()
class SubMesh implements ICullable {
  external SubMesh(num materialIndex, num verticesStart, num verticesCount, num indexStart, num indexCount, AbstractMesh mesh, [Mesh renderingMesh, bool createBoundingBox, bool addToMesh]);
  external MaterialDefines get materialDefines;
  external Effect get effect;
  external bool get IsGlobal;
  external num get materialIndex;
  external num get verticesStart;
  external num get verticesCount;
  external num get indexStart;
  external num get indexCount;
  external set materialDefines(MaterialDefines defines);
  external set materialIndex(num materialIndex);
  external set verticesStart(num verticesStart);
  external set verticesCount(num verticesCount);
  external set indexStart(num indexStart);
  external set indexCount(num indexCount);
  external void setEffect(Effect effect, [MaterialDefines defines]);
  external static SubMesh AddToMesh(num materialIndex, num verticesStart, num verticesCount, num indexStart, num indexCount, AbstractMesh mesh, [Mesh renderingMesh, bool createBoundingBox]);
  external BoundingInfo getBoundingInfo();
  external SubMesh setBoundingInfo(BoundingInfo boundingInfo);
  external AbstractMesh getMesh();
  external Mesh getRenderingMesh();
  external AbstractMesh getReplacementMesh();
  external AbstractMesh getEffectiveMesh();
  external Material getMaterial();
  external SubMesh refreshBoundingInfo([Float32List data]);
  external SubMesh updateBoundingInfo(Matrix world);
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
  external SubMesh render(bool enableAlphaMode);
  external bool canIntersects(Ray ray);
  external SubMesh clone(AbstractMesh newMesh, [Mesh newRenderingMesh]);
  external void dispose();
  external String getClassName();
  external static SubMesh CreateFromIndices(num materialIndex, num startIndex, num indexCount, AbstractMesh mesh, [Mesh renderingMesh]);
}
