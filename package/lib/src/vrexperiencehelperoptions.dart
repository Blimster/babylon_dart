part of babylon;

/// interface VRExperienceHelperOptions
@JS()
abstract class VRExperienceHelperOptions extends WebVROptions {
  external bool createDeviceOrientationCamera;
  external bool createFallbackVRDeviceOrientationFreeCamera;
  external bool laserToggle;
  external List<Mesh> floorMeshes;
  external VRCameraMetrics vrDeviceOrientationCameraMetrics;
  external bool useXR;
}
