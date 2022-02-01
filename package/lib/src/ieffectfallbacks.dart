part of babylon;

/// interface IEffectFallbacks
@JS()
abstract class IEffectFallbacks {
  external bool hasMoreFallbacks;
  String reduce(String currentDefines, Effect effect);
  void unBindMesh();
}
