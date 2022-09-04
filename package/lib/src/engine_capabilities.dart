part of babylon_dart;

/// interface EngineCapabilities
@JS()
abstract class EngineCapabilities {
  // properties
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
  external CompressedTextureS3TC s3tc;
  external CompressedTextureS3TCsRgb s3tc_srgb;
  external Object pvrtc;
  external Object etc1;
  external Object etc2;
  external Object astc;
  external Object bptc;
  external bool textureFloat;
  external bool vertexArrayObject;
  external ExtTextureFilterAnisotropic textureAnisotropicFilterExtension;
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
  external ExtDisjointTimerQuery timerQuery;
  external bool canUseTimestampForTimerQuery;
  external bool supportOcclusionQuery;
  external Object multiview;
  external Object oculusMultiview;
  external EngineCapabilitiesParallelShaderCompile parallelShaderCompile;
  external num maxMSAASamples;
  external bool blendMinMax;
  external bool canUseGLInstanceID;
  external bool canUseGLVertexID;
  external bool supportComputeShaders;
  external bool supportSRGBBuffers;
  external bool supportTransformFeedbacks;
  external bool textureMaxLevel;
  external num texture2DArrayMaxLayerCount;
}

@JS()
@anonymous
class EngineCapabilitiesParallelShaderCompile {
}
