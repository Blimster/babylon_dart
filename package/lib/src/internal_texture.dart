part of babylon_dart;

/// class InternalTexture
@JS()
class InternalTexture extends TextureSampler {
  // properties
  external bool isReady;
  external bool isCube;
  external bool is3D;
  external bool is2DArray;
  external bool isMultiview;
  external String url;
  external bool generateMipMaps;
  external num samples;
  external num type;
  external num format;
  external Observable<InternalTexture> onLoadedObservable;
  external Observable<InternalTextureOnErrorObservable> onErrorObservable;
  external InternalTextureOnRebuildCallback Function(InternalTexture internalTexture)? onRebuildCallback;
  external num width;
  external num height;
  external num depth;
  external num baseWidth;
  external num baseHeight;
  external num baseDepth;
  external bool invertY;
  // methods
  external ThinEngine getEngine();
  external void incrementReferences();
  external void updateSize(int width, int height, [int depth]);
  external void dispose();
}

@JS()
@anonymous
class InternalTextureOnErrorObservable {
}

@JS()
@anonymous
class InternalTextureOnRebuildCallback {
}
