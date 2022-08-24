part of babylon_dart;

/// class MaterialDefines
@JS()
class MaterialDefines {
  // methods
  external void markAsProcessed();
  external void markAsUnprocessed();
  external void markAllAsDirty();
  external void markAsImageProcessingDirty();
  external void markAsLightDirty([bool disposed]);
  external void markAsAttributesDirty();
  external void markAsTexturesDirty();
  external void markAsFresnelDirty();
  external void markAsMiscDirty();
  external void markAsPrePassDirty();
  external void rebuild();
  external bool isEqual(MaterialDefines other);
  external void cloneTo(MaterialDefines other);
  external void reset();
  external String toString();
}
