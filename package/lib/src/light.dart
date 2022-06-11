part of babylon_dart;

/// class Light
@JS()
abstract class Light extends Node implements ISortableLight {
  // properties
  external static final Object FALLOFF_DEFAULT;
  external static final Object FALLOFF_PHYSICAL;
  external static final Object FALLOFF_GLTF;
  external static final Object FALLOFF_STANDARD;
  external static final Object LIGHTMAP_DEFAULT;
  external static final Object LIGHTMAP_SPECULAR;
  external static final Object LIGHTMAP_SHADOWSONLY;
  external static final Object INTENSITYMODE_AUTOMATIC;
  external static final Object INTENSITYMODE_LUMINOUSPOWER;
  external static final Object INTENSITYMODE_LUMINOUSINTENSITY;
  external static final Object INTENSITYMODE_ILLUMINANCE;
  external static final Object INTENSITYMODE_LUMINANCE;
  external static final Object LIGHTTYPEID_POINTLIGHT;
  external static final Object LIGHTTYPEID_DIRECTIONALLIGHT;
  external static final Object LIGHTTYPEID_SPOTLIGHT;
  external static final Object LIGHTTYPEID_HEMISPHERICLIGHT;
  external Color3 diffuse;
  external Color3 specular;
  external num falloffType;
  external num intensity;
  external num renderPriority;
  // methods
  external Light transferToEffect(Effect effect, String lightIndex);
  external Light transferTexturesToEffect(Effect effect, String lightIndex);
  external Light transferToNodeMaterialEffect(Effect effect, String lightDataUniformName);
  external String getClassName();
  external String toString([bool fullDetails]);
  external void setEnabled(bool value);
  external IShadowGenerator? getShadowGenerator();
  external Vector3 getAbsolutePosition();
  external bool canAffectMesh(AbstractMesh mesh);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external num getTypeID();
  external num getScaledIntensity();
  external Light? clone(String name, [Node? newParent]);
  external Object serialize();
  external static Light Function()? GetConstructorFromName(num type, String name, Scene scene);
  external static Light? Parse(Object parsedLight, Scene scene);
  external void prepareLightSpecificDefines(Object defines, num lightIndex);
}
