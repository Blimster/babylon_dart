part of babylon_dart;

/// class DrawWrapper
@JS()
class DrawWrapper {
  // properties
  external Effect? effect;
  external Object? defines;
  external IMaterialContext materialContext;
  external IDrawContext drawContext;
  // methods
  external static bool IsWrapper(Object effect);
  external static Effect? GetEffect(Object effect);
  external void setEffect(Effect? effect, [Object? defines, bool resetContext]);
  external void dispose();
}
