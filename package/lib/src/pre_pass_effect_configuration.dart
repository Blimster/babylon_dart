part of babylon_dart;

/// interface PrePassEffectConfiguration
@JS()
abstract class PrePassEffectConfiguration {
  // properties
  external String name;
  external PostProcess postProcess;
  external List<num> texturesRequired;
  external bool enabled;
  external bool needsImageProcessing;
  external void Function() dispose;
  external PostProcess Function() createPostProcess;
}
