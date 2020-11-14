part of babylon;

/// interface IAction
@JS()
abstract class IAction {
  num trigger;
  dynamic triggerOptions;
  dynamic getTriggerParameter();
  dynamic serialize(dynamic parent);
  IAction then(IAction action);
}
