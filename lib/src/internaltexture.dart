part of babylon;

/// class InternalTexture
@JS()
class InternalTexture {
  external bool get isReady;
  external bool get isCube;
  external bool get is3D;
  external bool get is2DArray;
  external bool get isMultiview;
  external String get url;
  external num get samplingMode;
  external bool get generateMipMaps;
  external num get samples;
  external num get type;
  external num get format;
  external Observable<InternalTexture> get onLoadedObservable;
  external num get width;
  external num get height;
  external num get depth;
  external num get baseWidth;
  external num get baseHeight;
  external num get baseDepth;
  external bool get invertY;
  external set isReady(bool isReady);
  external set isCube(bool isCube);
  external set is3D(bool is3D);
  external set is2DArray(bool is2DArray);
  external set isMultiview(bool isMultiview);
  external set url(String url);
  external set samplingMode(num samplingMode);
  external set generateMipMaps(bool generateMipMaps);
  external set samples(num samples);
  external set type(num type);
  external set format(num format);
  external set onLoadedObservable(Observable<InternalTexture> onLoadedObservable);
  external set width(num width);
  external set height(num height);
  external set depth(num depth);
  external set baseWidth(num baseWidth);
  external set baseHeight(num baseHeight);
  external set baseDepth(num baseDepth);
  external set invertY(bool invertY);
  external ThinEngine getEngine();
  external void incrementReferences();
  external void updateSize(int width, int height, [int depth]);
  external void dispose();
}
