part of babylon_dart;

/// class ThinTexture
@JS()
class ThinTexture {
  // properties
  external num wrapR;
  external num anisotropicFilteringLevel;
  external num delayLoadState;
  // methods
  external String getClassName();
  external bool isReady();
  external void delayLoad();
  external InternalTexture? getInternalTexture();
  external ISize getSize();
  external ISize getBaseSize();
  external void updateSamplingMode(num samplingMode);
  external void releaseInternalTexture();
  external void dispose();
}
