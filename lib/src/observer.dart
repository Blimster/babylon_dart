part of babylon;

/// class Observer
@JS()
class Observer<T> {
  external Observer(void Function(T eventData, EventState eventState) callback, num mask, [dynamic scope]);
  external void Function(T eventData, EventState eventState) get callback;
  external num get mask;
  external dynamic get scope;
  external bool get unregisterOnNextCall;
  external set callback(void Function(T eventData, EventState eventState) callback);
  external set mask(num mask);
  external set scope(dynamic scope);
  external set unregisterOnNextCall(bool unregisterOnNextCall);
}
