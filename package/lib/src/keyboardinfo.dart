part of babylon;

/// class KeyboardInfo
@JS()
class KeyboardInfo {
  external KeyboardInfo();
  external KeyboardInfo.args(num type, KeyboardEvent event);
  external num get type;
  external KeyboardEvent get event;
  external set type(num type);
  external set event(KeyboardEvent event);
}
