part of babylon;

@JS()
class VertexBuffer {
  num BYTE;
  num UNSIGNED_BYTE;
  num SHORT;
  num UNSIGNED_SHORT;
  num INT;
  num UNSIGNED_INT;
  num FLOAT;
  num byteStride;
  num byteOffset;
  bool normalized;
  num type;
  String PositionKind;
  String NormalKind;
  String TangentKind;
  String UVKind;
  String UV2Kind;
  String UV3Kind;
  String UV4Kind;
  String UV5Kind;
  String UV6Kind;
  String ColorKind;
  String MatricesIndicesKind;
  String MatricesWeightsKind;
  String MatricesIndicesExtraKind;
  String MatricesWeightsExtraKind;
  external num get instanceDivisor;
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
  external void create(ByteBuffer data);
  external void update(ByteBuffer data);
  external void updateDirectly(ByteBuffer data, num offset, bool useBytes);
  external void dispose();
  external void forEach(num count, void Function(num value,num index) callback);
  external static num DeduceStride(String kind);
  external static num GetTypeByteLength(num type);
  external static void ForEach(ByteBuffer data, num byteOffset, num byteStride, num componentCount, num componentType, num count, bool normalized, void Function(num value,num index) callback);
}

