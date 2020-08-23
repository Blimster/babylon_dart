part of babylon;

@JS()
class Engine {
  external Engine(CanvasElement canvas, bool antialias);
  external void runRenderLoop(void Function() v);
  external void resize();
  external void enterFullscreen();
  external void exitFullscreen();
  external bool get isFullscreen;
  external void enterPointerlock();
  external void exitPointerlock();
  external bool get isPointerLock;
}

extension EngineExtension on Engine {
  void runRenderLoopAllowInterop(void Function() f) => runRenderLoop(allowInterop(f));
}
