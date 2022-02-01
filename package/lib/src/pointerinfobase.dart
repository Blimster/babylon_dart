part of babylon;

/// class PointerInfoBase
@JS()
class PointerInfoBase {
  external PointerInfoBase();
  external PointerInfoBase.args(num type, dynamic event);
  external num get type;
  external dynamic get event;
  external set type(num type);
  external set event(dynamic event);
}
