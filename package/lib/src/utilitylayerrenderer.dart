part of babylon;

/// class UtilityLayerRenderer
@JS()
class UtilityLayerRenderer implements IDisposable {
  external UtilityLayerRenderer(Scene originalScene, [bool handleEvents]);
  external UtilityLayerRenderer get DefaultUtilityLayer;
  external UtilityLayerRenderer get DefaultKeepDepthUtilityLayer;
  external Scene get originalScene;
  external bool get pickUtilitySceneFirst;
  external Scene get utilityLayerScene;
  external bool get shouldRender;
  external bool get onlyCheckPointerDownEvents;
  external bool get processAllEvents;
  external Observable<num> get onPointerOutObservable;
  external bool Function(AbstractMesh mesh) get mainSceneTrackerPredicate;
  external set originalScene(Scene originalScene);
  external set pickUtilitySceneFirst(bool pickUtilitySceneFirst);
  external set utilityLayerScene(Scene utilityLayerScene);
  external set shouldRender(bool shouldRender);
  external set onlyCheckPointerDownEvents(bool onlyCheckPointerDownEvents);
  external set processAllEvents(bool processAllEvents);
  external set onPointerOutObservable(Observable<num> onPointerOutObservable);
  external set mainSceneTrackerPredicate(bool Function(AbstractMesh mesh) mainSceneTrackerPredicate);
  external Camera getRenderCamera([bool getRigParentIfPossible]);
  external void setRenderCamera(Camera cam);
  external void render();
  external void dispose();
}
