part of babylon;

/// interface IActionEvent
@JS()
abstract class IActionEvent {
  dynamic source;
  num pointerX;
  num pointerY;
  AbstractMesh meshUnderPointer;
  dynamic sourceEvent;
  dynamic additionalData;
}
