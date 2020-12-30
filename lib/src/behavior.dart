part of babylon;

/// interface Behavior
@JS()
abstract class Behavior<T> {
  external String name;
  void init();
  void attach(T target);
  void detach();
}
