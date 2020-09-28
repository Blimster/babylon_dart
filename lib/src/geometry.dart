part of babylon;

@JS()
class Geometry {
  external Geometry(String id, Scene scene, [VertexData vertexData, bool updatable, Mesh mesh]);
  String id;
  num uniqueId;
  num delayLoadState;
  String delayLoadingFile;
  void Function(Geometry geometry,String kind) onGeometryUpdated;
  bool useBoundingInfoFromGeometry;
  dynamic notifyUpdate;
  dynamic toNumberArray;
  external Vector2 get boundingBias;
  external List<Mesh> get meshes;
  external bool get doNotSerialize;
  external set boundingBias(Vector2 value);
  external static Geometry CreateGeometryForMesh(Mesh mesh);
  external Scene getScene();
  external Engine getEngine();
  external bool isReady();
  external void setAllVerticesData(VertexData vertexData, [bool updatable]);
  external void setVerticesData(String kind, Float32List data, [bool updatable, num stride]);
  external void removeVerticesData(String kind);
  external void setVerticesBuffer(VertexBuffer buffer, [num totalVertices]);
  external void updateVerticesDataDirectly(String kind, ByteBuffer data, num offset, [bool useBytes]);
  external void updateVerticesData(String kind, Float32List data, [bool updateExtends]);
  external num getTotalVertices();
  external Float32List getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external bool isVertexBufferUpdatable(String kind);
  external VertexBuffer getVertexBuffer(String kind);
  external bool isVerticesDataPresent(String kind);
  external List<String> getVerticesDataKinds();
  external void updateIndices(Int32List indices, [num offset, bool gpuMemoryOnly]);
  external void setIndices(Int32List indices, [num totalVertices, bool updatable]);
  external num getTotalIndices();
  external Int32List getIndices([bool copyWhenShared, bool forceCopy]);
  external DataBuffer getIndexBuffer();
  external void releaseForMesh(Mesh mesh, [bool shouldDispose]);
  external void applyToMesh(Mesh mesh);
  external void load(Scene scene, [void Function() onLoaded]);
  external void toLeftHanded();
  external bool isDisposed();
  external void dispose();
  external Geometry copy(String id);
  external dynamic serialize();
  external dynamic serializeVerticeData();
  external static Geometry ExtractFromMesh(Mesh mesh, String id);
  external static String RandomId();
  external static Geometry Parse(dynamic parsedVertexData, Scene scene, String rootUrl);
}

