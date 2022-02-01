part of babylon;

/// class DepthRenderer
@JS()
class DepthRenderer {
  external DepthRenderer(Scene scene, [num type, Camera camera, bool storeNonLinearDepth]);
  external bool get isPacked;
  external bool get enabled;
  external bool get useOnlyInActiveCamera;
  external set enabled(bool enabled);
  external set useOnlyInActiveCamera(bool useOnlyInActiveCamera);
  external bool isReady(SubMesh subMesh, bool useInstances);
  external RenderTargetTexture getDepthMap();
  external void dispose();
}
