part of babylon;

/// class NullEngineOptions
@JS()
class NullEngineOptions {
  external num get renderWidth;
  external num get renderHeight;
  external num get textureSize;
  external bool get deterministicLockstep;
  external num get lockstepMaxSteps;
  external bool get useHighPrecisionMatrix;
  external set renderWidth(num renderWidth);
  external set renderHeight(num renderHeight);
  external set textureSize(num textureSize);
  external set deterministicLockstep(bool deterministicLockstep);
  external set lockstepMaxSteps(num lockstepMaxSteps);
  external set useHighPrecisionMatrix(bool useHighPrecisionMatrix);
}
