part of babylon_dart;

/// class SpriteManager
@JS()
class SpriteManager implements ISpriteManager {
  // properties
  external String name;
  external String SnippetUrl;
  external String snippetId;
  external List<Sprite> sprites;
  external num renderingGroupId;
  external num layerMask;
  external bool isPickable;
  external Observable<SpriteManager> onDisposeObservable;
  external num uniqueId;
  external UNSUPPORTED[TypeQuery|typeof SpriteManager.ParseFromSnippetAsync] CreateFromSnippetAsync;
  // methods
  external String getClassName();
  external PickingInfo? intersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate, bool fastCheck]);
  external List<PickingInfo>? multiIntersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate]);
  external void render();
  external void rebuild();
  external void dispose();
  external Object serialize([bool serializeTexture]);
  external static SpriteManager Parse(Object parsedManager, Scene scene, String rootUrl);
  external static Promise<SpriteManager> ParseFromFileAsync(String? name, String url, Scene scene, [String rootUrl]);
  external static Promise<SpriteManager> ParseFromSnippetAsync(String snippetId, Scene scene, [String rootUrl]);
}
