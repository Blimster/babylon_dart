part of babylon;


@JS()
@anonymous
class EngineCapabilitiesParallelShaderCompile {
  external factory EngineCapabilitiesParallelShaderCompile({num COMPLETION_STATUS_KHR});
  external num get COMPLETION_STATUS_KHR;
}
/// interface EngineCapabilities
@JS()
abstract class EngineCapabilities {
  external num maxTexturesImageUnits;
  external num maxVertexTextureImageUnits;
  external num maxCombinedTexturesImageUnits;
  external num maxTextureSize;
  external num maxSamples;
  external num maxCubemapTextureSize;
  external num maxRenderTextureSize;
  external num maxVertexAttribs;
  external num maxVaryingVectors;
  external num maxVertexUniformVectors;
  external num maxFragmentUniformVectors;
  external bool standardDerivatives;
  external dynamic pvrtc;
  external dynamic etc1;
  external dynamic etc2;
  external dynamic astc;
  external dynamic bptc;
  external bool textureFloat;
  external bool vertexArrayObject;
  external num maxAnisotropy;
  external bool instancedArrays;
  external bool uintIndices;
  external bool highPrecisionShaderSupported;
  external bool fragmentDepthSupported;
  external bool textureFloatLinearFiltering;
  external bool textureFloatRender;
  external bool textureHalfFloat;
  external bool textureHalfFloatLinearFiltering;
  external bool textureHalfFloatRender;
  external bool textureLOD;
  external bool drawBuffersExtension;
  external bool depthTextureExtension;
  external bool colorBufferFloat;
  external bool canUseTimestampForTimerQuery;
  external dynamic multiview;
  external dynamic oculusMultiview;
  external EngineCapabilities parallelShaderCompile;
  external num maxMSAASamples;
  external bool blendMinMax;
}
