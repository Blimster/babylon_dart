part of babylon_dart;

/// class VertexBuffer
@JS()
class VertexBuffer {
  // properties
  external static final Object BYTE;
  external static final Object UNSIGNED_BYTE;
  external static final Object SHORT;
  external static final Object UNSIGNED_SHORT;
  external static final Object INT;
  external static final Object UNSIGNED_INT;
  external static final Object FLOAT;
  external static final num byteStride;
  external static final num byteOffset;
  external static final bool normalized;
  external static final num type;
  external static final num uniqueId;
  external static final num hashCode;
  external static final Object PositionKind;
  external static final Object NormalKind;
  external static final Object TangentKind;
  external static final Object UVKind;
  external static final Object UV2Kind;
  external static final Object UV3Kind;
  external static final Object UV4Kind;
  external static final Object UV5Kind;
  external static final Object UV6Kind;
  external static final Object ColorKind;
  external static final Object ColorInstanceKind;
  external static final Object MatricesIndicesKind;
  external static final Object MatricesWeightsKind;
  external static final Object MatricesIndicesExtraKind;
  external static final Object MatricesWeightsExtraKind;
  // methods
  external String getKind();
  external bool isUpdatable();
  external DataArray? getData();
  external Float32List? getFloatData(num totalVertices, [bool forceCopy]);
  external DataBuffer? getBuffer();
  external num getStrideSize();
  external num getOffset();
  external num getSize([bool sizeInBytes]);
  external bool getIsInstanced();
  external num getInstanceDivisor();
  external void create([DataArray data]);
  external void update(DataArray data);
  external void updateDirectly(DataArray data, num offset, [bool useBytes]);
  external void dispose();
  external void forEach(num count, void Function(num value, num index) callback);
  external static num DeduceStride(String kind);
  external static num GetTypeByteLength(num type);
  external static void ForEach(DataArray data, num byteOffset, num byteStride, num componentCount, num componentType, num count, bool normalized, void Function(num value, num index) callback);
}
