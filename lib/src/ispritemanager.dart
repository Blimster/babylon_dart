part of babylon;

/// interface ISpriteManager
@JS()
abstract class ISpriteManager extends IDisposable {
  num layerMask;
  bool isPickable;
  num renderingGroupId;
  List<Sprite> sprites;
  external PickingInfo intersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate, bool fastCheck]);
  external List<PickingInfo> multiIntersects(Ray ray, Camera camera, [bool Function(Sprite sprite) predicate]);
  external void render();
}
