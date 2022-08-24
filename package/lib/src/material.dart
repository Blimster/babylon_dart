part of babylon_dart;

/// class Material
@JS()
class Material implements IAnimatable {
  // properties
  external static final Object TriangleFillMode;
  external static final Object WireFrameFillMode;
  external static final Object PointFillMode;
  external static final Object PointListDrawMode;
  external static final Object LineListDrawMode;
  external static final Object LineLoopDrawMode;
  external static final Object LineStripDrawMode;
  external static final Object TriangleStripDrawMode;
  external static final Object TriangleFanDrawMode;
  external static final Object ClockWiseSideOrientation;
  external static final Object CounterClockWiseSideOrientation;
  external static final Object TextureDirtyFlag;
  external static final Object LightDirtyFlag;
  external static final Object FresnelDirtyFlag;
  external static final Object AttributesDirtyFlag;
  external static final Object MiscDirtyFlag;
  external static final Object PrePassDirtyFlag;
  external static final Object AllDirtyFlag;
  external static final Object MATERIAL_OPAQUE;
  external static final Object MATERIAL_ALPHATEST;
  external static final Object MATERIAL_ALPHABLEND;
  external static final Object MATERIAL_ALPHATESTANDBLEND;
  external static final Object MATERIAL_NORMALBLENDMETHOD_WHITEOUT;
  external static final Object MATERIAL_NORMALBLENDMETHOD_RNM;
  external Observable<Material> OnEventObservable;
  external String Function(String shaderName, List<String> uniforms, List<String> uniformBuffers, List<String> samplers, Object defines, [List<String> attributes, ICustomShaderNameResolveOptions options]) customShaderNameResolve;
  external ShadowDepthWrapper? shadowDepthWrapper;
  external bool allowShaderHotSwapping;
  external String id;
  external num uniqueId;
  external String name;
  external Object metadata;
  external Object reservedDataStore;
  external bool checkReadyOnEveryCall;
  external bool checkReadyOnlyOnce;
  external String state;
  external List<IInspectable> inspectableCustomProperties;
  external num sideOrientation;
  external void Function(Effect effect)? onCompiled;
  external void Function(Effect effect, String errors)? onError;
  external SmartArray<RenderTargetTexture> Function()? getRenderTargetTextures;
  external bool doNotSerialize;
  external List<Animation>? animations;
  external Observable<Material> onDisposeObservable;
  external bool disableDepthWrite;
  external bool disableColorWrite;
  external bool forceDepthWrite;
  external num depthFunction;
  external bool separateCullingPass;
  external num pointSize;
  external num zOffset;
  external num zOffsetUnits;
  external static final MaterialStencilState stencil;
  external MaterialMeshMap? meshMap;
  external Object releaseVertexArrayObject;
  // methods
  external String toString([bool fullDetails]);
  external String getClassName();
  external void freeze();
  external void unfreeze();
  external bool isReady([AbstractMesh mesh, bool useInstances]);
  external bool isReadyForSubMesh(AbstractMesh mesh, SubMesh subMesh, [bool useInstances]);
  external Effect? getEffect();
  external Scene getScene();
  external bool needAlphaBlending();
  external bool needAlphaBlendingForMesh(AbstractMesh mesh);
  external bool needAlphaTesting();
  external BaseTexture? getAlphaTestTexture();
  external void markDirty();
  external void bind(Matrix world, [Mesh mesh]);
  external void buildUniformLayout();
  external void bindForSubMesh(Matrix world, Mesh mesh, SubMesh subMesh);
  external void bindOnlyWorldMatrix(Matrix world);
  external void bindView(Effect effect);
  external void bindViewProjection(Effect effect);
  external void bindEyePosition(Effect effect, [String variableName]);
  external void unbind();
  external List<IAnimatable> getAnimatables();
  external List<BaseTexture> getActiveTextures();
  external bool hasTexture(BaseTexture texture);
  external Material? clone(String name);
  external List<AbstractMesh> getBindedMeshes();
  external void forceCompilation(AbstractMesh mesh, [void Function(Material material) onCompiled, IMaterialCompilationOptions options, void Function(String reason) onError]);
  external Promise<void> forceCompilationAsync(AbstractMesh mesh, [IMaterialCompilationOptions options]);
  external void markAsDirty(num flag);
  external void resetDrawCache();
  external bool setPrePassRenderer(PrePassRenderer prePassRenderer);
  external void dispose([bool forceDisposeEffect, bool forceDisposeTextures, bool notBoundToMesh]);
  external Object serialize();
  external static Material? Parse(Object parsedMaterial, Scene scene, String rootUrl);
}

@JS()
@anonymous
class MaterialMeshMap {
}
