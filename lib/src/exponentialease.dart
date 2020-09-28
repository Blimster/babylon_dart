part of babylon;

@JS()
class ExponentialEase extends EasingFunction {
  external ExponentialEase([num exponent]);
  num exponent;
  external num easeInCore(num gradient);
}

