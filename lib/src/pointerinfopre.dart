part of babylon;

/// class PointerInfoPre
@JS()
class PointerInfoPre extends PointerInfoBase {
  external PointerInfoPre(num type, dynamic event, num localX, num localY);
  external Ray get ray;
  external Vector2 get localPosition;
  external bool get skipOnPointerObservable;
  external set ray(Ray ray);
  external set localPosition(Vector2 localPosition);
  external set skipOnPointerObservable(bool skipOnPointerObservable);
}
