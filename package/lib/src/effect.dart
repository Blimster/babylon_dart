part of babylon_dart;

/// class Effect
@JS()
class Effect implements IDisposable {
  // properties
  external bool LogShaderCodeOnCompilationError;
  external Object name;
  external String defines;
  external void Function(Effect effect)? onCompiled;
  external void Function(Effect effect, String errors)? onError;
  external void Function(Effect effect)? onBind;
  external num uniqueId;
  external Observable<Effect> onCompileObservable;
  external Observable<Effect> onErrorObservable;
  external EffectShadersStore ShadersStore;
  external EffectIncludesShadersStore IncludesShadersStore;
  // methods
  external bool isReady();
  external Engine getEngine();
  external IPipelineContext? getPipelineContext();
  external List<String> getAttributesNames();
  external num getAttributeLocation(num index);
  external num getAttributeLocationByName(String name);
  external num getAttributesCount();
  external num getUniformIndex(String uniformName);
  external UniformLocation? getUniform(String uniformName);
  external List<String> getSamplers();
  external List<String> getUniformNames();
  external List<String> getUniformBuffersNames();
  external Object getIndexParameters();
  external String getCompilationError();
  external bool allFallbacksProcessed();
  external void executeWhenCompiled(void Function(Effect effect) func);
  external void setTexture(String channel, ThinTexture? texture);
  external void setDepthStencilTexture(String channel, RenderTargetTexture? texture);
  external void setTextureArray(String channel, List<ThinTexture> textures);
  external void setTextureFromPostProcess(String channel, PostProcess? postProcess);
  external void setTextureFromPostProcessOutput(String channel, PostProcess? postProcess);
  external void bindUniformBuffer(DataBuffer buffer, String name);
  external void bindUniformBlock(String blockName, num index);
  external Effect setInt(String uniformName, num value);
  external Effect setInt2(String uniformName, num x, num y);
  external Effect setInt3(String uniformName, num x, num y, num z);
  external Effect setInt4(String uniformName, num x, num y, num z, num w);
  external Effect setIntArray(String uniformName, Int32List array);
  external Effect setIntArray2(String uniformName, Int32List array);
  external Effect setIntArray3(String uniformName, Int32List array);
  external Effect setIntArray4(String uniformName, Int32List array);
  external Effect setFloatArray(String uniformName, Float32List array);
  external Effect setFloatArray2(String uniformName, Float32List array);
  external Effect setFloatArray3(String uniformName, Float32List array);
  external Effect setFloatArray4(String uniformName, Float32List array);
  external Effect setArray(String uniformName, List<num> array);
  external Effect setArray2(String uniformName, List<num> array);
  external Effect setArray3(String uniformName, List<num> array);
  external Effect setArray4(String uniformName, List<num> array);
  external Effect setMatrices(String uniformName, Object matrices);
  external Effect setMatrix(String uniformName, IMatrixLike matrix);
  external Effect setMatrix3x3(String uniformName, Object matrix);
  external Effect setMatrix2x2(String uniformName, Object matrix);
  external Effect setFloat(String uniformName, num value);
  external Effect setBool(String uniformName, bool bool);
  external Effect setVector2(String uniformName, IVector2Like vector2);
  external Effect setFloat2(String uniformName, num x, num y);
  external Effect setVector3(String uniformName, IVector3Like vector3);
  external Effect setFloat3(String uniformName, num x, num y, num z);
  external Effect setVector4(String uniformName, IVector4Like vector4);
  external Effect setQuaternion(String uniformName, IQuaternionLike quaternion);
  external Effect setFloat4(String uniformName, num x, num y, num z, num w);
  external Effect setColor3(String uniformName, IColor3Like color3);
  external Effect setColor4(String uniformName, IColor3Like color3, num alpha);
  external Effect setDirectColor4(String uniformName, IColor4Like color4);
  external void dispose();
  external static void RegisterShader(String name, [String pixelShader, String vertexShader, ShaderLanguage shaderLanguage]);
  external static void ResetCache();
}

@JS()
@anonymous
class EffectShadersStore {
}

@JS()
@anonymous
class EffectIncludesShadersStore {
}
