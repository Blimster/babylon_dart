part of babylon;

/// interface INavigationEnginePlugin
@JS()
abstract class INavigationEnginePlugin {
  external String name;
  void createNavMesh(List<Mesh> meshes, INavMeshParameters parameters);
  Mesh createDebugNavMesh(Scene scene);
  Vector3 getClosestPoint(Vector3 position);
  void getClosestPointToRef(Vector3 position, Vector3 result);
  Vector3 getRandomPointAround(Vector3 position, num maxRadius);
  void getRandomPointAroundToRef(Vector3 position, num maxRadius, Vector3 result);
  Vector3 moveAlong(Vector3 position, Vector3 destination);
  void moveAlongToRef(Vector3 position, Vector3 destination, Vector3 result);
  List<Vector3> computePath(Vector3 start, Vector3 end);
  bool isSupported();
  ICrowd createCrowd(num maxAgents, num maxAgentRadius, Scene scene);
  void setDefaultQueryExtent(Vector3 extent);
  Vector3 getDefaultQueryExtent();
  void buildFromNavmeshData(Uint8List data);
  Uint8List getNavmeshData();
  void getDefaultQueryExtentToRef(Vector3 result);
  void setTimeStep(num newTimeStep);
  num getTimeStep();
  void setMaximumSubStepCount(num newStepCount);
  num getMaximumSubStepCount();
  void dispose();
}
