part of babylon_dart;

/// interface IMouseEvent
@JS()
abstract class IMouseEvent extends IUIEvent {
  // properties
  external Exclude<PointerInput, Object> inputIndex;
  external bool altKey;
  external num button;
  external num buttons;
  external num clientX;
  external num clientY;
  external bool ctrlKey;
  external num detail;
  external bool metaKey;
  external num movementX;
  external num movementY;
  external num mozMovementX;
  external num mozMovementY;
  external Object msMovementX;
  external Object msMovementY;
  external num offsetX;
  external num offsetY;
  external num pageX;
  external num pageY;
  external bool shiftKey;
  external Object webkitMovementX;
  external Object webkitMovementY;
  external num x;
  external num y;
}
