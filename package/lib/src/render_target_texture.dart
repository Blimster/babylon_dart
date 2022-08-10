part of babylon_dart;

/// class RenderTargetTexture
@JS()
class RenderTargetTexture extends Texture implements IRenderTargetTexture {
  // properties
  external static final num REFRESHRATE_RENDER_ONCE;
  external static final num REFRESHRATE_RENDER_ONEVERYFRAME;
  external static final num REFRESHRATE_RENDER_ONEVERYTWOFRAMES;
  external bool Function(AbstractMesh AbstractMesh) renderListPredicate;
  external List<AbstractMesh>? Function(num layerOrFace, Immutable<List<AbstractMesh>>? renderList, num renderListLength) getCustomRenderList;
  external bool renderParticles;
  external bool renderSprites;
  external Camera? activeCamera;
  external bool Function(AbstractMesh mesh, num refreshRate) customIsReadyFunction;
  external void Function(SmartArray<SubMesh> opaqueSubMeshes, SmartArray<SubMesh> alphaTestSubMeshes, SmartArray<SubMesh> transparentSubMeshes, SmartArray<SubMesh> depthOnlySubMeshes, [void Function() beforeTransparents]) customRenderFunction;
  external bool useCameraPostProcesses;
  external bool ignoreCameraViewport;
  external Observable<RenderTargetTexture> onBeforeBindObservable;
  external Observable<RenderTargetTexture> onAfterUnbindObservable;
  external Observable<num> onBeforeRenderObservable;
  external Observable<num> onAfterRenderObservable;
  external Observable<Engine> onClearObservable;
  external Observable<RenderTargetTexture> onResizeObservable;
  external Color4 clearColor;
  external bool skipInitialClear;
  external num renderPassId;
  external Vector3 boundingBoxPosition;
  // methods
  external void setMaterialForRendering(Object mesh, [Object material]);
  external void createDepthStencilTexture([num comparisonFunction, bool bilinearFiltering, bool generateStencil, num samples, num format]);
  external void resetRefreshCounter();
  external void addPostProcess(PostProcess postProcess);
  external void clearPostProcesses([bool dispose]);
  external void removePostProcess(PostProcess postProcess);
  external num getRenderSize();
  external num getRenderWidth();
  external num getRenderHeight();
  external num getRenderLayers();
  external void disableRescaling();
  external void scale(num ratio);
  external Matrix getReflectionTextureMatrix();
  external void resize(Object size);
  external void render([bool useCameraPostProcess, bool dumpForDebug]);
  external bool isReadyForRendering();
  external void setRenderingOrder(num renderingGroupId, [num Function(SubMesh a, SubMesh b)? opaqueSortCompareFn, num Function(SubMesh a, SubMesh b)? alphaTestSortCompareFn, num Function(SubMesh a, SubMesh b)? transparentSortCompareFn]);
  external void setRenderingAutoClearDepthStencil(num renderingGroupId, bool autoClearDepthStencil);
  external RenderTargetTexture clone();
  external Object serialize();
  external void disposeFramebufferObjects();
  external void releaseInternalTexture();
  external void dispose();
  external void freeRenderingGroups();
  external num getViewCount();
}

@JS()
@anonymous
class RenderTargetTextureResizeSize {
}
