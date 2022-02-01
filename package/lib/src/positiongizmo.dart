part of babylon;

/// class PositionGizmo
@JS()
class PositionGizmo extends Gizmo {
  external PositionGizmo([UtilityLayerRenderer gizmoLayer, num thickness, GizmoManager gizmoManager]);
  external AbstractMesh get attachedMesh;
  external Node get attachedNode;
  external bool get isHovered;
  external bool get planarGizmoEnabled;
  external bool get updateGizmoRotationToMatchAttachedMesh;
  external num get snapDistance;
  external num get scaleRatio;
  external AxisDragGizmo get xGizmo;
  external AxisDragGizmo get yGizmo;
  external AxisDragGizmo get zGizmo;
  external PlaneDragGizmo get xPlaneGizmo;
  external PlaneDragGizmo get yPlaneGizmo;
  external PlaneDragGizmo get zPlaneGizmo;
  external set attachedMesh(AbstractMesh mesh);
  external set attachedNode(Node node);
  external set planarGizmoEnabled(bool value);
  external set updateGizmoRotationToMatchAttachedMesh(bool value);
  external set snapDistance(num value);
  external set scaleRatio(num value);
  external set xGizmo(AxisDragGizmo xGizmo);
  external set yGizmo(AxisDragGizmo yGizmo);
  external set zGizmo(AxisDragGizmo zGizmo);
  external set xPlaneGizmo(PlaneDragGizmo xPlaneGizmo);
  external set yPlaneGizmo(PlaneDragGizmo yPlaneGizmo);
  external set zPlaneGizmo(PlaneDragGizmo zPlaneGizmo);
  external void addToAxisCache(Mesh mesh, GizmoAxisCache cache);
  external void dispose();
  external void setCustomMesh(Mesh mesh);
}
