part of babylon;

/// class BoundingBoxRenderer
@JS()
class BoundingBoxRenderer implements ISceneComponent {
  external BoundingBoxRenderer(Scene scene);
  external String get name;
  external Scene get scene;
  external Color3 get frontColor;
  external Color3 get backColor;
  external bool get showBackLines;
  external SmartArray<BoundingBox> get renderList;
  external set scene(Scene scene);
  external set frontColor(Color3 frontColor);
  external set backColor(Color3 backColor);
  external set showBackLines(bool showBackLines);
  external set renderList(SmartArray<BoundingBox> renderList);
  external set name(String name);
  external void register();
  external void rebuild();
  external void reset();
  external void render(num renderingGroupId);
  external void renderOcclusionBoundingBox(AbstractMesh mesh);
  external void dispose();
}
