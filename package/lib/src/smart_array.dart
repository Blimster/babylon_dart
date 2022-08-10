part of babylon_dart;

/// class SmartArray
@JS()
class SmartArray<T> implements ISmartArrayLike<T> {
  // properties
  external List<T> data;
  external num length;
  // methods
  external void push(T value);
  external void forEach(void Function(T content) func);
  external void sort(num Function(T a, T b) compareFn);
  external void reset();
  external void dispose();
  external void concat(Object array);
  external num indexOf(T value);
  external bool contains(T value);
}
