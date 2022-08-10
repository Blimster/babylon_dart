part of babylon_dart;

/// class PostProcess
@JS()
class PostProcess {
  // properties
  external num uniqueId;
  external String name;
  external num width;
  external num height;
  external NodeMaterial? nodeMaterialSource;
  external num renderTargetSamplingMode;
  external Color4 clearColor;
  external bool autoClear;
  external num alphaMode;
  external Color4 alphaConstants;
  external List<Animation> animations;
  external bool enablePixelPerfectMode;
  external bool forceFullscreenViewport;
  external List<IInspectable> inspectableCustomProperties;
  external num scaleMode;
  external bool alwaysForcePOT;
  external bool adaptScaleToCurrentViewport;
  external bool externalTextureSamplerBinding;
  external Observable<Camera> onActivateObservable;
  external Observable<PostProcess> onSizeChangedObservable;
  external Observable<Effect> onApplyObservable;
  external Observable<Effect> onBeforeRenderObservable;
  external Observable<Effect> onAfterRenderObservable;
  // methods
  external String getEffectName();
  external void restoreDefaultInputTexture();
  external Camera getCamera();
  external String getClassName();
  external Engine getEngine();
  external Effect getEffect();
  external PostProcess shareOutputWith(PostProcess postProcess);
  external void useOwnOutput();
  external void updateEffect([String? defines, List<String>? uniforms, List<String>? samplers, Object indexParameters, void Function(Effect effect) onCompiled, void Function(Effect effect, String errors) onError, String vertexUrl, String fragmentUrl]);
  external bool isReusable();
  external void markTextureDirty();
  external RenderTargetWrapper activate(Camera? camera, [InternalTexture? sourceTexture, bool forceDepthStencil]);
  external bool isReady();
  external Effect? apply();
  external bool setPrePassRenderer(PrePassRenderer prePassRenderer);
  external void dispose([Camera camera]);
  external Object serialize();
  external PostProcess? clone();
  external static PostProcess? Parse(Object parsedPostProcess, Scene scene, String rootUrl);
}
