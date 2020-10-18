part of babylon;

/// class ExponentialEase
@JS()
class ExponentialEase extends EasingFunction implements IEasingFunction {
  external ExponentialEase([num exponent]);
  external num get exponent;
  external set exponent(num exponent);
  external num easeInCore(num gradient);
}
