part of babylon_dart;

/// class WebXRAbstractMotionController
@JS()
abstract class WebXRAbstractMotionController implements IDisposable {
  // properties
  external Scene scene;
  external IMotionControllerLayout layout;
  external IMinimalMotionControllerObject gamepadObject;
  external MotionControllerHandedness handedness;
  external static final WebXRAbstractMotionControllerComponents components;
  external bool disableAnimation;
  external Observable<WebXRAbstractMotionController> onModelLoadedObservable;
  external String profileId;
  external AbstractMesh? rootMesh;
  // methods
  external void dispose();
  external List<WebXRControllerComponent> getAllComponentsOfType(MotionControllerComponentType type);
  external WebXRControllerComponent getComponent(String id);
  external List<String> getComponentIds();
  external WebXRControllerComponent? getComponentOfType(MotionControllerComponentType type);
  external WebXRControllerComponent getMainComponent();
  external Promise<bool> loadModel();
  external void updateFromXRFrame(XRFrame xrFrame);
  external Promise<bool> pulse(num value, num duration, [num hapticActuatorIndex]);
  external void updateModel(XRFrame xrFrame);
}

@JS()
@anonymous
class WebXRAbstractMotionControllerComponents {
}
