part of babylon;

@JS()
class AbstractScene {
  external List<Light> get lights;
  external List<Camera> get cameras;
  external List<AbstractMesh> get meshes;
}

@JS()
class Scene extends AbstractScene {
  external static int get FOGMODE_NONE;
  external static int get FOGMODE_LINEAR;
  external Scene(Engine engine);
  external void render();
  external set clearColor(Color4 c);
  external Color4 get clearColor;
  external set fogMode(int v);
  external int get fogMode;
  external set fogStart(num v);
  external num get fogStart;
  external set fogEnd(num v);
  external num get fogEnd;
  external set fogColor(Color3 v);
  external Color3 get fogColor;
  external num get pointerX;
  external num get pointerY;
  external AbstractMesh getMeshByName(String name);
  external void enablePhysics(Vector3 gravity, IPhysicsEnginePlugin plugin);
  external Ray createPickingRay(num x, num y, Matrix world, Camera camera);
  external PickingInfo pickWithRay(Ray ray);
  external set onPointerMove(void Function(Event event, PickingInfo pickingInfo, int type) v);
  external set onPointerDown(void Function(PointerEvent event, PickingInfo pickingInfo, int type) v);
  external set onPointerUp(void Function(PointerEvent event, PickingInfo pickingInfo, int type) v);
}

@JS()
class PickingInfo {
  external Mesh get pickedMesh;
  external Vector3 get pickedPoint;
}
