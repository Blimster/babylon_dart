part of babylon_dart;

/// class EventState
@JS()
class EventState {
  // properties
  external bool skipNextObservers;
  external num mask;
  external Object target;
  external Object currentTarget;
  external Object lastReturnValue;
  external Object userInfo;
  // methods
  external EventState initialize(num mask, [bool skipNextObservers, Object target, Object currentTarget]);
}
