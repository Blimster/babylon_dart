part of babylon_dart;

/// interface IAction
@JS()
abstract class IAction {
  // properties
  external num trigger;
  external Object triggerOptions;
  // methods
  Object getTriggerParameter();
  Object serialize(Object parent);
  IAction then(IAction action);
}
