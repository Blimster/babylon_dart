part of babylon;

/// class EngineView
@JS()
class EngineView {
  external CanvasElement get target;
  external Camera get camera;
  external set target(CanvasElement target);
  external set camera(Camera camera);
}
