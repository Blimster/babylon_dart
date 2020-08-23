part of babylon;

@JS()
class Camera {}

@JS()
class ArcRotateCamera extends Camera {
  external ArcRotateCamera(String name, num alpha, num beta, num radius, Vector3 target, Scene scene);
  external void attachControl(HtmlElement element, bool noPreventDefault);
  external set lockedTarget(dynamic v);
}
