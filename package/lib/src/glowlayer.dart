part of babylon;

/// class GlowLayer
@JS()
class GlowLayer extends EffectLayer {
  external GlowLayer(String name, Scene scene, [IGlowLayerOptions options]);
  external num get blurKernelSize;
  external num get intensity;
  external static String get EffectName;
  external static num get DefaultBlurKernelSize;
  external static num get DefaultTextureRatio;
  external void Function(Mesh mesh, SubMesh subMesh, Material material, Color4 result) get customEmissiveColorSelector;
  external Texture Function(Mesh mesh, SubMesh subMesh, Material material) get customEmissiveTextureSelector;
  external set blurKernelSize(num value);
  external set intensity(num value);
  external static set DefaultBlurKernelSize(num DefaultBlurKernelSize);
  external static set DefaultTextureRatio(num DefaultTextureRatio);
  external set customEmissiveColorSelector(void Function(Mesh mesh, SubMesh subMesh, Material material, Color4 result) customEmissiveColorSelector);
  external set customEmissiveTextureSelector(Texture Function(Mesh mesh, SubMesh subMesh, Material material) customEmissiveTextureSelector);
  external String getEffectName();
  external bool isReady(SubMesh subMesh, bool useInstances);
  external bool needStencil();
  external void addExcludedMesh(Mesh mesh);
  external void removeExcludedMesh(Mesh mesh);
  external void addIncludedOnlyMesh(Mesh mesh);
  external void removeIncludedOnlyMesh(Mesh mesh);
  external bool hasMesh(AbstractMesh mesh);
  external void referenceMeshToUseItsOwnMaterial(AbstractMesh mesh);
  external void unReferenceMeshFromUsingItsOwnMaterial(AbstractMesh mesh);
  external String getClassName();
  external dynamic serialize();
  external static GlowLayer Parse(dynamic parsedEffectLayer, Scene scene, String rootUrl);
}
