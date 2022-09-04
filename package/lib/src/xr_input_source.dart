part of babylon_dart;

/// interface XRInputSource
@JS()
abstract class XRInputSource {
  // properties
  external static final XRHandedness handedness;
  external static final XRTargetRayMode targetRayMode;
  external static final XRSpace targetRaySpace;
  external static final XRSpace gripSpace;
  external static final Gamepad gamepad;
  external static final List<String> profiles;
  external static final XRHand hand;
}
