part of babylon;

/// class RecastJSPlugin
@JS()
class RecastJSPlugin implements INavigationEnginePlugin {
  external RecastJSPlugin([dynamic recastInjection]);
  external dynamic get bjsRECAST;
  external String get name;
  external dynamic get navMesh;
  external set bjsRECAST(dynamic bjsRECAST);
  external set name(String name);
  external set navMesh(dynamic navMesh);
  external void setTimeStep(num newTimeStep);
  external num getTimeStep();
  external void setMaximumSubStepCount(num newStepCount);
  external num getMaximumSubStepCount();
  external void createNavMesh(List<Mesh> meshes, INavMeshParameters parameters);
  external Mesh createDebugNavMesh(Scene scene);
  external Vector3 getClosestPoint(Vector3 position);
  external void getClosestPointToRef(Vector3 position, Vector3 result);
  external Vector3 getRandomPointAround(Vector3 position, num maxRadius);
  external void getRandomPointAroundToRef(Vector3 position, num maxRadius, Vector3 result);
  external Vector3 moveAlong(Vector3 position, Vector3 destination);
  external void moveAlongToRef(Vector3 position, Vector3 destination, Vector3 result);
  external List<Vector3> computePath(Vector3 start, Vector3 end);
  external ICrowd createCrowd(num maxAgents, num maxAgentRadius, Scene scene);
  external void setDefaultQueryExtent(Vector3 extent);
  external Vector3 getDefaultQueryExtent();
  external void buildFromNavmeshData(Uint8List data);
  external Uint8List getNavmeshData();
  external void getDefaultQueryExtentToRef(Vector3 result);
  external void dispose();
  external bool isSupported();
}
