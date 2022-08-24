part of babylon_dart;

/// interface IOfflineProvider
@JS()
abstract class IOfflineProvider {
  // properties
  external bool enableSceneOffline;
  external bool enableTexturesOffline;
  // methods
  void open(void Function() successCallback, void Function() errorCallback);
  void loadImage(String url, ImageElement image);
  void loadFile(String url, void Function(Object data) sceneLoaded, [void Function(Object data) progressCallBack, void Function() errorCallback, bool useArrayBuffer]);
}
