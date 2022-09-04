part of babylon_dart;

/// interface EngineOptions
@JS()
abstract class EngineOptions extends WebGLContextAttributes {
  // properties
  external num limitDeviceRatio;
  external bool autoEnableWebVR;
  external bool disableWebGL2Support;
  external bool audioEngine;
  external IAudioEngineOptions audioEngineOptions;
  external bool deterministicLockstep;
  external num lockstepMaxSteps;
  external num timeStep;
  external bool doNotHandleContextLost;
  external bool doNotHandleTouchAction;
  external bool useHighPrecisionFloats;
  external bool xrCompatible;
  external bool useHighPrecisionMatrix;
  external bool failIfMajorPerformanceCaveat;
  external bool adaptToDeviceRatio;
  external bool forceSRGBBufferSupportState;
  external bool useExactSrgbConversions;
}
