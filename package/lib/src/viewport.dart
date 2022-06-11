part of babylon_dart;

/// class Viewport
@JS()
class Viewport {
  // properties
  external num x;
  external num y;
  external num width;
  external num height;
  // methods
  external Viewport toGlobal(num renderWidth, num renderHeight);
  external Viewport toGlobalToRef(num renderWidth, num renderHeight, Viewport ref);
  external Viewport clone();
}
