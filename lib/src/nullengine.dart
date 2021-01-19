part of babylon;

/// class NullEngine
@JS()
class NullEngine extends Engine {
  external NullEngine([NullEngineOptions options]);
  external bool isDeterministicLockStep();
  external num getLockstepMaxSteps();
  external num getHardwareScalingLevel();
  external DataBuffer createVertexBuffer(ByteBuffer data);
  external DataBuffer createIndexBuffer(Int32List indices, [bool updatable]);
  external void clear(IColor4Like color, bool backBuffer, bool depth, [bool stencil]);
  external num getRenderWidth([bool useScreen]);
  external num getRenderHeight([bool useScreen]);
  external void setViewport(IViewportLike viewport, [num requiredWidth, num requiredHeight]);
  external Program createShaderProgram(IPipelineContext pipelineContext, String vertexCode, String fragmentCode, String defines, [RenderingContext context, List<String> transformFeedbackVaryings]);
  external List<UniformLocation> getUniforms(IPipelineContext pipelineContext, List<String> uniformsNames);
  external List<num> getAttributes(IPipelineContext pipelineContext, List<String> attributesNames);
  external void bindSamplers(Effect effect);
  external void enableEffect(Effect effect);
  external void setState(bool culling, [num zOffset, bool force, bool reverseSide]);
  external bool setIntArray(UniformLocation uniform, Int32List array);
  external bool setIntArray2(UniformLocation uniform, Int32List array);
  external bool setIntArray3(UniformLocation uniform, Int32List array);
  external bool setIntArray4(UniformLocation uniform, Int32List array);
  external bool setFloatArray(UniformLocation uniform, Float32List array);
  external bool setFloatArray2(UniformLocation uniform, Float32List array);
  external bool setFloatArray3(UniformLocation uniform, Float32List array);
  external bool setFloatArray4(UniformLocation uniform, Float32List array);
  external bool setArray(UniformLocation uniform, dynamic array);
  external bool setArray2(UniformLocation uniform, dynamic array);
  external bool setArray3(UniformLocation uniform, dynamic array);
  external bool setArray4(UniformLocation uniform, dynamic array);
  external bool setMatrices(UniformLocation uniform, Float32List matrices);
  external bool setMatrix3x3(UniformLocation uniform, Float32List matrix);
  external bool setMatrix2x2(UniformLocation uniform, Float32List matrix);
  external bool setFloat(UniformLocation uniform, num value);
  external bool setFloat2(UniformLocation uniform, num x, num y);
  external bool setFloat3(UniformLocation uniform, num x, num y, num z);
  external bool setBool(UniformLocation uniform, num bool);
  external bool setFloat4(UniformLocation uniform, num x, num y, num z, num w);
  external void setAlphaMode(num mode, [bool noDepthWriteChange]);
  external void bindBuffers(dynamic vertexBuffers, DataBuffer indexBuffer, Effect effect);
  external void wipeCaches([bool bruteForce]);
  external void draw(bool useTriangles, num indexStart, num indexCount, [num instancesCount]);
  external void drawElementsType(num fillMode, num indexStart, num indexCount, [num instancesCount]);
  external void drawArraysType(num fillMode, num verticesStart, num verticesCount, [num instancesCount]);
  external InternalTexture createTexture(String url, bool noMipmap, bool invertY, ISceneLike scene, [num samplingMode, void Function() onLoad, void Function(String message, dynamic exception) onError, dynamic buffer, InternalTexture fallback, num format, String forcedExtension, String mimeType, dynamic loaderOptions]);
  external InternalTexture createRenderTargetTexture(dynamic size, dynamic options);
  external void updateTextureSamplingMode(num samplingMode, InternalTexture texture, [bool generateMipMaps]);
  external void bindFramebuffer(InternalTexture texture, [num faceIndex, num requiredWidth, num requiredHeight, bool forceFullscreenViewport, num lodLevel, num layer]);
  external void unBindFramebuffer(InternalTexture texture, [bool disableGenerateMipMaps, void Function() onBeforeUnbind]);
  external DataBuffer createDynamicVertexBuffer(ByteBuffer data);
  external bool areAllEffectsReady();
  external num getError();
  external void releaseEffects();
  external void displayLoadingUI();
  external void hideLoadingUI();
}
