part of babylon;

/// interface ILoadingScreen
@JS()
abstract class ILoadingScreen {
  void Function() displayLoadingUI;
  void Function() hideLoadingUI;
  String loadingUIBackgroundColor;
  String loadingUIText;
}
