part of babylon;

/// interface IActionEvent
@JS()
abstract class IActionEvent {
  external dynamic source;
  external num pointerX;
  external num pointerY;
  external AbstractMesh meshUnderPointer;
  external dynamic sourceEvent;
  external dynamic additionalData;
}
