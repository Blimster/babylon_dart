part of babylon;

/// class LinesMesh
@JS()
class LinesMesh extends Mesh {
  external LinesMesh(String name, [Scene scene, Node parent, LinesMesh source, bool doNotCloneChildren, dynamic useVertexColor, dynamic useVertexAlpha]);
  external Material get material;
  external bool get checkCollisions;
  external Color3 get color;
  external num get alpha;
  external num get intersectionThreshold;
  external dynamic get color4;
  external set material(Material value);
  external set color(Color3 color);
  external set alpha(num alpha);
  external set intersectionThreshold(num intersectionThreshold);
  external set color4(dynamic color4);
  external bool isReady([bool completeCheck]);
  external String getClassName();
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external AbstractMesh enableEdgesRendering([num epsilon, bool checkVerticesInsteadOfIndices]);
}
