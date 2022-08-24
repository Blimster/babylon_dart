part of babylon_dart;

/// interface IEffectFallbacks
@JS()
abstract class IEffectFallbacks {
  // properties
  external bool hasMoreFallbacks;
  // methods
  String reduce(String currentDefines, Effect effect);
  void unBindMesh();
}
