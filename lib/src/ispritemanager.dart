part of babylon;

/// interface ISpriteManager
@JS()
abstract class ISpriteManager extends IDisposable {
  external String name;
  external num layerMask;
  external bool isPickable;
  external Scene scene;
  external num renderingGroupId;
  external List<Sprite> sprites;
  external Texture texture;
  external num cellWidth;
  external num cellHeight;
  PickingInfo intersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate, bool fastCheck]);
  List<PickingInfo> multiIntersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate]);
  void render();
}
