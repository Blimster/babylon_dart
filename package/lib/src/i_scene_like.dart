part of babylon_dart;

/// interface ISceneLike
@JS()
abstract class ISceneLike {
  // properties
  external IOfflineProvider offlineProvider;
  // methods
  void addPendingData(Object data);
  void removePendingData(Object data);
}
