part of babylon;

/// class AxisDragGizmo
@JS()
class AxisDragGizmo extends Gizmo {
  external AxisDragGizmo(Vector3 dragAxis, [Color3 color, UtilityLayerRenderer gizmoLayer, PositionGizmo parent, num thickness]);
  external bool get isEnabled;
  external PointerDragBehavior get dragBehavior;
  external num get snapDistance;
  external set isEnabled(bool value);
  external set dragBehavior(PointerDragBehavior dragBehavior);
  external set snapDistance(num snapDistance);
  external void dispose();
}
