part of babylon;

/// class PointerInfo
@JS()
class PointerInfo extends PointerInfoBase {
  external PointerInfo(num type, dynamic event, PickingInfo pickInfo);
  external PickingInfo get pickInfo;
  external set pickInfo(PickingInfo pickInfo);
}
