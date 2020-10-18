part of babylon;

/// class Viewport
@JS()
class Viewport {
  external Viewport(num x, num y, num width, num height);
  external num get x;
  external num get y;
  external num get width;
  external num get height;
  external set x(num x);
  external set y(num y);
  external set width(num width);
  external set height(num height);
  external Viewport toGlobal(num renderWidth, num renderHeight);
  external Viewport toGlobalToRef(num renderWidth, num renderHeight, Viewport ref);
  external Viewport clone();
}
