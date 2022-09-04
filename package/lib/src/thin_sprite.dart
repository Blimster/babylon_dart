part of babylon_dart;

/// class ThinSprite
@JS()
class ThinSprite {
  // properties
  external num cellIndex;
  external String cellRef;
  external IVector3Like position;
  external IColor4Like color;
  external num width;
  external num height;
  external num angle;
  external bool invertU;
  external bool invertV;
  external bool isVisible;
  // methods
  external void playAnimation(num from, num to, bool loop, num delay, void Function()? onAnimationEnd);
  external void stopAnimation();
}
