part of babylon;

/// interface PrePassEffectConfiguration
@JS()
abstract class PrePassEffectConfiguration {
  String name;
  PostProcess postProcess;
  List<num> texturesRequired;
  bool enabled;
  void dispose();
  PostProcess createPostProcess();
}
