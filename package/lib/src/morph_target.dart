part of babylon_dart;

/// class MorphTarget
@JS()
class MorphTarget implements IAnimatable {
  // properties
  external String name;
  external List<Animation>? animations;
  external Observable<bool> onInfluenceChanged;
  external String id;
  // methods
  external void setPositions(Float32List? data);
  external Float32List? getPositions();
  external void setNormals(Float32List? data);
  external Float32List? getNormals();
  external void setTangents(Float32List? data);
  external Float32List? getTangents();
  external void setUVs(Float32List? data);
  external Float32List? getUVs();
  external MorphTarget clone();
  external Object serialize();
  external String getClassName();
  external static MorphTarget Parse(Object serializationObject, [Scene scene]);
  external static MorphTarget FromMesh(AbstractMesh mesh, [String name, num influence]);
}
