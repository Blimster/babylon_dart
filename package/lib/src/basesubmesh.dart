part of babylon;

/// class BaseSubMesh
@JS()
class BaseSubMesh {
  external MaterialDefines get materialDefines;
  external Effect get effect;
  external set materialDefines(MaterialDefines defines);
  external void setEffect(Effect effect, [MaterialDefines defines]);
}
