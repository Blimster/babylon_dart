part of babylon;

/// interface IAction
@JS()
abstract class IAction {
  external num trigger;
  external dynamic triggerOptions;
  dynamic getTriggerParameter();
  dynamic serialize(dynamic parent);
  IAction then(IAction action);
}
