part of babylon_dart;

/// class Sprite
@JS()
class Sprite extends ThinSprite implements IAnimatable {
  // properties
  external String name;
  external Vector3 position;
  external Color4 color;
  external bool disposeWhenFinishedAnimating;
  external List<Animation>? animations;
  external bool isPickable;
  external bool useAlphaForPicking;
  external ActionManager? actionManager;
  external Observable<Sprite> onDisposeObservable;
  external num uniqueId;
  // methods
  external String getClassName();
  external void playAnimation(num from, num to, bool loop, num delay, [void Function()? onAnimationEnd]);
  external void dispose();
  external Object serialize();
  external static Sprite Parse(Object parsedSprite, SpriteManager manager);
}
