part of babylon_dart;

/// interface ICameraInput
@JS()
abstract class ICameraInput<TCamera extends Camera> {
  // properties
  external TCamera? camera;
  external void Function() checkInputs;
  // methods
  String getClassName();
  String getSimpleName();
  void attachControl([bool noPreventDefault]);
  void detachControl();
}
