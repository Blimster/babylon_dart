part of babylon;

/// class EffectFallbacks
@JS()
class EffectFallbacks implements IEffectFallbacks {
  external bool get hasMoreFallbacks;
  external set hasMoreFallbacks(bool hasMoreFallbacks);
  external void unBindMesh();
  external void addFallback(num rank, String define);
  external void addCPUSkinningFallback(num rank, AbstractMesh mesh);
  external String reduce(String currentDefines, Effect effect);
}
