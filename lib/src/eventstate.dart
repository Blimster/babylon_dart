part of babylon;

@JS()
class EventState {
  external EventState(num mask, [bool skipNextObservers, dynamic target, dynamic currentTarget]);
  bool skipNextObservers;
  num mask;
  dynamic target;
  dynamic currentTarget;
  dynamic lastReturnValue;
  external EventState initalize(num mask, [bool skipNextObservers, dynamic target, dynamic currentTarget]);
}

