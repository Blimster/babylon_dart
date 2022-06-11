part of babylon_dart;

/// interface IActionEvent
@JS()
abstract class IActionEvent {
  // properties
  external Object source;
  external num pointerX;
  external num pointerY;
  external AbstractMesh? meshUnderPointer;
  external Object sourceEvent;
  external Object additionalData;
}
