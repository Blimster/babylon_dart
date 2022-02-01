part of babylon;

/// interface ILoadingScreen
@JS()
abstract class ILoadingScreen {
  external void Function() displayLoadingUI;
  external void Function() hideLoadingUI;
  external String loadingUIBackgroundColor;
  external String loadingUIText;
}
