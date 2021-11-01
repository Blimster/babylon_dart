part of babylon;

/// class ScaleGizmo
@JS()
class ScaleGizmo extends Gizmo {
  external ScaleGizmo([UtilityLayerRenderer gizmoLayer, num thickness, GizmoManager gizmoManager]);
  external AbstractMesh get attachedMesh;
  external Node get attachedNode;
  external bool get isHovered;
  external bool get updateGizmoRotationToMatchAttachedMesh;
  external num get snapDistance;
  external num get scaleRatio;
  external num get sensitivity;
  external AxisScaleGizmo get xGizmo;
  external AxisScaleGizmo get yGizmo;
  external AxisScaleGizmo get zGizmo;
  external AxisScaleGizmo get uniformScaleGizmo;
  external set attachedMesh(AbstractMesh mesh);
  external set attachedNode(Node node);
  external set updateGizmoRotationToMatchAttachedMesh(bool value);
  external set snapDistance(num value);
  external set scaleRatio(num value);
  external set sensitivity(num value);
  external set xGizmo(AxisScaleGizmo xGizmo);
  external set yGizmo(AxisScaleGizmo yGizmo);
  external set zGizmo(AxisScaleGizmo zGizmo);
  external set uniformScaleGizmo(AxisScaleGizmo uniformScaleGizmo);
  external void addToAxisCache(Mesh mesh, GizmoAxisCache cache);
  external void dispose();
}
