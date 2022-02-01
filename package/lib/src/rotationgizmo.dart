part of babylon;

/// class RotationGizmo
@JS()
class RotationGizmo extends Gizmo {
  external RotationGizmo([UtilityLayerRenderer gizmoLayer, num tessellation, bool useEulerRotation, num thickness, GizmoManager gizmoManager]);
  external AbstractMesh get attachedMesh;
  external Node get attachedNode;
  external bool get isHovered;
  external bool get updateGizmoRotationToMatchAttachedMesh;
  external num get snapDistance;
  external num get scaleRatio;
  external PlaneRotationGizmo get xGizmo;
  external PlaneRotationGizmo get yGizmo;
  external PlaneRotationGizmo get zGizmo;
  external set attachedMesh(AbstractMesh mesh);
  external set attachedNode(Node node);
  external set updateGizmoRotationToMatchAttachedMesh(bool value);
  external set snapDistance(num value);
  external set scaleRatio(num value);
  external set xGizmo(PlaneRotationGizmo xGizmo);
  external set yGizmo(PlaneRotationGizmo yGizmo);
  external set zGizmo(PlaneRotationGizmo zGizmo);
  external void addToAxisCache(Mesh mesh, GizmoAxisCache cache);
  external void dispose();
  external void setCustomMesh(Mesh mesh);
}
