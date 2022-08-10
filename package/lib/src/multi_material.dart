part of babylon_dart;

/// class MultiMaterial
@JS()
class MultiMaterial extends Material {
  // methods
  external List<Material?> getChildren();
  external Material? getSubMaterial(num index);
  external List<BaseTexture> getActiveTextures();
  external bool hasTexture(BaseTexture texture);
  external String getClassName();
  external bool isReadyForSubMesh(AbstractMesh mesh, SubMesh subMesh, [bool useInstances]);
  external MultiMaterial clone(String name, [bool cloneChildren]);
  external Object serialize();
  external void dispose([bool forceDisposeEffect, bool forceDisposeTextures, bool forceDisposeChildren]);
  external static MultiMaterial ParseMultiMaterial(Object parsedMultiMaterial, Scene scene);
}
