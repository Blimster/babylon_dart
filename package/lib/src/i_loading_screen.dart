part of babylon_dart;

/// interface ILoadingScreen
@JS()
abstract class ILoadingScreen {
  // properties
  external void Function() displayLoadingUI;
  external void Function() hideLoadingUI;
  external String loadingUIBackgroundColor;
  external String loadingUIText;
}
