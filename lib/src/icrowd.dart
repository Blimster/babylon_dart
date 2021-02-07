part of babylon;

/// interface ICrowd
@JS()
abstract class ICrowd {
  num addAgent(Vector3 pos, IAgentParameters parameters, TransformNode transform);
  Vector3 getAgentPosition(num index);
  void getAgentPositionToRef(num index, Vector3 result);
  Vector3 getAgentVelocity(num index);
  void getAgentVelocityToRef(num index, Vector3 result);
  Vector3 getAgentNextTargetPath(num index);
  num getAgentState(num index);
  bool overOffmeshConnection(num index);
  void getAgentNextTargetPathToRef(num index, Vector3 result);
  void removeAgent(num index);
  List<num> getAgents();
  void update(num deltaTime);
  void agentGoto(num index, Vector3 destination);
  void agentTeleport(num index, Vector3 destination);
  void updateAgentParameters(num index, IAgentParameters parameters);
  void setDefaultQueryExtent(Vector3 extent);
  Vector3 getDefaultQueryExtent();
  void getDefaultQueryExtentToRef(Vector3 result);
  void dispose();
}
