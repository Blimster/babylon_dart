part of babylon;

@JS()
@anonymous
class TransformNodeInstantiateHierarchyOptions {
  external factory TransformNodeInstantiateHierarchyOptions({bool doNotInstantiate});
  external bool get doNotInstantiate;
}

/// class TransformNode
@JS()
class TransformNode extends Node {
  external num get billboardMode;
  external bool get preserveParentRotationForBillboard;
  external bool get infiniteDistance;
  external Vector3 get position;
  external Vector3 get rotation;
  external Vector3 get scaling;
  external Quaternion get rotationQuaternion;
  external Vector3 get forward;
  external Vector3 get up;
  external Vector3 get right;
  external Vector3 get absolutePosition;
  external Vector3 get absoluteScaling;
  external Quaternion get absoluteRotationQuaternion;
  external bool get isWorldMatrixFrozen;
  external bool get nonUniformScaling;
  external static num get BILLBOARDMODE_NONE;
  external static num get BILLBOARDMODE_X;
  external static num get BILLBOARDMODE_Y;
  external static num get BILLBOARDMODE_Z;
  external static num get BILLBOARDMODE_ALL;
  external static num get BILLBOARDMODE_USE_POSITION;
  external num get scalingDeterminant;
  external bool get ignoreNonUniformScaling;
  external bool get reIntegrateRotationIntoRotationQuaternion;
  external Observable<TransformNode> get onAfterWorldMatrixUpdateObservable;
  external set billboardMode(num value);
  external set preserveParentRotationForBillboard(bool value);
  external set infiniteDistance(bool value);
  external set position(Vector3 newPosition);
  external set rotation(Vector3 newRotation);
  external set scaling(Vector3 newScaling);
  external set rotationQuaternion(Quaternion quaternion);
  external static set BILLBOARDMODE_NONE(num BILLBOARDMODE_NONE);
  external static set BILLBOARDMODE_X(num BILLBOARDMODE_X);
  external static set BILLBOARDMODE_Y(num BILLBOARDMODE_Y);
  external static set BILLBOARDMODE_Z(num BILLBOARDMODE_Z);
  external static set BILLBOARDMODE_ALL(num BILLBOARDMODE_ALL);
  external static set BILLBOARDMODE_USE_POSITION(num BILLBOARDMODE_USE_POSITION);
  external set scalingDeterminant(num scalingDeterminant);
  external set ignoreNonUniformScaling(bool ignoreNonUniformScaling);
  external set reIntegrateRotationIntoRotationQuaternion(bool reIntegrateRotationIntoRotationQuaternion);
  external set onAfterWorldMatrixUpdateObservable(Observable<TransformNode> onAfterWorldMatrixUpdateObservable);
  external String getClassName();
  external TransformNode updatePoseMatrix(Matrix matrix);
  external Matrix getPoseMatrix();
  external TransformNode markAsDirty(String property);
  external TransformNode setPreTransformMatrix(Matrix matrix);
  external TransformNode setPivotMatrix(Matrix matrix, [bool postMultiplyPivotMatrix]);
  external Matrix getPivotMatrix();
  external TransformNode instantiateHierarchy([TransformNode newParent, TransformNodeInstantiateHierarchyOptions options, void Function(TransformNode source, TransformNode clone) onNewNodeCreated]);
  external TransformNode freezeWorldMatrix([Matrix newWorldMatrix]);
  external TransformNode unfreezeWorldMatrix();
  external Vector3 getAbsolutePosition();
  external TransformNode setAbsolutePosition(Vector3 absolutePosition);
  external TransformNode setPositionWithLocalVector(Vector3 vector3);
  external Vector3 getPositionExpressedInLocalSpace();
  external TransformNode locallyTranslate(Vector3 vector3);
  external Vector3 getDirection(Vector3 localAxis);
  external TransformNode getDirectionToRef(Vector3 localAxis, Vector3 result);
  external TransformNode setDirection(Vector3 localAxis, [num yawCor, num pitchCor, num rollCor]);
  external Vector3 getPivotPoint();
  external TransformNode getPivotPointToRef(Vector3 result);
  external Vector3 getAbsolutePivotPoint();
  external TransformNode getAbsolutePivotPointToRef(Vector3 result);
  external TransformNode setParent(Node node);
  external TransformNode attachToBone(Bone bone, TransformNode affectedTransformNode);
  external TransformNode detachFromBone();
  external TransformNode rotateAround(Vector3 point, Vector3 axis, num amount);
  external TransformNode addRotation(num x, num y, num z);
  external Matrix computeWorldMatrix([bool force]);
  external void resetLocalMatrix([bool independentOfChildren]);
  external TransformNode registerAfterWorldMatrixUpdate(void Function(TransformNode mesh) func);
  external TransformNode unregisterAfterWorldMatrixUpdate(void Function(TransformNode mesh) func);
  external Vector3 getPositionInCameraSpace([Camera camera]);
  external num getDistanceToCamera([Camera camera]);
  external TransformNode clone(String name, Node newParent, [bool doNotCloneChildren]);
  external dynamic serialize([dynamic currentSerializationObject]);
  external static TransformNode Parse(dynamic parsedTransformNode, Scene scene, String rootUrl);
  external List<TransformNode> getChildTransformNodes([bool directDescendantsOnly, bool Function(Node node) predicate]);
  external void dispose([bool doNotRecurse, bool disposeMaterialAndTextures]);
  external TransformNode normalizeToUnitCube([bool includeDescendants, bool ignoreRotation, bool Function(AbstractMesh node) predicate]);
}
