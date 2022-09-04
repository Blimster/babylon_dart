part of babylon_dart;

/// class ActionManager
@JS()
class ActionManager extends AbstractActionManager {
  // properties
  external static final Object NothingTrigger;
  external static final Object OnPickTrigger;
  external static final Object OnLeftPickTrigger;
  external static final Object OnRightPickTrigger;
  external static final Object OnCenterPickTrigger;
  external static final Object OnPickDownTrigger;
  external static final Object OnDoublePickTrigger;
  external static final Object OnPickUpTrigger;
  external static final Object OnPickOutTrigger;
  external static final Object OnLongPressTrigger;
  external static final Object OnPointerOverTrigger;
  external static final Object OnPointerOutTrigger;
  external static final Object OnEveryFrameTrigger;
  external static final Object OnIntersectionEnterTrigger;
  external static final Object OnIntersectionExitTrigger;
  external static final Object OnKeyDownTrigger;
  external static final Object OnKeyUpTrigger;
  // methods
  external void dispose();
  external Scene getScene();
  external bool hasSpecificTriggers(List<num> triggers);
  external bool hasSpecificTriggers2(num triggerA, num triggerB);
  external bool hasSpecificTrigger(num trigger, [bool Function(Object parameter) parameterPredicate]);
  external IAction? registerAction(IAction action);
  external bool unregisterAction(IAction action);
  external void processTrigger(num trigger, [IActionEvent evt]);
  external Object serialize(String name);
  external static void Parse(Object parsedActions, AbstractMesh? object, Scene scene);
  external static String GetTriggerName(num trigger);
}
