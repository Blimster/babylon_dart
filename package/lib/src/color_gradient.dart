part of babylon_dart;

/// class ColorGradient
@JS()
class ColorGradient implements IValueGradient {
  // properties
  external num gradient;
  external Color4 color1;
  external Color4? color2;
  // methods
  external void getColorToRef(Color4 result);
}
