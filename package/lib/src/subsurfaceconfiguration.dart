part of babylon;

/// class SubSurfaceConfiguration
@JS()
class SubSurfaceConfiguration implements PrePassEffectConfiguration {
  external SubSurfaceConfiguration(Scene scene);
  external List<num> get ssDiffusionS;
  external List<num> get ssDiffusionD;
  external List<num> get ssFilterRadii;
  external PostProcess get postProcess;
  external bool get enabled;
  external String get name;
  external List<Color3> get ssDiffusionProfileColors;
  external num get metersPerUnit;
  external List<num> get texturesRequired;
  external set postProcess(PostProcess postProcess);
  external set enabled(bool enabled);
  external set name(String name);
  external set ssDiffusionProfileColors(List<Color3> ssDiffusionProfileColors);
  external set metersPerUnit(num metersPerUnit);
  external set texturesRequired(List<num> texturesRequired);
  external num addDiffusionProfile(Color3 color);
  external SubSurfaceScatteringPostProcess createPostProcess();
  external void clearAllDiffusionProfiles();
  external void dispose();
  external num getDiffusionProfileParameters(Color3 color);
}
