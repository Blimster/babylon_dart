part of babylon;

/// class CubeTexture
@JS()
class CubeTexture extends BaseTexture {
  external CubeTexture(String rootUrl, dynamic sceneOrEngine, [List<String> extensions, bool noMipmap, List<String> files, void Function() onLoad, void Function(String message, dynamic exception) onError, num format, bool prefiltered, dynamic forcedExtension, bool createPolynomials, num lodScale, num lodOffset, dynamic loaderOptions]);
  external Vector3 get boundingBoxSize;
  external num get rotationY;
  external bool get noMipmap;
  external Observable<CubeTexture> get onLoadObservable;
  external String get url;
  external Vector3 get boundingBoxPosition;
  external set boundingBoxSize(Vector3 value);
  external set rotationY(num value);
  external set onLoadObservable(Observable<CubeTexture> onLoadObservable);
  external set url(String url);
  external set boundingBoxPosition(Vector3 boundingBoxPosition);
  external static CubeTexture CreateFromImages(List<String> files, Scene scene, [bool noMipmap]);
  external static CubeTexture CreateFromPrefilteredData(String url, Scene scene, [dynamic forcedExtension, bool createPolynomials]);
  external String getClassName();
  external void updateURL(String url, [String forcedExtension, void Function() onLoad, bool prefiltered]);
  external void delayLoad();
  external Matrix getReflectionTextureMatrix();
  external void setReflectionTextureMatrix(Matrix value);
  external static CubeTexture Parse(dynamic parsedTexture, Scene scene, String rootUrl);
  external CubeTexture clone();
}
