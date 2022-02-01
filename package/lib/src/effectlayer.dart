part of babylon;

/// class EffectLayer
@JS()
abstract class EffectLayer {
  external Camera get camera;
  external num get renderingGroupId;
  external String get name;
  external Color4 get neutralColor;
  external bool get isEnabled;
  external bool get disableBoundingBoxesFromEffectLayer;
  external Observable<EffectLayer> get onDisposeObservable;
  external Observable<EffectLayer> get onBeforeRenderMainTextureObservable;
  external Observable<EffectLayer> get onBeforeComposeObservable;
  external Observable<AbstractMesh> get onBeforeRenderMeshToEffect;
  external Observable<AbstractMesh> get onAfterRenderMeshToEffect;
  external Observable<EffectLayer> get onAfterComposeObservable;
  external Observable<EffectLayer> get onSizeChangedObservable;
  external set renderingGroupId(num renderingGroupId);
  external set name(String name);
  external set neutralColor(Color4 neutralColor);
  external set isEnabled(bool isEnabled);
  external set disableBoundingBoxesFromEffectLayer(bool disableBoundingBoxesFromEffectLayer);
  external set onDisposeObservable(Observable<EffectLayer> onDisposeObservable);
  external set onBeforeRenderMainTextureObservable(Observable<EffectLayer> onBeforeRenderMainTextureObservable);
  external set onBeforeComposeObservable(Observable<EffectLayer> onBeforeComposeObservable);
  external set onBeforeRenderMeshToEffect(Observable<AbstractMesh> onBeforeRenderMeshToEffect);
  external set onAfterRenderMeshToEffect(Observable<AbstractMesh> onAfterRenderMeshToEffect);
  external set onAfterComposeObservable(Observable<EffectLayer> onAfterComposeObservable);
  external set onSizeChangedObservable(Observable<EffectLayer> onSizeChangedObservable);
  external String getEffectName();
  external bool isReady(SubMesh subMesh, bool useInstances);
  external bool needStencil();
  external dynamic serialize();
  external void render();
  external bool hasMesh(AbstractMesh mesh);
  external bool shouldRender();
  external void dispose();
  external String getClassName();
  external static EffectLayer Parse(dynamic parsedEffectLayer, Scene scene, String rootUrl);
}
