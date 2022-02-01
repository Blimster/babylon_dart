part of babylon;

/// class BackEase
@JS()
class BackEase extends EasingFunction implements IEasingFunction {
  external BackEase([num amplitude]);
  external num get amplitude;
  external set amplitude(num amplitude);
  external num easeInCore(num gradient);
}
