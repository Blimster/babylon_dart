part of babylon;

/// class Sprite
@JS()
class Sprite extends ThinSprite implements IAnimatable {
  external Sprite(String name, ISpriteManager manager);
  external num get size;
  external ISpriteManager get manager;
  external num get fromIndex;
  external num get toIndex;
  external bool get loopAnimation;
  external num get delay;
  external String get name;
  external bool get disposeWhenFinishedAnimating;
  external List<Animation> get animations;
  external bool get isPickable;
  external bool get useAlphaForPicking;
  external ActionManager get actionManager;
  external Observable<Sprite> get onDisposeObservable;
  external num get uniqueId;
  external set size(num value);
  external set fromIndex(num value);
  external set toIndex(num value);
  external set loopAnimation(bool value);
  external set delay(num value);
  external set name(String name);
  external set disposeWhenFinishedAnimating(bool disposeWhenFinishedAnimating);
  external set animations(List<Animation> animations);
  external set isPickable(bool isPickable);
  external set useAlphaForPicking(bool useAlphaForPicking);
  external set actionManager(ActionManager actionManager);
  external set onDisposeObservable(Observable<Sprite> onDisposeObservable);
  external set uniqueId(num uniqueId);
  external String getClassName();
  external void playAnimation(num from, num to, bool loop, num delay, void Function() onAnimationEnd);
  external void dispose();
  external dynamic serialize();
}
