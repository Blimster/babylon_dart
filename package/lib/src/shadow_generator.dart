part of babylon_dart;

/// class ShadowGenerator
@JS()
class ShadowGenerator implements IShadowGenerator {
  // properties
  external String CLASSNAME;
  external static final Object FILTER_NONE;
  external static final Object FILTER_EXPONENTIALSHADOWMAP;
  external static final Object FILTER_POISSONSAMPLING;
  external static final Object FILTER_BLUREXPONENTIALSHADOWMAP;
  external static final Object FILTER_CLOSEEXPONENTIALSHADOWMAP;
  external static final Object FILTER_BLURCLOSEEXPONENTIALSHADOWMAP;
  external static final Object FILTER_PCF;
  external static final Object FILTER_PCSS;
  external static final Object QUALITY_HIGH;
  external static final Object QUALITY_MEDIUM;
  external static final Object QUALITY_LOW;
  external num DEFAULT_ALPHA_CUTOFF;
  external String id;
  external ICustomShaderOptions customShaderOptions;
  external bool Function(SubMesh subMesh) customAllowRendering;
  external Observable<Effect> onBeforeShadowMapRenderObservable;
  external Observable<Effect> onAfterShadowMapRenderObservable;
  external Observable<Mesh> onBeforeShadowMapRenderMeshObservable;
  external Observable<Mesh> onAfterShadowMapRenderMeshObservable;
  external bool enableSoftTransparentShadow;
  external bool useOpacityTextureForTransparentShadow;
  external num frustumEdgeFalloff;
  external bool forceBackFacesOnly;
  // methods
  external num getDarkness();
  external ShadowGenerator setDarkness(num darkness);
  external ShadowGenerator setTransparencyShadow(bool transparent);
  external RenderTargetTexture? getShadowMap();
  external RenderTargetTexture? getShadowMapForRendering();
  external String getClassName();
  external ShadowGenerator addShadowCaster(AbstractMesh mesh, [bool includeDescendants]);
  external ShadowGenerator removeShadowCaster(AbstractMesh mesh, [bool includeDescendants]);
  external IShadowLight getLight();
  external void forceCompilation([void Function(IShadowGenerator generator) onCompiled, ShadowGeneratorForceCompilationOptions options]);
  external Promise<void> forceCompilationAsync([ShadowGeneratorForceCompilationAsyncOptions options]);
  external bool isReady(SubMesh subMesh, bool useInstances, bool isTransparent);
  external void prepareDefines(Object defines, num lightIndex);
  external void bindShadowLight(String lightIndex, Effect effect);
  external Matrix getTransformMatrix();
  external void recreateShadowMap();
  external void dispose();
  external Object serialize();
  external static ShadowGenerator Parse(Object parsedShadowGenerator, Scene scene, [ShadowGenerator Function(num mapSize, IShadowLight light) constr]);
}

@JS()
@anonymous
class ShadowGeneratorForceCompilationOptions {
}

@JS()
@anonymous
class ShadowGeneratorForceCompilationAsyncOptions {
}
