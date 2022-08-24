part of babylon_dart;

/// interface IShadowGenerator
@JS()
abstract class IShadowGenerator {
  // properties
  external String id;
  // methods
  RenderTargetTexture? getShadowMap();
  bool isReady(SubMesh subMesh, bool useInstances, bool isTransparent);
  void prepareDefines(MaterialDefines defines, num lightIndex);
  void bindShadowLight(String lightIndex, Effect effect);
  Matrix getTransformMatrix();
  void recreateShadowMap();
  void forceCompilation([void Function(IShadowGenerator generator) onCompiled, IShadowGeneratorForceCompilationOptions options]);
  Promise<void> forceCompilationAsync([IShadowGeneratorForceCompilationAsyncOptions options]);
  Object serialize();
  void dispose();
}

@JS()
@anonymous
class IShadowGeneratorForceCompilationOptions {
}

@JS()
@anonymous
class IShadowGeneratorForceCompilationAsyncOptions {
}
