part of babylon;

/// interface IPhysicsEnabledObject
@JS()
abstract class IPhysicsEnabledObject {
  Vector3 position;
  Quaternion rotationQuaternion;
  Vector3 scaling;
  Vector3 rotation;
  dynamic parent;
  BoundingInfo getBoundingInfo();
  Matrix computeWorldMatrix(bool force);
  Matrix getWorldMatrix();
  List<AbstractMesh> getChildMeshes([bool directDescendantsOnly]);
  dynamic getVerticesData(String kind);
  Int32List getIndices();
  Scene getScene();
  Vector3 getAbsolutePosition();
  Vector3 getAbsolutePivotPoint();
  TransformNode setAbsolutePosition(Vector3 absolutePosition);
  String getClassName();
}
