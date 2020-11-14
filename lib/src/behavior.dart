part of babylon;

/// interface Behavior
@JS()
abstract class Behavior<T> {
  String name;
  void init();
  void attach(T target);
  void detach();
}
