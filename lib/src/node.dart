part of babylon;

@JS()
@anonymous
class NodeGetHierarchyBoundingVectorsResult {
  external factory NodeGetHierarchyBoundingVectorsResult({Vector3 min, Vector3 max});
  external Vector3 get min;
  external Vector3 get max;
}

/// class Node
@JS()
class Node implements IBehaviorAware<Node> {
  external Node();
  external Node.args(String name, [Scene scene]);
  external bool get doNotSerialize;
  external Node get parent;
  external List<Behavior<Node>> get behaviors;
  external Matrix get worldMatrixFromCache;
  external String get name;
  external String get id;
  external num get uniqueId;
  external String get state;
  external dynamic get metadata;
  external dynamic get reservedDataStore;
  external List<Animation> get animations;
  external void Function(Node node) get onReady;
  external Observable<Node> get onDisposeObservable;
  external set doNotSerialize(bool value);
  external set parent(Node parent);
  external set onDispose(void Function() callback);
  external set name(String name);
  external set id(String id);
  external set uniqueId(num uniqueId);
  external set state(String state);
  external set metadata(dynamic metadata);
  external set reservedDataStore(dynamic reservedDataStore);
  external set animations(List<Animation> animations);
  external set onReady(void Function(Node node) onReady);
  external set onDisposeObservable(Observable<Node> onDisposeObservable);
  external static Node Function() Construct(String type, String name, Scene scene, [dynamic options]);
  external bool isDisposed();
  external String getClassName();
  external Scene getScene();
  external Engine getEngine();
  external Node addBehavior(Behavior<Node> behavior);
  external Node removeBehavior(Behavior<Node> behavior);
  external Behavior<Node> getBehaviorByName(String name);
  external Matrix getWorldMatrix();
  external void updateCache([bool force]);
  external bool isSynchronizedWithParent();
  external bool isSynchronized();
  external bool isReady([bool completeCheck]);
  external bool isEnabled([bool checkAncestors]);
  external void setEnabled(bool value);
  external bool isDescendantOf(Node ancestor);
  external List<Node> getDescendants([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external List<AbstractMesh> getChildMeshes([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external List<Node> getChildren([bool Function(Node node) predicate, bool directDescendantsOnly]);
  external Animation getAnimationByName(String name);
  external void createAnimationRange(String name, num from, num to);
  external void deleteAnimationRange(String name, [bool deleteFrames]);
  external dynamic serializeAnimationRanges();
  external Matrix computeWorldMatrix([bool force]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external static void ParseAnimationRanges(Node node, dynamic parsedNode, Scene scene);
}
