part of babylon;

/// class DataBuffer
@JS()
class DataBuffer {
  external dynamic get underlyingResource;
  external num get references;
  external num get capacity;
  external bool get is32Bits;
  external set references(num references);
  external set capacity(num capacity);
  external set is32Bits(bool is32Bits);
}
