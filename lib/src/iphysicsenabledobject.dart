part of babylon;

/// interface IPhysicsEnabledObject
@JS()
abstract class IPhysicsEnabledObject {
  Vector3 position;
  Quaternion rotationQuaternion;
  Vector3 scaling;
  Vector3 rotation;
  dynamic parent;
  external BoundingInfo getBoundingInfo();
  external Matrix computeWorldMatrix(bool force);
  external Matrix getWorldMatrix();
  external List<AbstractMesh> getChildMeshes([bool directDescendantsOnly]);
  external dynamic getVerticesData(String kind);
  external Int32List getIndices();
  external Scene getScene();
  external Vector3 getAbsolutePosition();
  external Vector3 getAbsolutePivotPoint();
  external TransformNode setAbsolutePosition(Vector3 absolutePosition);
  external String getClassName();
}
