part of babylon;

@JS()
@anonymous
class PointerDragBehaviorOptions {
  external factory PointerDragBehaviorOptions({Vector3 dragAxis, Vector3 dragPlaneNormal});
  external Vector3 get dragAxis;
  external Vector3 get dragPlaneNormal;
}

/// class PointerDragBehavior
@JS()
class PointerDragBehavior implements Behavior<AbstractMesh> {
  external PointerDragBehavior([PointerDragBehaviorOptions options]);
  external PointerDragBehaviorOptions get options;
  external String get name;
  external AbstractMesh get attachedNode;
  external num get maxDragAngle;
  external num get currentDraggingPointerID;
  external Vector3 get lastDragPosition;
  external bool get dragging;
  external num get dragDeltaRatio;
  external bool get updateDragPlane;
  external bool get moveAttached;
  external bool get enabled;
  external bool get startAndReleaseDragOnPointerEvents;
  external bool get detachCameraControls;
  external bool get useObjectOrientationForDragging;
  external bool Function(Vector3 targetPosition) get validateDrag;
  external set options(PointerDragBehaviorOptions options);
  external set attachedNode(AbstractMesh attachedNode);
  external set maxDragAngle(num maxDragAngle);
  external set currentDraggingPointerID(num currentDraggingPointerID);
  external set lastDragPosition(Vector3 lastDragPosition);
  external set dragging(bool dragging);
  external set dragDeltaRatio(num dragDeltaRatio);
  external set updateDragPlane(bool updateDragPlane);
  external set moveAttached(bool moveAttached);
  external set enabled(bool enabled);
  external set startAndReleaseDragOnPointerEvents(bool startAndReleaseDragOnPointerEvents);
  external set detachCameraControls(bool detachCameraControls);
  external set useObjectOrientationForDragging(bool useObjectOrientationForDragging);
  external set validateDrag(bool Function(Vector3 targetPosition) validateDrag);
  external set name(String name);
  external void init();
  external void attach(AbstractMesh target);
  external void releaseDrag();
  external void startDrag([num pointerId, Ray fromRay, Vector3 startPickedPoint]);
  external void detach();
}
