part of babylon;

/// interface IGetSetVerticesData
@JS()
abstract class IGetSetVerticesData {
  bool isVerticesDataPresent(String kind);
  Float32List getVerticesData(String kind, [bool copyWhenShared, bool forceCopy]);
  Int32List getIndices([bool copyWhenShared, bool forceCopy]);
  void setVerticesData(String kind, Float32List data, bool updatable);
  void updateVerticesData(String kind, Float32List data, [bool updateExtends, bool makeItUnique]);
  void setIndices(Int32List indices, num totalVertices, [bool updatable]);
}
