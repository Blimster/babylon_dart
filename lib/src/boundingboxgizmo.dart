part of babylon;

/// class BoundingBoxGizmo
@JS()
class BoundingBoxGizmo extends Gizmo {
  external BoundingBoxGizmo([Color3 color, UtilityLayerRenderer gizmoLayer]);
  external bool get ignoreChildren;
  external bool Function(AbstractMesh abstractMesh) get includeChildPredicate;
  external num get rotationSphereSize;
  external num get scaleBoxSize;
  external bool get fixedDragMeshScreenSize;
  external bool get fixedDragMeshBoundsSize;
  external num get fixedDragMeshScreenSizeDistanceFactor;
  external Vector3 get scalePivot;
  external dynamic get pointerDragBehavior;
  external dynamic get coloredMaterial;
  external dynamic get hoverColoredMaterial;
  external set ignoreChildren(bool ignoreChildren);
  external set includeChildPredicate(bool Function(AbstractMesh abstractMesh) includeChildPredicate);
  external set rotationSphereSize(num rotationSphereSize);
  external set scaleBoxSize(num scaleBoxSize);
  external set fixedDragMeshScreenSize(bool fixedDragMeshScreenSize);
  external set fixedDragMeshBoundsSize(bool fixedDragMeshBoundsSize);
  external set fixedDragMeshScreenSizeDistanceFactor(num fixedDragMeshScreenSizeDistanceFactor);
  external set scalePivot(Vector3 scalePivot);
  external set pointerDragBehavior(dynamic pointerDragBehavior);
  external set coloredMaterial(dynamic coloredMaterial);
  external set hoverColoredMaterial(dynamic hoverColoredMaterial);
  external void setColor(Color3 color);
  external void updateBoundingBox();
  external void setEnabledRotationAxis(String axis);
  external void setEnabledScaling(bool enable, [bool homogeneousScaling]);
  external void enableDragBehavior();
  external void dispose();
  external static Mesh MakeNotPickableAndWrapInBoundingBox(Mesh mesh);
  external void setCustomMesh(Mesh mesh);
}
