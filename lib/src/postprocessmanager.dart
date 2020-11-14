part of babylon;

/// class PostProcessManager
@JS()
class PostProcessManager {
  external PostProcessManager(Scene scene);
  external void directRender(List<PostProcess> postProcesses, [InternalTexture targetTexture, bool forceFullscreenViewport, num faceIndex, num lodLevel, bool doNotBindFrambuffer]);
  external void dispose();
}
