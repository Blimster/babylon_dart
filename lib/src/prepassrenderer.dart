part of babylon;

/// class PrePassRenderer
@JS()
class PrePassRenderer {
  external PrePassRenderer(Scene scene);
  external bool get enabled;
  external num get samples;
  external bool get useGeometryBufferFallback;
  external bool get isSupported;
  external List<AbstractMesh> get excludedSkinnedMesh;
  external List<Material> get excludedMaterials;
  external num get mrtCount;
  external MultiRenderTarget get prePassRT;
  external ImageProcessingPostProcess get imageProcessingPostProcess;
  external bool get disableGammaTransform;
  external set samples(num n);
  external set useGeometryBufferFallback(bool value);
  external set excludedSkinnedMesh(List<AbstractMesh> excludedSkinnedMesh);
  external set excludedMaterials(List<Material> excludedMaterials);
  external set mrtCount(num mrtCount);
  external set prePassRT(MultiRenderTarget prePassRT);
  external set imageProcessingPostProcess(ImageProcessingPostProcess imageProcessingPostProcess);
  external set disableGammaTransform(bool disableGammaTransform);
  external void bindAttachmentsForEffect(Effect effect, SubMesh subMesh);
  external void restoreAttachments();
  external void clear();
  external PrePassEffectConfiguration addEffectConfiguration(PrePassEffectConfiguration cfg);
  external num getIndex(num type);
  external void markAsDirty();
  external void dispose();
}
