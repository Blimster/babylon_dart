part of babylon;

/// interface IShadowLight
@JS()
abstract class IShadowLight extends Light {
  String id;
  Vector3 position;
  Vector3 direction;
  Vector3 transformedPosition;
  Vector3 transformedDirection;
  String name;
  num shadowMinZ;
  num shadowMaxZ;
  void Function(Matrix viewMatrix, List<AbstractMesh> renderList, Matrix result) customProjectionMatrixBuilder;
  external bool computeTransformedInformation();
  external Scene getScene();
  external IShadowLight setShadowProjectionMatrix(Matrix matrix, Matrix viewMatrix, List<AbstractMesh> renderList);
  external num getDepthScale();
  external bool needCube();
  external bool needProjectionMatrixCompute();
  external void forceProjectionMatrixCompute();
  external Vector3 getShadowDirection([num faceIndex]);
  external num getDepthMinZ(Camera activeCamera);
  external num getDepthMaxZ(Camera activeCamera);
}
