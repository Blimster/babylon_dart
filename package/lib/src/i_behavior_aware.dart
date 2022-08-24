part of babylon_dart;

/// interface IBehaviorAware
@JS()
abstract class IBehaviorAware<T> {
  // methods
  T addBehavior(Behavior<T> behavior);
  T removeBehavior(Behavior<T> behavior);
  Behavior<T>? getBehaviorByName(String name);
}
