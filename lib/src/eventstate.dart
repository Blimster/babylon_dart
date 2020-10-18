part of babylon;

/// class EventState
@JS()
class EventState {
  external EventState(num mask, [bool skipNextObservers, dynamic target, dynamic currentTarget]);
  external bool get skipNextObservers;
  external num get mask;
  external dynamic get target;
  external dynamic get currentTarget;
  external dynamic get lastReturnValue;
  external set skipNextObservers(bool skipNextObservers);
  external set mask(num mask);
  external set target(dynamic target);
  external set currentTarget(dynamic currentTarget);
  external set lastReturnValue(dynamic lastReturnValue);
  external EventState initalize(num mask, [bool skipNextObservers, dynamic target, dynamic currentTarget]);
}
