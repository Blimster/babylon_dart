part of babylon;

/// class SixDofDragBehavior
@JS()
class SixDofDragBehavior implements Behavior<Mesh> {
  external SixDofDragBehavior();
  external String get name;
  external dynamic get zDragFactor;
  external bool get rotateDraggedObject;
  external bool get dragging;
  external num get dragDeltaRatio;
  external num get currentDraggingPointerID;
  external bool get detachCameraControls;
  external Observable<void> get onDragObservable;
  external set zDragFactor(dynamic zDragFactor);
  external set rotateDraggedObject(bool rotateDraggedObject);
  external set dragging(bool dragging);
  external set dragDeltaRatio(num dragDeltaRatio);
  external set currentDraggingPointerID(num currentDraggingPointerID);
  external set detachCameraControls(bool detachCameraControls);
  external set onDragObservable(Observable<void> onDragObservable);
  external set name(String name);
  external void init();
  external void attach(Mesh target);
  external void detach();
}
