part of babylon_dart;

/// class ShadowDepthWrapper
@JS()
class ShadowDepthWrapper {
  // methods
  external DrawWrapper? getEffect(SubMesh? subMesh, ShadowGenerator shadowGenerator, num passIdForDrawWrapper);
  external bool isReadyForSubMesh(SubMesh subMesh, List<String> defines, ShadowGenerator shadowGenerator, bool useInstances, num passIdForDrawWrapper);
  external void dispose();
}
