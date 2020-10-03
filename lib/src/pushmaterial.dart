part of babylon;

@JS()
class PushMaterial extends Material {
  external Effect getEffect();
  external bool isReady([AbstractMesh mesh, bool useInstances]);
  external void bindOnlyWorldMatrix(Matrix world);
  external void bindOnlyNormalMatrix(Matrix normalMatrix);
  external void bind(Matrix world, [Mesh mesh]);
}
