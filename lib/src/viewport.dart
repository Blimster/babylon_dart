part of babylon;

@JS()
class Viewport {
  external Viewport(num x, num y, num width, num height);
  num x;
  num y;
  num width;
  num height;
  external Viewport toGlobal(num renderWidth, num renderHeight);
  external Viewport toGlobalToRef(num renderWidth, num renderHeight, Viewport ref);
  external Viewport clone();
}
