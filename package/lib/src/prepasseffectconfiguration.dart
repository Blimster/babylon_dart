part of babylon;

/// interface PrePassEffectConfiguration
@JS()
abstract class PrePassEffectConfiguration {
  external String name;
  external PostProcess postProcess;
  external List<num> texturesRequired;
  external bool enabled;
  void dispose();
  PostProcess createPostProcess();
}
