part of babylon_dart;

/// class Node
@JS()
class Node implements IBehaviorAware<Node> {
  // properties
  external String name;
  external String id;
  external num uniqueId;
  external String state;
  external Object metadata;
  external Object reservedDataStore;
  external List<IInspectable> inspectableCustomProperties;
  external List<Animation> animations;
  external void Function(Node node)? onReady;
  external Observable<Node> onDisposeObservable;
  // methods
  external static void AddNodeConstructor(String type, NodeConstructor constructorFunc);
  external static Node Function()? Construct(String type, String name, Scene scene, [Object options]);
  external bool isDisposed();
  external String getClassName();
  external Scene getScene();
  external Engine getEngine();
  external Node addBehavior(Behavior<Node> behavior, [bool attachImmediately]);
  external Node removeBehavior(Behavior<Node> behavior);
  external Behavior<Node>? getBehaviorByName(String name);
  external Matrix getWorldMatrix();
  external void updateCache([bool force]);
  external bool isSynchronizedWithParent();
  external bool isSynchronized();
  external bool isReady([bool completeCheck]);
  external Node markAsDirty([String property]);
  external bool isEnabled([bool checkAncestors]);
  external void setEnabled(bool value);
  external bool isDescendantOf(Node ancestor);
  external List<T> getDescendants<T extends Node>([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external List<Node> getDescendants([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external List<T> getChildMeshes<T extends AbstractMesh>([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external List<AbstractMesh> getChildMeshes([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external List<T> getChildren<T extends Node>([bool Function(Node node) predicate, bool directDescendantsOnly]);
  external List<Node> getChildren([bool Function(Node node) predicate, bool directDescendantsOnly]);
  external Animation? getAnimationByName(String name);
  external void createAnimationRange(String name, num from, num to);
  external void deleteAnimationRange(String name, [bool deleteFrames]);
  external AnimationRange? getAnimationRange(String name);
  external List<AnimationRange?> getAnimationRanges();
  external Animatable? beginAnimation(String name, [bool loop, num speedRatio, void Function() onAnimationEnd]);
  external Object serializeAnimationRanges();
  external Matrix computeWorldMatrix([bool force]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external static void ParseAnimationRanges(Node node, Object parsedNode, Scene scene);
  external NodeGetHierarchyBoundingVectors getHierarchyBoundingVectors([bool includeDescendants, bool Function(AbstractMesh abstractMesh)? predicate]);
}

@JS()
@anonymous
class NodeGetHierarchyBoundingVectors {
}
