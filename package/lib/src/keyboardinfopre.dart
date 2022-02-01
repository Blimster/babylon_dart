part of babylon;

/// class KeyboardInfoPre
@JS()
class KeyboardInfoPre extends KeyboardInfo {
  external KeyboardInfoPre(num type, KeyboardEvent event);
  external num get type;
  external KeyboardEvent get event;
  external bool get skipOnPointerObservable;
  external set type(num type);
  external set event(KeyboardEvent event);
  external set skipOnPointerObservable(bool skipOnPointerObservable);
}
