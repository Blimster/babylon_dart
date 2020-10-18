part of babylon;

/// interface IBehaviorAware
@JS()
abstract class IBehaviorAware<T> {
  external T addBehavior(Behavior<T> behavior);
  external T removeBehavior(Behavior<T> behavior);
  external Behavior<T> getBehaviorByName(String name);
}
