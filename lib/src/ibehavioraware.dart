part of babylon;

/// interface IBehaviorAware
@JS()
abstract class IBehaviorAware<T> {
  T addBehavior(Behavior<T> behavior);
  T removeBehavior(Behavior<T> behavior);
  Behavior<T> getBehaviorByName(String name);
}
