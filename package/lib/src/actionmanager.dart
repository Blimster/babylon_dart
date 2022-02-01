part of babylon;

/// class ActionManager
@JS()
class ActionManager extends AbstractActionManager {
  external ActionManager(Scene scene);
  external bool get hasPointerTriggers;
  external bool get hasPickTriggers;
  external static num get NothingTrigger;
  external static num get OnPickTrigger;
  external static num get OnLeftPickTrigger;
  external static num get OnRightPickTrigger;
  external static num get OnCenterPickTrigger;
  external static num get OnPickDownTrigger;
  external static num get OnDoublePickTrigger;
  external static num get OnPickUpTrigger;
  external static num get OnPickOutTrigger;
  external static num get OnLongPressTrigger;
  external static num get OnPointerOverTrigger;
  external static num get OnPointerOutTrigger;
  external static num get OnEveryFrameTrigger;
  external static num get OnIntersectionEnterTrigger;
  external static num get OnIntersectionExitTrigger;
  external static num get OnKeyDownTrigger;
  external static num get OnKeyUpTrigger;
  external void dispose();
  external Scene getScene();
  external bool hasSpecificTriggers(List<num> triggers);
  external bool hasSpecificTriggers2(num triggerA, num triggerB);
  external bool hasSpecificTrigger(num trigger, [bool Function(dynamic parameter) parameterPredicate]);
  external IAction registerAction(IAction action);
  external bool unregisterAction(IAction action);
  external void processTrigger(num trigger, [IActionEvent evt]);
  external dynamic serialize(String name);
  external static void Parse(dynamic parsedActions, AbstractMesh object, Scene scene);
  external static String GetTriggerName(num trigger);
}
