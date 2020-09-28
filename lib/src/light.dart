part of babylon;

@JS()
class Light extends Node {
  num FALLOFF_DEFAULT;
  num FALLOFF_PHYSICAL;
  num FALLOFF_GLTF;
  num FALLOFF_STANDARD;
  num LIGHTMAP_DEFAULT;
  num LIGHTMAP_SPECULAR;
  num LIGHTMAP_SHADOWSONLY;
  num INTENSITYMODE_AUTOMATIC;
  num INTENSITYMODE_LUMINOUSPOWER;
  num INTENSITYMODE_LUMINOUSINTENSITY;
  num INTENSITYMODE_ILLUMINANCE;
  num INTENSITYMODE_LUMINANCE;
  num LIGHTTYPEID_POINTLIGHT;
  num LIGHTTYPEID_DIRECTIONALLIGHT;
  num LIGHTTYPEID_SPOTLIGHT;
  num LIGHTTYPEID_HEMISPHERICLIGHT;
  Color3 diffuse;
  Color3 specular;
  num falloffType;
  num intensity;
  num renderPriority;
  external num get range;
  external num get intensityMode;
  external num get radius;
  external bool get shadowEnabled;
  external List<AbstractMesh> get includedOnlyMeshes;
  external List<AbstractMesh> get excludedMeshes;
  external num get excludeWithLayerMask;
  external num get includeOnlyWithLayerMask;
  external num get lightmapMode;
  external set range(num value);
  external set intensityMode(num value);
  external set radius(num value);
  external set shadowEnabled(bool value);
  external set includedOnlyMeshes(List<AbstractMesh> value);
  external set excludedMeshes(List<AbstractMesh> value);
  external set excludeWithLayerMask(num value);
  external set includeOnlyWithLayerMask(num value);
  external set lightmapMode(num value);
  external Light transferTexturesToEffect(Effect effect, String lightIndex);
  external String getClassName();
  external void setEnabled(bool value);
  external Vector3 getAbsolutePosition();
  external bool canAffectMesh(AbstractMesh mesh);
  external static num CompareLightsPriority(Light a, Light b);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external num getTypeID();
  external num getScaledIntensity();
  external Light clone(String name, [Node newParent]);
  external dynamic serialize();
  external static Light Parse(dynamic parsedLight, Scene scene);
}

