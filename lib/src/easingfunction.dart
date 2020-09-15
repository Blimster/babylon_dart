part of babylon;

@JS()
class EasingFunction {
  num EASINGMODE_EASEIN;
  num EASINGMODE_EASEOUT;
  num EASINGMODE_EASEINOUT;
  external void setEasingMode(num easingMode);
  external num getEasingMode();
  external num easeInCore(num gradient);
  external num ease(num gradient);
}

