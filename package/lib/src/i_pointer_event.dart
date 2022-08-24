part of babylon_dart;

/// interface IPointerEvent
@JS()
abstract class IPointerEvent extends IMouseEvent {
  // properties
  external Exclude<PointerInput, Object> inputIndex;
  external num pointerId;
  external String pointerType;
}
