part of babylon;

/// class GeometryBufferRenderer
@JS()
class GeometryBufferRenderer {
  external GeometryBufferRenderer(Scene scene, [num ratio]);
  external bool get isSupported;
  external bool get enablePosition;
  external bool get enableVelocity;
  external bool get enableReflectivity;
  external Scene get scene;
  external num get ratio;
  external num get samples;
  external static num get POSITION_TEXTURE_TYPE;
  external static num get VELOCITY_TEXTURE_TYPE;
  external static num get REFLECTIVITY_TEXTURE_TYPE;
  external List<AbstractMesh> get excludedSkinnedMeshesFromVelocity;
  external bool get renderTransparentMeshes;
  external set renderList(List<Mesh> meshes);
  external set enablePosition(bool enable);
  external set enableVelocity(bool enable);
  external set enableReflectivity(bool enable);
  external set samples(num value);
  external set excludedSkinnedMeshesFromVelocity(List<AbstractMesh> excludedSkinnedMeshesFromVelocity);
  external set renderTransparentMeshes(bool renderTransparentMeshes);
  external num getTextureIndex(num textureType);
  external bool isReady(SubMesh subMesh, bool useInstances);
  external MultiRenderTarget getGBuffer();
  external void dispose();
}
