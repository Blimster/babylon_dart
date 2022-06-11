part of babylon_dart;

/// class AbstractActionManager
@JS()
abstract class AbstractActionManager implements IDisposable {
  // properties
  external AbstractActionManagerTriggers Triggers;
  external String hoverCursor;
  external List<IAction> actions;
  external bool isRecursive;
  // methods
  external void dispose();
  external void processTrigger(num trigger, [IActionEvent evt]);
  external bool hasSpecificTriggers(List<num> triggers);
  external bool hasSpecificTriggers2(num triggerA, num triggerB);
  external bool hasSpecificTrigger(num trigger, [bool Function(Object parameter) parameterPredicate]);
  external Object serialize(String name);
  external IAction? registerAction(IAction action);
  external bool unregisterAction(IAction action);
  external static bool HasSpecificTrigger(num trigger);
}

@JS()
@anonymous
class AbstractActionManagerTriggers {
}
