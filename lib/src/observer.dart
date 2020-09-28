part of babylon;

@JS()
class Observer<T> {
  external Observer(void Function(T eventData, EventState eventState) callback, num mask, [dynamic scope]);
  void Function(T eventData, EventState eventState) callback;
  num mask;
  dynamic scope;
  bool unregisterOnNextCall;
}

