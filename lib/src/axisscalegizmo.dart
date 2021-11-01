part of babylon;

/// class AxisScaleGizmo
@JS()
class AxisScaleGizmo extends Gizmo {
  external AxisScaleGizmo(Vector3 dragAxis, [Color3 color, UtilityLayerRenderer gizmoLayer, ScaleGizmo parent, num thickness]);
  external bool get isEnabled;
  external PointerDragBehavior get dragBehavior;
  external num get snapDistance;
  external bool get uniformScaling;
  external num get sensitivity;
  external set isEnabled(bool value);
  external set dragBehavior(PointerDragBehavior dragBehavior);
  external set snapDistance(num snapDistance);
  external set uniformScaling(bool uniformScaling);
  external set sensitivity(num sensitivity);
  external void dispose();
  external void setCustomMesh(Mesh mesh);
}
