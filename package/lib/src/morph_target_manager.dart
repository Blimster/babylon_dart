part of babylon_dart;

/// class MorphTargetManager
@JS()
class MorphTargetManager implements IDisposable {
  // properties
  external bool EnableTextureStorage;
  external bool optimizeInfluencers;
  external bool enableNormalMorphing;
  external bool enableTangentMorphing;
  external bool enableUVMorphing;
  // methods
  external MorphTarget getActiveTarget(num index);
  external MorphTarget getTarget(num index);
  external void addTarget(MorphTarget target);
  external void removeTarget(MorphTarget target);
  external MorphTargetManager clone();
  external Object serialize();
  external void synchronize();
  external void dispose();
  external static MorphTargetManager Parse(Object serializationObject, Scene scene);
}
