part of babylon;

/// interface IGetSetVerticesData
@JS()
abstract class IGetSetVerticesData {
  external bool isVerticesDataPresent(String kind);
  external Float32List getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  external Int32List getIndices([bool copyWhenShared, bool forceCopy]);
  external void setVerticesData(String kind, Float32List data, bool updatable);
  external void updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  external void setIndices(Int32List indices, num totalVertices, [bool updatable]);
}
