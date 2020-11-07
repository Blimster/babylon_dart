part of babylon;

/// class SmartArrayNoDuplicate
@JS()
class SmartArrayNoDuplicate<T> extends SmartArray<T> {
  external void push(T value);
  external bool pushNoDuplicate(T value);
  external void reset();
  external void concatWithNoDuplicate(dynamic array);
}
