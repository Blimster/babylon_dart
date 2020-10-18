part of babylon;

/// class Sprite
@JS()
class Sprite {
  external num get size;
  external String get name;
  external Vector3 get position;
  external Color4 get color;
  external num get width;
  external num get height;
  external num get angle;
  external num get cellIndex;
  external String get cellRef;
  external num get invertU;
  external num get invertV;
  external bool get disposeWhenFinishedAnimating;
  external List<Animation> get animations;
  external bool get isPickable;
  external bool get isVisible;
  external set size(num value);
  external set name(String name);
  external set position(Vector3 position);
  external set color(Color4 color);
  external set width(num width);
  external set height(num height);
  external set angle(num angle);
  external set cellIndex(num cellIndex);
  external set cellRef(String cellRef);
  external set invertU(num invertU);
  external set invertV(num invertV);
  external set disposeWhenFinishedAnimating(bool disposeWhenFinishedAnimating);
  external set animations(List<Animation> animations);
  external set isPickable(bool isPickable);
  external set isVisible(bool isVisible);
  external void stopAnimation();
  external void dispose();
}
