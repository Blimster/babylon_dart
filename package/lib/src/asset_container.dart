part of babylon_dart;

/// class AssetContainer
@JS()
class AssetContainer extends AbstractScene {
  // properties
  external Scene scene;
  // methods
  external InstantiatedEntries instantiateModelsToScene([String Function(String sourceName) nameFunction, bool cloneMaterials, AssetContainerInstantiateModelsToSceneOptions options]);
  external void addAllToScene();
  external void addToScene([bool Function(Object entity)? predicate]);
  external void removeAllFromScene();
  external void removeFromScene([bool Function(Object entity)? predicate]);
  external void dispose();
  external void moveAllFromScene([KeepAssets keepAssets]);
  external Mesh createRootMesh();
  external List<AnimationGroup> mergeAnimationsTo(Scene? scene, List<Animatable> animatables, [Node? Function(Object target)? targetConverter]);
}

@JS()
@anonymous
class AssetContainerInstantiateModelsToSceneOptions {
}
