part of babylon;

/// class HighlightLayer
@JS()
class HighlightLayer extends EffectLayer {
  external HighlightLayer(String name, Scene scene, [IHighlightLayerOptions options]);
  external num get blurHorizontalSize;
  external num get blurVerticalSize;
  external String get name;
  external static String get EffectName;
  external static Color4 get NeutralColor;
  external static num get GlowingMeshStencilReference;
  external static num get NormalMeshStencilReference;
  external bool get innerGlow;
  external bool get outerGlow;
  external Observable<HighlightLayer> get onBeforeBlurObservable;
  external Observable<HighlightLayer> get onAfterBlurObservable;
  external set blurHorizontalSize(num value);
  external set blurVerticalSize(num value);
  external set name(String name);
  external static set NeutralColor(Color4 NeutralColor);
  external static set GlowingMeshStencilReference(num GlowingMeshStencilReference);
  external static set NormalMeshStencilReference(num NormalMeshStencilReference);
  external set innerGlow(bool innerGlow);
  external set outerGlow(bool outerGlow);
  external set onBeforeBlurObservable(Observable<HighlightLayer> onBeforeBlurObservable);
  external set onAfterBlurObservable(Observable<HighlightLayer> onAfterBlurObservable);
  external String getEffectName();
  external bool needStencil();
  external bool isReady(SubMesh subMesh, bool useInstances);
  external bool shouldRender();
  external void addExcludedMesh(Mesh mesh);
  external void removeExcludedMesh(Mesh mesh);
  external bool hasMesh(AbstractMesh mesh);
  external void addMesh(Mesh mesh, Color3 color, [bool glowEmissiveOnly]);
  external void removeMesh(Mesh mesh);
  external void removeAllMeshes();
  external void dispose();
  external String getClassName();
  external dynamic serialize();
  external static HighlightLayer Parse(dynamic parsedEffectLayer, Scene scene, String rootUrl);
}
