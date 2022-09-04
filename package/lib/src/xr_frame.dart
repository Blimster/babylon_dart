part of babylon_dart;

/// interface XRFrame
@JS()
abstract class XRFrame {
  // properties
  external static final XRSession session;
  external XRAnchorSet trackedAnchors;
  external XRWorldInformation worldInformation;
  external XRPlaneSet detectedPlanes;
  // methods
  XRPose? getPose(XRSpace space, XRSpace baseSpace);
  bool fillPoses(List<XRSpace> spaces, XRSpace baseSpace, Float32List transforms);
  XRViewerPose? getViewerPose(XRReferenceSpace referenceSpace);
  List<XRHitTestResult> getHitTestResults(XRHitTestSource hitTestSource);
  List<XRTransientInputHitTestResult> getHitTestResultsForTransientInput(XRTransientInputHitTestSource hitTestSource);
  Promise<XRAnchor> createAnchor(XRRigidTransform pose, XRSpace space);
  XRJointPose getJointPose(XRJointSpace joint, XRSpace baseSpace);
  bool fillJointRadii(List<XRJointSpace> jointSpaces, Float32List radii);
  List<XRImageTrackingResult> getImageTrackingResults();
  XRLightEstimate getLightEstimate(XRLightProbe xrLightProbe);
}
