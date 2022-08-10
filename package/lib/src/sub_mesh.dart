part of babylon_dart;

/// class SubMesh
@JS()
class SubMesh implements ICullable {
  // properties
  external num materialIndex;
  external num verticesStart;
  external num verticesCount;
  external num indexStart;
  external num indexCount;
  // methods
  external void setEffect(Effect? effect, [Object? defines, IMaterialContext materialContext, bool resetContext]);
  external void resetDrawCache([num passId]);
  external static SubMesh AddToMesh(num materialIndex, num verticesStart, num verticesCount, num indexStart, num indexCount, AbstractMesh mesh, [Mesh renderingMesh, bool createBoundingBox]);
  external BoundingInfo getBoundingInfo();
  external SubMesh setBoundingInfo(BoundingInfo boundingInfo);
  external AbstractMesh getMesh();
  external Mesh getRenderingMesh();
  external AbstractMesh? getReplacementMesh();
  external AbstractMesh getEffectiveMesh();
  external Material? getMaterial([bool getDefaultMaterial]);
  external SubMesh refreshBoundingInfo([Float32List? data]);
  external SubMesh updateBoundingInfo(Matrix world);
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
  external SubMesh render(bool enableAlphaMode);
  external bool canIntersects(Ray ray);
  external IntersectionInfo? intersects(Ray ray, List<Vector3> positions, Int32List indices, [bool fastCheck, TrianglePickingPredicate trianglePredicate]);
  external SubMesh clone(AbstractMesh newMesh, [Mesh newRenderingMesh]);
  external void dispose();
  external String getClassName();
  external static SubMesh CreateFromIndices(num materialIndex, num startIndex, num indexCount, AbstractMesh mesh, [Mesh renderingMesh, bool createBoundingBox]);
}
