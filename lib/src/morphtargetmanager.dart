part of babylon;

/// class MorphTargetManager
@JS()
class MorphTargetManager {
  external MorphTargetManager([Scene scene]);
  external num get uniqueId;
  external num get vertexCount;
  external bool get supportsNormals;
  external bool get supportsTangents;
  external bool get supportsUVs;
  external num get numTargets;
  external num get numInfluencers;
  external Float32List get influences;
  external bool get enableNormalMorphing;
  external bool get enableTangentMorphing;
  external bool get enableUVMorphing;
  external set enableNormalMorphing(bool enableNormalMorphing);
  external set enableTangentMorphing(bool enableTangentMorphing);
  external set enableUVMorphing(bool enableUVMorphing);
  external MorphTarget getActiveTarget(num index);
  external MorphTarget getTarget(num index);
  external void addTarget(MorphTarget target);
  external void removeTarget(MorphTarget target);
  external MorphTargetManager clone();
  external dynamic serialize();
  external void synchronize();
  external static MorphTargetManager Parse(dynamic serializationObject, Scene scene);
}
