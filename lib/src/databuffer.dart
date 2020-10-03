part of babylon;

@JS()
class DataBuffer {
  num references;
  num capacity;
  bool is32Bits;
  external dynamic get underlyingResource;
}
