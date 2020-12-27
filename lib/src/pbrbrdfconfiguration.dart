part of babylon;

/// class PBRBRDFConfiguration
@JS()
class PBRBRDFConfiguration {
  external PBRBRDFConfiguration(void Function() markAllSubMeshesAsMiscDirty);
  external static bool get DEFAULT_USE_ENERGY_CONSERVATION;
  external static bool get DEFAULT_USE_SMITH_VISIBILITY_HEIGHT_CORRELATED;
  external static bool get DEFAULT_USE_SPHERICAL_HARMONICS;
  external static bool get DEFAULT_USE_SPECULAR_GLOSSINESS_INPUT_ENERGY_CONSERVATION;
  external bool get useEnergyConservation;
  external bool get useSmithVisibilityHeightCorrelated;
  external bool get useSphericalHarmonics;
  external bool get useSpecularGlossinessInputEnergyConservation;
  external static set DEFAULT_USE_ENERGY_CONSERVATION(bool DEFAULT_USE_ENERGY_CONSERVATION);
  external static set DEFAULT_USE_SMITH_VISIBILITY_HEIGHT_CORRELATED(bool DEFAULT_USE_SMITH_VISIBILITY_HEIGHT_CORRELATED);
  external static set DEFAULT_USE_SPHERICAL_HARMONICS(bool DEFAULT_USE_SPHERICAL_HARMONICS);
  external static set DEFAULT_USE_SPECULAR_GLOSSINESS_INPUT_ENERGY_CONSERVATION(bool DEFAULT_USE_SPECULAR_GLOSSINESS_INPUT_ENERGY_CONSERVATION);
  external set useEnergyConservation(bool useEnergyConservation);
  external set useSmithVisibilityHeightCorrelated(bool useSmithVisibilityHeightCorrelated);
  external set useSphericalHarmonics(bool useSphericalHarmonics);
  external set useSpecularGlossinessInputEnergyConservation(bool useSpecularGlossinessInputEnergyConservation);
  external void prepareDefines(IMaterialBRDFDefines defines);
  external String getClassName();
  external void copyTo(PBRBRDFConfiguration brdfConfiguration);
  external dynamic serialize();
  external void parse(dynamic source, Scene scene, String rootUrl);
}
