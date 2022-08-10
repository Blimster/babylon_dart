part of babylon_dart;

/// interface ICameraInput
@JS()
abstract class ICameraInput<[object Object]> {
  // properties
  external TCamera? camera;
  external void Function() checkInputs;
  // methods
  String getClassName();
  String getSimpleName();
  void attachControl([bool noPreventDefault]);
  void detachControl();
}
