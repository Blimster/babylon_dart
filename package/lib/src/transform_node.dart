part of babylon_dart;

/// class TransformNode
@JS()
class TransformNode extends Node {
  // properties
  external num BILLBOARDMODE_NONE;
  external num BILLBOARDMODE_X;
  external num BILLBOARDMODE_Y;
  external num BILLBOARDMODE_Z;
  external num BILLBOARDMODE_ALL;
  external num BILLBOARDMODE_USE_POSITION;
  external num scalingDeterminant;
  external bool ignoreNonUniformScaling;
  external bool reIntegrateRotationIntoRotationQuaternion;
  external Observable<TransformNode> onAfterWorldMatrixUpdateObservable;
  // methods
  external String getClassName();
  external bool isUsingPivotMatrix();
  external TransformNode updatePoseMatrix(Matrix matrix);
  external Matrix getPoseMatrix();
  external TransformNode setPreTransformMatrix(Matrix matrix);
  external TransformNode setPivotMatrix(Matrix matrix, [bool postMultiplyPivotMatrix]);
  external Matrix getPivotMatrix();
  external TransformNode? instantiateHierarchy([TransformNode? newParent, TransformNodeInstantiateHierarchyOptions options, void Function(TransformNode source, TransformNode clone) onNewNodeCreated]);
  external TransformNode freezeWorldMatrix([Matrix? newWorldMatrix, bool decompose]);
  external THIS unfreezeWorldMatrix<THIS extends TransformNode>();
  external Vector3 getAbsolutePosition();
  external TransformNode setAbsolutePosition(Vector3 absolutePosition);
  external TransformNode setPositionWithLocalVector(Vector3 vector3);
  external Vector3 getPositionExpressedInLocalSpace();
  external TransformNode locallyTranslate(Vector3 vector3);
  external TransformNode lookAt(Vector3 targetPoint, [num yawCor, num pitchCor, num rollCor, Space space]);
  external Vector3 getDirection(Vector3 localAxis);
  external TransformNode getDirectionToRef(Vector3 localAxis, Vector3 result);
  external TransformNode setDirection(Vector3 localAxis, [num yawCor, num pitchCor, num rollCor]);
  external TransformNode setPivotPoint(Vector3 point, [Space space]);
  external Vector3 getPivotPoint();
  external TransformNode getPivotPointToRef(Vector3 result);
  external Vector3 getAbsolutePivotPoint();
  external TransformNode getAbsolutePivotPointToRef(Vector3 result);
  external Node markAsDirty([String property]);
  external TransformNode setParent(Node? node, [bool preserveScalingSign]);
  external TransformNode attachToBone(Bone bone, TransformNode affectedTransformNode);
  external TransformNode detachFromBone([bool resetToPreviousParent]);
  external TransformNode rotate(Vector3 axis, num amount, [Space space]);
  external TransformNode rotateAround(Vector3 point, Vector3 axis, num amount);
  external TransformNode translate(Vector3 axis, num distance, [Space space]);
  external TransformNode addRotation(num x, num y, num z);
  external Matrix computeWorldMatrix([bool force]);
  external void resetLocalMatrix([bool independentOfChildren]);
  external TransformNode registerAfterWorldMatrixUpdate(void Function(TransformNode mesh) func);
  external TransformNode unregisterAfterWorldMatrixUpdate(void Function(TransformNode mesh) func);
  external Vector3 getPositionInCameraSpace([Camera? camera]);
  external num getDistanceToCamera([Camera? camera]);
  external TransformNode? clone(String name, Node? newParent, [bool doNotCloneChildren]);
  external Object serialize([Object currentSerializationObject]);
  external static TransformNode Parse(Object parsedTransformNode, Scene scene, String rootUrl);
  external List<TransformNode> getChildTransformNodes([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external TransformNode normalizeToUnitCube([bool includeDescendants, bool ignoreRotation, bool Function(AbstractMesh node)? predicate]);
}

@JS()
@anonymous
class TransformNodeInstantiateHierarchyOptions {
}
