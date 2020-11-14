part of babylon;

/// class ThinSprite
@JS()
class ThinSprite {
  external ThinSprite();
  external bool get animationStarted;
  external num get fromIndex;
  external num get toIndex;
  external bool get loopAnimation;
  external num get delay;
  external num get cellIndex;
  external String get cellRef;
  external IVector3Like get position;
  external IColor4Like get color;
  external num get width;
  external num get height;
  external num get angle;
  external bool get invertU;
  external bool get invertV;
  external bool get isVisible;
  external set cellIndex(num cellIndex);
  external set cellRef(String cellRef);
  external set position(IVector3Like position);
  external set color(IColor4Like color);
  external set width(num width);
  external set height(num height);
  external set angle(num angle);
  external set invertU(bool invertU);
  external set invertV(bool invertV);
  external set isVisible(bool isVisible);
  external void playAnimation(num from, num to, bool loop, num delay, void Function() onAnimationEnd);
  external void stopAnimation();
}
