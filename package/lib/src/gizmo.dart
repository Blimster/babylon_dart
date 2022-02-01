part of babylon;

/// class Gizmo
@JS()
class Gizmo implements IDisposable {
  external Gizmo();
  external Gizmo.args([UtilityLayerRenderer gizmoLayer]);
  external num get scaleRatio;
  external bool get isHovered;
  external AbstractMesh get attachedMesh;
  external Node get attachedNode;
  external bool get updateGizmoRotationToMatchAttachedMesh;
  external UtilityLayerRenderer get gizmoLayer;
  external bool get updateGizmoPositionToMatchAttachedMesh;
  external bool get updateScale;
  external set scaleRatio(num value);
  external set attachedMesh(AbstractMesh value);
  external set attachedNode(Node value);
  external set updateGizmoRotationToMatchAttachedMesh(bool value);
  external set gizmoLayer(UtilityLayerRenderer gizmoLayer);
  external set updateGizmoPositionToMatchAttachedMesh(bool updateGizmoPositionToMatchAttachedMesh);
  external set updateScale(bool updateScale);
  external void setCustomMesh(Mesh mesh);
  external static Observer<PointerInfo> GizmoAxisPointerObserver(UtilityLayerRenderer gizmoLayer, Map<Mesh, GizmoAxisCache> gizmoAxisCache);
  external void dispose();
}
