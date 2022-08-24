part of babylon_dart;

/// class CameraInputsManager
@JS()
class CameraInputsManager<TCamera extends Camera> {
  // properties
  external CameraInputsMap<TCamera> attached;
  external bool attachedToElement;
  external bool noPreventDefault;
  external TCamera camera;
  external void Function() checkInputs;
  // methods
  external void add(ICameraInput<TCamera> input);
  external void remove(ICameraInput<TCamera> inputToRemove);
  external void removeByType(String inputType);
  external void attachInput(ICameraInput<TCamera> input);
  external void attachElement([bool noPreventDefault]);
  external void detachElement([bool disconnect]);
  external void rebuildInputCheck();
  external void clear();
  external void serialize(Object serializedCamera);
  external void parse(Object parsedCamera);
}
