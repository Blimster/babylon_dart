part of babylon;

/// class MorphTarget
@JS()
class MorphTarget implements IAnimatable {
  external MorphTarget(String name, [num influence, Scene scene]);
  external num get influence;
  external AnimationPropertiesOverride get animationPropertiesOverride;
  external num get uniqueId;
  external bool get hasPositions;
  external bool get hasNormals;
  external bool get hasTangents;
  external bool get hasUVs;
  external String get name;
  external List<Animation> get animations;
  external Observable<bool> get onInfluenceChanged;
  external String get id;
  external set influence(num influence);
  external set animationPropertiesOverride(AnimationPropertiesOverride value);
  external set name(String name);
  external set animations(List<Animation> animations);
  external set onInfluenceChanged(Observable<bool> onInfluenceChanged);
  external set id(String id);
  external void setPositions(Float32List data);
  external Float32List getPositions();
  external void setNormals(Float32List data);
  external Float32List getNormals();
  external void setTangents(Float32List data);
  external Float32List getTangents();
  external void setUVs(Float32List data);
  external Float32List getUVs();
  external MorphTarget clone();
  external dynamic serialize();
  external String getClassName();
  external static MorphTarget Parse(dynamic serializationObject);
  external static MorphTarget FromMesh(AbstractMesh mesh, [String name, num influence]);
}
