part of babylon;

@JS()
class MultiMaterial extends Material {
  external MultiMaterial(String name, Scene scene);
  external Material getSubMaterial(num index);
  external List<BaseTexture> getActiveTextures();
  external String getClassName();
  external bool isReadyForSubMesh(AbstractMesh mesh, SubMesh subMesh, bool useInstances);
  external MultiMaterial clone(String name, bool cloneChildren);
  external dynamic serialize();
  external void dispose(bool forceDisposeEffect, bool forceDisposeTextures, bool forceDisposeChildren);
  external static MultiMaterial ParseMultiMaterial(dynamic parsedMultiMaterial, Scene scene);
}

