part of babylon_dart;

/// class BaseTexture
@JS()
class BaseTexture extends ThinTexture implements IAnimatable {
  // properties
  external num DEFAULT_ANISOTROPIC_FILTERING_LEVEL;
  external num uniqueId;
  external String name;
  external Object metadata;
  external Object reservedDataStore;
  external num level;
  external num wrapR;
  external num anisotropicFilteringLevel;
  external bool invertZ;
  external bool lodLevelInAlpha;
  external bool isRenderTarget;
  external List<Animation>? animations;
  external Observable<BaseTexture> onDisposeObservable;
  // methods
  external String toString();
  external String getClassName();
  external Scene? getScene();
  external bool checkTransformsAreIdentical(BaseTexture? texture);
  external Matrix getTextureMatrix();
  external Matrix getReflectionTextureMatrix();
  external bool isReadyOrNotBlocking();
  external void scale(num ratio);
  external BaseTexture? clone();
  external Promise<ByteBuffer>? readPixels([num faceIndex, num level, ByteBuffer? buffer, bool flushRenderer, bool noDataConversion, num x, num y, num width, num height]);
  external void dispose();
  external Object serialize();
  external static void WhenAllReady(List<BaseTexture> textures, void Function() callback);
}
