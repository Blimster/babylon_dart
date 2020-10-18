part of babylon;

/// class SubMesh
@JS()
class SubMesh extends BaseSubMesh implements ICullable {
  external SubMesh(num materialIndex, num verticesStart, num verticesCount, num indexStart, num indexCount, AbstractMesh mesh, [Mesh renderingMesh, bool createBoundingBox]);
  external bool get IsGlobal;
  external num get materialIndex;
  external num get verticesStart;
  external num get verticesCount;
  external num get indexStart;
  external num get indexCount;
  external set materialIndex(num materialIndex);
  external set verticesStart(num verticesStart);
  external set verticesCount(num verticesCount);
  external set indexStart(num indexStart);
  external set indexCount(num indexCount);
  external static SubMesh AddToMesh(num materialIndex, num verticesStart, num verticesCount, num indexStart, num indexCount, AbstractMesh mesh, [Mesh renderingMesh, bool createBoundingBox]);
  external BoundingInfo getBoundingInfo();
  external SubMesh setBoundingInfo(BoundingInfo boundingInfo);
  external AbstractMesh getMesh();
  external Mesh getRenderingMesh();
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
