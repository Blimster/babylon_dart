part of babylon;

@JS()
@anonymous
class GizmoManagerGizmos {
  external factory GizmoManagerGizmos({PositionGizmo positionGizmo, RotationGizmo rotationGizmo, ScaleGizmo scaleGizmo, BoundingBoxGizmo boundingBoxGizmo});
  external PositionGizmo get positionGizmo;
  external RotationGizmo get rotationGizmo;
  external ScaleGizmo get scaleGizmo;
  external BoundingBoxGizmo get boundingBoxGizmo;
}

/// class GizmoManager
@JS()
class GizmoManager implements IDisposable {
  external GizmoManager(Scene scene, [num thickness, UtilityLayerRenderer utilityLayer, UtilityLayerRenderer keepDepthUtilityLayer]);
  external UtilityLayerRenderer get keepDepthUtilityLayer;
  external UtilityLayerRenderer get utilityLayer;
  external bool get isHovered;
  external bool get positionGizmoEnabled;
  external bool get rotationGizmoEnabled;
  external bool get scaleGizmoEnabled;
  external bool get boundingBoxGizmoEnabled;
  external dynamic get scene;
  external GizmoManagerGizmos get gizmos;
  external bool get clearGizmoOnEmptyPointerEvent;
  external Observable<AbstractMesh> get onAttachedToMeshObservable;
  external Observable<Node> get onAttachedToNodeObservable;
  external SixDofDragBehavior get boundingBoxDragBehavior;
  external List<AbstractMesh> get attachableMeshes;
  external List<Node> get attachableNodes;
  external bool get usePointerToAttachGizmos;
  external set positionGizmoEnabled(bool value);
  external set rotationGizmoEnabled(bool value);
  external set scaleGizmoEnabled(bool value);
  external set boundingBoxGizmoEnabled(bool value);
  external set scene(dynamic scene);
  external set gizmos(GizmoManagerGizmos gizmos);
  external set clearGizmoOnEmptyPointerEvent(bool clearGizmoOnEmptyPointerEvent);
  external set onAttachedToMeshObservable(Observable<AbstractMesh> onAttachedToMeshObservable);
  external set onAttachedToNodeObservable(Observable<Node> onAttachedToNodeObservable);
  external set boundingBoxDragBehavior(SixDofDragBehavior boundingBoxDragBehavior);
  external set attachableMeshes(List<AbstractMesh> attachableMeshes);
  external set attachableNodes(List<Node> attachableNodes);
  external set usePointerToAttachGizmos(bool usePointerToAttachGizmos);
  external void attachToMesh(AbstractMesh mesh);
  external void attachToNode(Node node);
  external void addToAxisCache(Map<Mesh, GizmoAxisCache> gizmoAxisCache);
  external void dispose();
}
