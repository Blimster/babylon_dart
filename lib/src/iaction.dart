part of babylon;

/// interface IAction
@JS()
abstract class IAction {
  num trigger;
  dynamic triggerOptions;
  external dynamic getTriggerParameter();
  external dynamic serialize(dynamic parent);
  external IAction then(IAction action);
}
