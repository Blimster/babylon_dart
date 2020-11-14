part of babylon;

/// class ThinTexture
@JS()
class ThinTexture {
  external ThinTexture();
  external ThinTexture.args(InternalTexture internalTexture);
  external num get wrapU;
  external num get wrapV;
  external num get coordinatesMode;
  external bool get isCube;
  external bool get is3D;
  external bool get is2DArray;
  external num get wrapR;
  external num get anisotropicFilteringLevel;
  external num get delayLoadState;
  external set wrapU(num value);
  external set wrapV(num value);
  external set isCube(bool value);
  external set is3D(bool value);
  external set is2DArray(bool value);
  external set wrapR(num wrapR);
  external set anisotropicFilteringLevel(num anisotropicFilteringLevel);
  external set delayLoadState(num delayLoadState);
  external String getClassName();
  external bool isReady();
  external void delayLoad();
  external InternalTexture getInternalTexture();
  external ISize getSize();
  external ISize getBaseSize();
  external void updateSamplingMode(num samplingMode);
  external void releaseInternalTexture();
  external void dispose();
}
