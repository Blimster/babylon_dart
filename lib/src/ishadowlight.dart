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
  bool computeTransformedInformation();
  Scene getScene();
  IShadowLight setShadowProjectionMatrix(Matrix matrix, Matrix viewMatrix, List<AbstractMesh> renderList);
  num getDepthScale();
  bool needCube();
  bool needProjectionMatrixCompute();
  void forceProjectionMatrixCompute();
  Vector3 getShadowDirection([num faceIndex]);
  num getDepthMinZ(Camera activeCamera);
  num getDepthMaxZ(Camera activeCamera);
}
