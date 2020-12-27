part of babylon;

/// interface IEffectFallbacks
@JS()
abstract class IEffectFallbacks {
  bool hasMoreFallbacks;
  String reduce(String currentDefines, Effect effect);
  void unBindMesh();
}
