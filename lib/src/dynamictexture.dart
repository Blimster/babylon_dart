part of babylon;

/// class DynamicTexture
@JS()
class DynamicTexture extends Texture {
  external DynamicTexture(String name, dynamic options, dynamic scene, bool generateMipMaps, [num samplingMode, num format, bool invertY]);
  external bool get canRescale;
  external String getClassName();
  external void scale(num ratio);
  external void scaleTo(num width, num height);
  external CanvasRenderingContext2D getContext();
  external void clear();
  external void update([bool invertY, bool premulAlpha]);
  external void drawText(String text, dynamic x, dynamic y, String font, dynamic color, String clearColor, [bool invertY, bool update]);
  external DynamicTexture clone();
  external dynamic serialize();
}
