part of babylon;

/// interface ISpriteManager
@JS()
abstract class ISpriteManager extends IDisposable {
  String name;
  num layerMask;
  bool isPickable;
  Scene scene;
  num renderingGroupId;
  List<Sprite> sprites;
  Texture texture;
  num cellWidth;
  num cellHeight;
  PickingInfo intersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate, bool fastCheck]);
  List<PickingInfo> multiIntersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate]);
  void render();
}
