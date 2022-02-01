part of babylon;

/// class AbstractActionManager
@JS()
abstract class AbstractActionManager implements IDisposable {
  external bool get hasPointerTriggers;
  external bool get hasPickTriggers;
  external bool get HasTriggers;
  external bool get HasPickTriggers;
  external String get hoverCursor;
  external List<IAction> get actions;
  external bool get isRecursive;
  external set hoverCursor(String hoverCursor);
  external set actions(List<IAction> actions);
  external set isRecursive(bool isRecursive);
  external void dispose();
  external void processTrigger(num trigger, [IActionEvent evt]);
  external bool hasSpecificTriggers(List<num> triggers);
  external bool hasSpecificTriggers2(num triggerA, num triggerB);
  external bool hasSpecificTrigger(num trigger, [bool Function(dynamic parameter) parameterPredicate]);
  external dynamic serialize(String name);
  external IAction registerAction(IAction action);
  external bool unregisterAction(IAction action);
  external static bool HasSpecificTrigger(num trigger);
}
