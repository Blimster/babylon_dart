part of babylon_dart;

/// interface Behavior
@JS()
abstract class Behavior<T> {
  // properties
  external String name;
  // methods
  void init();
  void attach(T target);
  void detach();
}
