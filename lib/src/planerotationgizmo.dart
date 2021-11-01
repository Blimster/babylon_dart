part of babylon;

/// class PlaneRotationGizmo
@JS()
class PlaneRotationGizmo extends Gizmo {
  external PlaneRotationGizmo(Vector3 planeNormal, [Color3 color, UtilityLayerRenderer gizmoLayer, num tessellation, RotationGizmo parent, bool useEulerRotation, num thickness]);
  external bool get isEnabled;
  external PointerDragBehavior get dragBehavior;
  external num get snapDistance;
  external dynamic get setupRotationCircle;
  external dynamic get updateRotationPath;
  external dynamic get updateRotationCircle;
  external set isEnabled(bool value);
  external set dragBehavior(PointerDragBehavior dragBehavior);
  external set snapDistance(num snapDistance);
  external set setupRotationCircle(dynamic setupRotationCircle);
  external set updateRotationPath(dynamic updateRotationPath);
  external set updateRotationCircle(dynamic updateRotationCircle);
  external void dispose();
}
