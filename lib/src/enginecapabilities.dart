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
  num maxTexturesImageUnits;
  num maxVertexTextureImageUnits;
  num maxCombinedTexturesImageUnits;
  num maxTextureSize;
  num maxSamples;
  num maxCubemapTextureSize;
  num maxRenderTextureSize;
  num maxVertexAttribs;
  num maxVaryingVectors;
  num maxVertexUniformVectors;
  num maxFragmentUniformVectors;
  bool standardDerivatives;
  dynamic pvrtc;
  dynamic etc1;
  dynamic etc2;
  dynamic astc;
  dynamic bptc;
  bool textureFloat;
  bool vertexArrayObject;
  num maxAnisotropy;
  bool instancedArrays;
  bool uintIndices;
  bool highPrecisionShaderSupported;
  bool fragmentDepthSupported;
  bool textureFloatLinearFiltering;
  bool textureFloatRender;
  bool textureHalfFloat;
  bool textureHalfFloatLinearFiltering;
  bool textureHalfFloatRender;
  bool textureLOD;
  bool drawBuffersExtension;
  bool depthTextureExtension;
  bool colorBufferFloat;
  bool canUseTimestampForTimerQuery;
  dynamic multiview;
  dynamic oculusMultiview;
  EngineCapabilities parallelShaderCompile;
  num maxMSAASamples;
  bool blendMinMax;
}
