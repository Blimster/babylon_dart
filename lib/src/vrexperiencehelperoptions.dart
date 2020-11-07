part of babylon;

/// interface VRExperienceHelperOptions
@JS()
abstract class VRExperienceHelperOptions extends WebVROptions {
  bool createDeviceOrientationCamera;
  bool createFallbackVRDeviceOrientationFreeCamera;
  bool laserToggle;
  List<Mesh> floorMeshes;
  VRCameraMetrics vrDeviceOrientationCameraMetrics;
  bool useXR;
}
