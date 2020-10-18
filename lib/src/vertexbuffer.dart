part of babylon;

/// class VertexBuffer
@JS()
class VertexBuffer {
  external num get instanceDivisor;
  external static num get BYTE;
  external static num get UNSIGNED_BYTE;
  external static num get SHORT;
  external static num get UNSIGNED_SHORT;
  external static num get INT;
  external static num get UNSIGNED_INT;
  external static num get FLOAT;
  external num get byteStride;
  external num get byteOffset;
  external bool get normalized;
  external num get type;
  external static String get PositionKind;
  external static String get NormalKind;
  external static String get TangentKind;
  external static String get UVKind;
  external static String get UV2Kind;
  external static String get UV3Kind;
  external static String get UV4Kind;
  external static String get UV5Kind;
  external static String get UV6Kind;
  external static String get ColorKind;
  external static String get MatricesIndicesKind;
  external static String get MatricesWeightsKind;
  external static String get MatricesIndicesExtraKind;
  external static String get MatricesWeightsExtraKind;
  external set instanceDivisor(num value);
  external String getKind();
  external bool isUpdatable();
  external ByteBuffer getData();
  external DataBuffer getBuffer();
  external num getStrideSize();
  external num getOffset();
  external num getSize();
  external bool getIsInstanced();
  external num getInstanceDivisor();
  external void create([ByteBuffer data]);
  external void update(ByteBuffer data);
  external void updateDirectly(ByteBuffer data, num offset, [bool useBytes]);
  external void dispose();
  external void forEach(num count, void Function(num value, num index) callback);
  external static num DeduceStride(String kind);
  external static num GetTypeByteLength(num type);
  external static void ForEach(ByteBuffer data, num byteOffset, num byteStride, num componentCount, num componentType, num count, bool normalized, void Function(num value, num index) callback);
}
