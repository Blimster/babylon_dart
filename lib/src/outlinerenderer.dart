part of babylon;

/// class OutlineRenderer
@JS()
class OutlineRenderer implements ISceneComponent {
  external OutlineRenderer(Scene scene);
  external String get name;
  external Scene get scene;
  external num get zOffset;
  external set name(String name);
  external set scene(Scene scene);
  external set zOffset(num zOffset);
  external void register();
  external void rebuild();
  external void dispose();
  external bool isReady(SubMesh subMesh, bool useInstances);
}
