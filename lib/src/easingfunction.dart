part of babylon;

/// class EasingFunction
@JS()
class EasingFunction implements IEasingFunction {
  external static num get EASINGMODE_EASEIN;
  external static num get EASINGMODE_EASEOUT;
  external static num get EASINGMODE_EASEINOUT;
  external void setEasingMode(num easingMode);
  external num getEasingMode();
  external num easeInCore(num gradient);
  external num ease(num gradient);
}
