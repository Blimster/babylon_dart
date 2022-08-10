part of babylon_dart;

/// class Geometry
@JS()
class Geometry implements IGetSetVerticesData {
  // properties
  external String id;
  external num uniqueId;
  external num delayLoadState;
  external String? delayLoadingFile;
  external void Function(Geometry geometry, [String kind]) onGeometryUpdated;
  external bool useBoundingInfoFromGeometry;
  // methods
  external static Geometry CreateGeometryForMesh(Mesh mesh);
  external Scene getScene();
  external Engine getEngine();
  external bool isReady();
  external void setAllVerticesData(VertexData vertexData, [bool updatable]);
  external void setVerticesData(String kind, Float32List data, [bool updatable, num stride]);
  external void removeVerticesData(String kind);
  external void setVerticesBuffer(VertexBuffer buffer, [num? totalVertices, bool disposeExistingBuffer]);
  external void updateVerticesDataDirectly(String kind, DataArray data, num offset, [bool useBytes]);
  external void updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  external num getTotalVertices();
  external Float32List? getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external bool isVertexBufferUpdatable(String kind);
  external VertexBuffer? getVertexBuffer(String kind);
  external GeometryGetVertexBuffers? getVertexBuffers();
  external bool isVerticesDataPresent(String kind);
  external List<String> getVerticesDataKinds();
  external void updateIndices(Int32List indices, [num offset, bool gpuMemoryOnly]);
  external void setIndices(Int32List indices, [num? totalVertices, bool updatable]);
  external num getTotalIndices();
  external Int32List? getIndices([bool copyWhenShared, bool forceCopy]);
  external DataBuffer? getIndexBuffer();
  external void releaseForMesh(Mesh mesh, [bool shouldDispose]);
  external void applyToMesh(Mesh mesh);
  external void load(Scene scene, [void Function() onLoaded]);
  external void toLeftHanded();
  external bool isDisposed();
  external void dispose();
  external Geometry copy(String id);
  external Object serialize();
  external void clearCachedData();
  external Object serializeVerticeData();
  external static Geometry? ExtractFromMesh(Mesh mesh, String id);
  external static String RandomId();
  external static Geometry? Parse(Object parsedVertexData, Scene scene, String rootUrl);
}

@JS()
@anonymous
class GeometryGetVertexBuffers {
}
