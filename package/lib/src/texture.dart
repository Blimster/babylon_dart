part of babylon_dart;

/// class Texture
@JS()
class Texture extends BaseTexture {
  // properties
  external bool SerializeBuffers;
  external bool ForceSerializeBuffers;
  external Observable<BaseTexture> OnTextureLoadErrorObservable;
  external static final Object NEAREST_SAMPLINGMODE;
  external static final Object NEAREST_NEAREST_MIPLINEAR;
  external static final Object BILINEAR_SAMPLINGMODE;
  external static final Object LINEAR_LINEAR_MIPNEAREST;
  external static final Object TRILINEAR_SAMPLINGMODE;
  external static final Object LINEAR_LINEAR_MIPLINEAR;
  external static final Object NEAREST_NEAREST_MIPNEAREST;
  external static final Object NEAREST_LINEAR_MIPNEAREST;
  external static final Object NEAREST_LINEAR_MIPLINEAR;
  external static final Object NEAREST_LINEAR;
  external static final Object NEAREST_NEAREST;
  external static final Object LINEAR_NEAREST_MIPNEAREST;
  external static final Object LINEAR_NEAREST_MIPLINEAR;
  external static final Object LINEAR_LINEAR;
  external static final Object LINEAR_NEAREST;
  external static final Object EXPLICIT_MODE;
  external static final Object SPHERICAL_MODE;
  external static final Object PLANAR_MODE;
  external static final Object CUBIC_MODE;
  external static final Object PROJECTION_MODE;
  external static final Object SKYBOX_MODE;
  external static final Object INVCUBIC_MODE;
  external static final Object EQUIRECTANGULAR_MODE;
  external static final Object FIXED_EQUIRECTANGULAR_MODE;
  external static final Object FIXED_EQUIRECTANGULAR_MIRRORED_MODE;
  external static final Object CLAMP_ADDRESSMODE;
  external static final Object WRAP_ADDRESSMODE;
  external static final Object MIRROR_ADDRESSMODE;
  external bool UseSerializedUrlIfAny;
  external String? url;
  external num uOffset;
  external num vOffset;
  external num uScale;
  external num vScale;
  external num uAng;
  external num vAng;
  external num wAng;
  external num uRotationCenter;
  external num vRotationCenter;
  external num wRotationCenter;
  external bool homogeneousRotationInUVTransform;
  external List<IInspectable>? inspectableCustomProperties;
  external Observable<Texture> onLoadObservable;
  // methods
  external void updateURL(String url, [Object? buffer, void Function() onLoad, String forcedExtension]);
  external void delayLoad();
  external bool checkTransformsAreIdentical(Texture? texture);
  external Matrix getTextureMatrix([num uBase]);
  external Matrix getReflectionTextureMatrix();
  external Texture clone();
  external Object serialize();
  external String getClassName();
  external void dispose();
  external static BaseTexture? Parse(Object parsedTexture, Scene scene, String rootUrl);
  external static Texture CreateFromBase64String(String data, String name, Scene scene, [Object noMipmapOrOptions, bool invertY, num samplingMode, void Function()? onLoad, void Function()? onError, num format, num creationFlags]);
  external static Texture LoadFromDataString(String name, Object buffer, Scene scene, [bool deleteBuffer, Object noMipmapOrOptions, bool invertY, num samplingMode, void Function()? onLoad, void Function([String message, Object exception])? onError, num format, num creationFlags]);
}
