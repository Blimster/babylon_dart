part of babylon_dart;

/// class ThinEngine
@JS()
class ThinEngine {
  // properties
  external List<Object> ExceptionList;
  external num CollisionsEpsilon;
  external bool forcePOTTextures;
  external bool isFullscreen;
  external bool? cullBackFaces;
  external bool renderEvenInBackground;
  external bool preventCacheWipeBetweenFrames;
  external bool validateShaderPrograms;
  external static final Object isNDCHalfZRange;
  external static final Object hasOriginBottomLeft;
  external bool disableUniformBuffers;
  external static final Observable<ThinEngine> onDisposeObservable;
  external Observable<ThinEngine> onContextLostObservable;
  external Observable<ThinEngine> onContextRestoredObservable;
  external bool disableVertexArrayObjects;
  external bool adaptToDeviceRatio;
  external HostInformation hostInformation;
  external bool premultipliedAlpha;
  external Observable<Texture> onBeforeTextureInitObservable;
  external bool enableUnpackFlipYCached;
  // methods
  external EngineOptions getCreationOptions();
  external void snapshotRenderingReset();
  external ICanvas createCanvas(num width, num height);
  external IImage createCanvasImage();
  external bool areAllEffectsReady();
  external String getClassName();
  external void resetTextureCache();
  external ThinEngineGetInfo getInfo();
  external ThinEngineGetGlInfo getGlInfo();
  external void setHardwareScalingLevel(num level);
  external num getHardwareScalingLevel();
  external List<InternalTexture> getLoadedTexturesCache();
  external EngineCapabilities getCaps();
  external void stopRenderLoop([void Function() renderFunction]);
  external CanvasElement? getRenderingCanvas();
  external AudioContext? getAudioContext();
  external Object? getAudioDestination();
  external Window? getHostWindow();
  external num getRenderWidth([bool useScreen]);
  external num getRenderHeight([bool useScreen]);
  external void runRenderLoop(void Function() renderFunction);
  external void clear(IColor4Like? color, bool backBuffer, bool depth, [bool stencil]);
  external void setViewport(IViewportLike viewport, [num requiredWidth, num requiredHeight]);
  external void beginFrame();
  external void endFrame();
  external void resize([bool forceSetSize]);
  external bool setSize(num width, num height, [bool forceSetSize]);
  external void bindFramebuffer(RenderTargetWrapper texture, [num faceIndex, num requiredWidth, num requiredHeight, bool forceFullscreenViewport, num lodLevel, num layer]);
  external void setState(bool culling, [num zOffset, bool force, bool reverseSide, bool cullBackFaces, IStencilState stencil, num zOffsetUnits]);
  external bool getDepthBuffer();
  external void setDepthBuffer(bool enable);
  external void setZOffset(num value);
  external num getZOffset();
  external void setZOffsetUnits(num value);
  external num getZOffsetUnits();
  external void generateMipmaps(InternalTexture texture);
  external void unBindFramebuffer(RenderTargetWrapper texture, [bool disableGenerateMipMaps, void Function() onBeforeUnbind]);
  external void flushFramebuffer();
  external void restoreDefaultFramebuffer();
  external DataBuffer createVertexBuffer(DataArray data);
  external DataBuffer createDynamicVertexBuffer(DataArray data);
  external DataBuffer createIndexBuffer(Int32List indices, [bool updatable]);
  external void bindArrayBuffer(DataBuffer? buffer);
  external void bindIndexBuffer(DataBuffer? buffer);
  external void updateArrayBuffer(Float32List data);
  external VertexArrayObject recordVertexArrayObject(ThinEngineRecordVertexArrayObjectVertexBuffers vertexBuffers, DataBuffer? indexBuffer, Effect effect, [ThinEngineRecordVertexArrayObjectOverrideVertexBuffers overrideVertexBuffers]);
  external void bindVertexArrayObject(VertexArrayObject vertexArrayObject, DataBuffer? indexBuffer);
  external void bindBuffersDirectly(DataBuffer vertexBuffer, DataBuffer indexBuffer, List<num> vertexDeclaration, num vertexStrideSize, Effect effect);
  external void bindBuffers(ThinEngineBindBuffersVertexBuffers vertexBuffers, DataBuffer? indexBuffer, Effect effect, [ThinEngineBindBuffersOverrideVertexBuffers overrideVertexBuffers]);
  external void unbindInstanceAttributes();
  external void releaseVertexArrayObject(VertexArrayObject vao);
  external void updateAndBindInstancesBuffer(DataBuffer instancesBuffer, Float32List data, Object offsetLocations);
  external void bindInstancesBuffer(DataBuffer instancesBuffer, List<InstancingAttributeInfo> attributesInfo, [bool computeStride]);
  external void disableInstanceAttributeByName(String name);
  external void disableInstanceAttribute(num attributeLocation);
  external void disableAttributeByIndex(num attributeLocation);
  external void draw(bool useTriangles, num indexStart, num indexCount, [num instancesCount]);
  external void drawPointClouds(num verticesStart, num verticesCount, [num instancesCount]);
  external void drawUnIndexed(bool useTriangles, num verticesStart, num verticesCount, [num instancesCount]);
  external void drawElementsType(num fillMode, num indexStart, num indexCount, [num instancesCount]);
  external void drawArraysType(num fillMode, num verticesStart, num verticesCount, [num instancesCount]);
  external Effect createEffect(Object baseName, Object attributesNamesOrOptions, Object uniformsNamesOrEngine, [List<String> samplers, String defines, IEffectFallbacks fallbacks, void Function(Effect effect)? onCompiled, void Function(Effect effect, String errors)? onError, Object indexParameters, ShaderLanguage shaderLanguage]);
  external Program createRawShaderProgram(IPipelineContext pipelineContext, String vertexCode, String fragmentCode, [RenderingContext context, List<String>? transformFeedbackVaryings]);
  external Program createShaderProgram(IPipelineContext pipelineContext, String vertexCode, String fragmentCode, String? defines, [RenderingContext context, List<String>? transformFeedbackVaryings]);
  external String inlineShaderCode(String code);
  external IPipelineContext createPipelineContext(ShaderProcessingContext? shaderProcessingContext);
  external IMaterialContext? createMaterialContext();
  external IDrawContext? createDrawContext();
  external List<UniformLocation?> getUniforms(IPipelineContext pipelineContext, List<String> uniformsNames);
  external List<num> getAttributes(IPipelineContext pipelineContext, List<String> attributesNames);
  external void enableEffect(Object? effect);
  external bool setInt(UniformLocation? uniform, num value);
  external bool setInt2(UniformLocation? uniform, num x, num y);
  external bool setInt3(UniformLocation? uniform, num x, num y, num z);
  external bool setInt4(UniformLocation? uniform, num x, num y, num z, num w);
  external bool setIntArray(UniformLocation? uniform, Int32List array);
  external bool setIntArray2(UniformLocation? uniform, Int32List array);
  external bool setIntArray3(UniformLocation? uniform, Int32List array);
  external bool setIntArray4(UniformLocation? uniform, Int32List array);
  external bool setArray(UniformLocation? uniform, Object array);
  external bool setArray2(UniformLocation? uniform, Object array);
  external bool setArray3(UniformLocation? uniform, Object array);
  external bool setArray4(UniformLocation? uniform, Object array);
  external bool setMatrices(UniformLocation? uniform, Float32List matrices);
  external bool setMatrix3x3(UniformLocation? uniform, Float32List matrix);
  external bool setMatrix2x2(UniformLocation? uniform, Float32List matrix);
  external bool setFloat(UniformLocation? uniform, num value);
  external bool setFloat2(UniformLocation? uniform, num x, num y);
  external bool setFloat3(UniformLocation? uniform, num x, num y, num z);
  external bool setFloat4(UniformLocation? uniform, num x, num y, num z, num w);
  external void applyStates();
  external void setColorWrite(bool enable);
  external bool getColorWrite();
  external void clearInternalTexturesCache();
  external void wipeCaches([bool bruteForce]);
  external InternalTexture createTexture(String? url, bool noMipmap, bool invertY, ISceneLike? scene, [num samplingMode, void Function(InternalTexture texture)? onLoad, void Function(String message, Object exception)? onError, Object? buffer, InternalTexture? fallback, num? format, String? forcedExtension, String mimeType, Object loaderOptions, num creationFlags, bool useSRGBBuffer]);
  external void updateTextureSamplingMode(num samplingMode, InternalTexture texture, [bool generateMipMaps]);
  external void updateTextureDimensions(InternalTexture texture, num width, num height, [num depth]);
  external void updateTextureWrappingMode(InternalTexture texture, num? wrapU, [num? wrapV, num? wrapR]);
  external void updateTextureData(InternalTexture texture, ByteBuffer imageData, num xOffset, num yOffset, num width, num height, [num faceIndex, num lod, bool generateMipMaps]);
  external void bindSamplers(Effect effect);
  external void unbindAllTextures();
  external void setTexture(num channel, UniformLocation? uniform, ThinTexture? texture, String name);
  external void setTextureArray(num channel, UniformLocation? uniform, List<ThinTexture> textures, String name);
  external void unbindAllAttributes();
  external void releaseEffects();
  external void dispose();
  external void attachContextLostEvent(void Function(ContextEvent event) callback);
  external void attachContextRestoredEvent(void Function(ContextEvent event) callback);
  external num getError();
  external Promise<ByteBuffer> readPixels(num x, num y, num width, num height, [bool hasAlpha, bool flushRenderer]);
  external static bool isSupported();
  external static num CeilingPOT(num x);
  external static num FloorPOT(num x);
  external static num NearestPOT(num x);
  external static num GetExponentOfTwo(num value, num max, [num mode]);
  external static num QueueNewFrame(void Function() func, [Object requester]);
  external Document? getHostDocument();
}

@JS()
@anonymous
class ThinEngineExceptionList {
}

@JS()
@anonymous
class ThinEngineGetInfo {
}

@JS()
@anonymous
class ThinEngineGetGlInfo {
}

@JS()
@anonymous
class ThinEngineRecordVertexArrayObjectVertexBuffers {
}

@JS()
@anonymous
class ThinEngineRecordVertexArrayObjectOverrideVertexBuffers {
}

@JS()
@anonymous
class ThinEngineBindBuffersVertexBuffers {
}

@JS()
@anonymous
class ThinEngineBindBuffersOverrideVertexBuffers {
}
