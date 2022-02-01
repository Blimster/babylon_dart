part of babylon;

/// class DepthCullingState
@JS()
class DepthCullingState {
  external DepthCullingState();
  external bool get isDirty;
  external num get zOffset;
  external num get cullFace;
  external bool get cull;
  external num get depthFunc;
  external bool get depthMask;
  external bool get depthTest;
  external num get frontFace;
  external set zOffset(num value);
  external set cullFace(num value);
  external set cull(bool value);
  external set depthFunc(num value);
  external set depthMask(bool value);
  external set depthTest(bool value);
  external set frontFace(num value);
  external void reset();
  external void apply(RenderingContext gl);
}
