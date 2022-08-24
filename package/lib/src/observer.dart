part of babylon_dart;

/// class Observer
@JS()
class Observer<T> {
  // properties
  external void Function(T eventData, EventState eventState) callback;
  external num mask;
  external Object scope;
  external bool unregisterOnNextCall;
}
