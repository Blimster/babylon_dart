part of babylon_dart;

/// interface ICanvas
@JS()
abstract class ICanvas {
  // properties
  external num width;
  external num height;
  // methods
  ICanvasRenderingContext getContext(String contextType, [Object contextAttributes]);
  String toDataURL(String mime);
}
