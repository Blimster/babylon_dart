part of babylon;

/// class PushMaterial
@JS()
class PushMaterial extends Material {
  external bool get allowShaderHotSwapping;
  external set allowShaderHotSwapping(bool allowShaderHotSwapping);
  external Effect getEffect();
  external bool isReady([AbstractMesh mesh, bool useInstances]);
  external void bindOnlyWorldMatrix(Matrix world);
  external void bindOnlyNormalMatrix(Matrix normalMatrix);
  external void bind(Matrix world, [Mesh mesh]);
}
