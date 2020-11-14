part of babylon;

/// interface IOfflineProvider
@JS()
abstract class IOfflineProvider {
  bool enableSceneOffline;
  bool enableTexturesOffline;
  void open(void Function() successCallback, void Function() errorCallback);
  void loadImage(String url, ImageElement image);
  void loadFile(String url, void Function(dynamic data) sceneLoaded, [void Function(dynamic data) progressCallBack, void Function() errorCallback, bool useArrayBuffer]);
}
