part of babylon_dart;

/// class PrePassRenderer
@JS()
class PrePassRenderer {
  // properties
  external List<AbstractMesh> excludedSkinnedMesh;
  external List<Material> excludedMaterials;
  external num mrtCount;
  external PrePassRenderTarget defaultRT;
  external bool doNotUseGeometryRendererFallback;
  external List<PrePassRenderTarget> renderTargets;
  external bool disableGammaTransform;
  // methods
  external num getIndex(num type);
  external PrePassRenderTarget getRenderTarget();
  external void bindAttachmentsForEffect(Effect effect, SubMesh subMesh);
  external void restoreAttachments();
  external PrePassEffectConfiguration addEffectConfiguration(PrePassEffectConfiguration cfg);
  external void markAsDirty();
  external void dispose();
}
