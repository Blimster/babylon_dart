part of babylon;

/// class ShadowLight
@JS()
abstract class ShadowLight extends Light implements IShadowLight {
  external Vector3 get position;
  external Vector3 get direction;
  external num get shadowMinZ;
  external num get shadowMaxZ;
  external void Function(Matrix viewMatrix, List<AbstractMesh> renderList, Matrix result) get customProjectionMatrixBuilder;
  external Vector3 get transformedPosition;
  external Vector3 get transformedDirection;
  external set position(Vector3 value);
  external set direction(Vector3 value);
  external set shadowMinZ(num value);
  external set shadowMaxZ(num value);
  external set customProjectionMatrixBuilder(void Function(Matrix viewMatrix, List<AbstractMesh> renderList, Matrix result) customProjectionMatrixBuilder);
  external set transformedPosition(Vector3 transformedPosition);
  external set transformedDirection(Vector3 transformedDirection);
  external bool computeTransformedInformation();
  external num getDepthScale();
  external Vector3 getShadowDirection([num faceIndex]);
  external Vector3 getAbsolutePosition();
  external Vector3 setDirectionToTarget(Vector3 target);
  external Vector3 getRotation();
  external bool needCube();
  external bool needProjectionMatrixCompute();
  external void forceProjectionMatrixCompute();
  external Matrix computeWorldMatrix([bool force]);
  external num getDepthMinZ(Camera activeCamera);
  external num getDepthMaxZ(Camera activeCamera);
  external IShadowLight setShadowProjectionMatrix(Matrix matrix, Matrix viewMatrix, List<AbstractMesh> renderList);
}
