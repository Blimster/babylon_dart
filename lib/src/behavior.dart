part of babylon;

/// interface Behavior
@JS()
abstract class Behavior<T> {
  String name;
  external void init();
  external void attach(T target);
  external void detach();
}
