part of babylon;

/// class PlaneDragGizmo
@JS()
class PlaneDragGizmo extends Gizmo {
  external PlaneDragGizmo(Vector3 dragPlaneNormal, [Color3 color, UtilityLayerRenderer gizmoLayer, PositionGizmo parent]);
  external bool get isEnabled;
  external PointerDragBehavior get dragBehavior;
  external num get snapDistance;
  external set isEnabled(bool value);
  external set dragBehavior(PointerDragBehavior dragBehavior);
  external set snapDistance(num snapDistance);
  external void dispose();
}
