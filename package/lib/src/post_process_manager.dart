part of babylon_dart;

/// class PostProcessManager
@JS()
class PostProcessManager {
  // methods
  external void directRender(List<PostProcess> postProcesses, [RenderTargetWrapper? targetTexture, bool forceFullscreenViewport, num faceIndex, num lodLevel, bool doNotBindFrambuffer]);
  external void dispose();
}
