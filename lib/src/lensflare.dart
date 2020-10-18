part of babylon;

/// class LensFlare
@JS()
class LensFlare {
  external LensFlare(num size, num position, Color3 color, String imgUrl, LensFlareSystem system);
  external num get size;
  external num get position;
  external Color3 get color;
  external Texture get texture;
  external num get alphaMode;
  external set size(num size);
  external set position(num position);
  external set color(Color3 color);
  external set texture(Texture texture);
  external set alphaMode(num alphaMode);
  external static LensFlare AddFlare(num size, num position, Color3 color, String imgUrl, LensFlareSystem system);
  external void dispose();
}
