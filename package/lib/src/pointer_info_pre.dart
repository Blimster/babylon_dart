part of babylon_dart;

/// class PointerInfoPre
@JS()
class PointerInfoPre extends PointerInfoBase {
  // properties
  external Ray? ray;
  external PickingInfo? nearInteractionPickingInfo;
  external Vector2 localPosition;
  external bool skipOnPointerObservable;
}
