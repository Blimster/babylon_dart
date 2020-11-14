part of babylon;

/// class MultiMaterial
@JS()
class MultiMaterial extends Material {
  external MultiMaterial(String name, Scene scene);
  external List<Material> get subMaterials;
  external set subMaterials(List<Material> value);
  external List<Material> getChildren();
  external Material getSubMaterial(num index);
  external List<BaseTexture> getActiveTextures();
  external bool hasTexture(BaseTexture texture);
  external String getClassName();
  external bool isReadyForSubMesh(AbstractMesh mesh, SubMesh subMesh, [bool useInstances]);
  external MultiMaterial clone(String name);
  external dynamic serialize();
  external void dispose([bool forceDisposeEffect, bool forceDisposeTextures, bool notBoundToMesh]);
  external static MultiMaterial ParseMultiMaterial(dynamic parsedMultiMaterial, Scene scene);
}
