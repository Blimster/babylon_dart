part of babylon;

/// class PrePassConfiguration
@JS()
class PrePassConfiguration {
  external Matrix get previousViewProjection;
  external set previousViewProjection(Matrix previousViewProjection);
  external static void AddUniforms(List<String> uniforms);
  external static void AddSamplers(List<String> samplers);
  external void bindForSubMesh(Effect effect, Scene scene, Mesh mesh, Matrix world, bool isFrozen);
}
