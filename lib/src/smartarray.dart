part of babylon;

/// class SmartArray
@JS()
class SmartArray<T> implements ISmartArrayLike<T> {
  external List<T> get data;
  external num get length;
  external set data(List<T> data);
  external set length(num length);
  external void push(T value);
  external void forEach(void Function(T content) func);
  external void sort(num Function(T a, T b) compareFn);
  external void reset();
  external void dispose();
  external void concat(dynamic array);
  external num indexOf(T value);
  external bool contains(T value);
}
