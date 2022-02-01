part of babylon;

/// interface GizmoAxisCache
@JS()
abstract class GizmoAxisCache {
  external List<Mesh> gizmoMeshes;
  external List<Mesh> colliderMeshes;
  external StandardMaterial material;
  external StandardMaterial hoverMaterial;
  external StandardMaterial disableMaterial;
  external bool active;
}
