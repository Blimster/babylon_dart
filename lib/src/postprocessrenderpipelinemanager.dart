part of babylon;

/// class PostProcessRenderPipelineManager
@JS()
class PostProcessRenderPipelineManager {
  external PostProcessRenderPipelineManager();
  external List<PostProcessRenderPipeline> get supportedPipelines;
  external void addPipeline(PostProcessRenderPipeline renderPipeline);
  external void attachCamerasToRenderPipeline(String renderPipelineName, dynamic cameras, [bool unique]);
  external void detachCamerasFromRenderPipeline(String renderPipelineName, dynamic cameras);
  external void enableEffectInPipeline(String renderPipelineName, String renderEffectName, dynamic cameras);
  external void disableEffectInPipeline(String renderPipelineName, String renderEffectName, dynamic cameras);
  external void update();
  external void dispose();
}
