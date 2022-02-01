part of babylon;

/// interface IShadowLight
@JS()
abstract class IShadowLight extends Light {
  external String id;
  external Vector3 position;
  external Vector3 direction;
  external Vector3 transformedPosition;
  external Vector3 transformedDirection;
  external String name;
  external num shadowMinZ;
  external num shadowMaxZ;
  external void Function(Matrix viewMatrix, List<AbstractMesh> renderList, Matrix result) customProjectionMatrixBuilder;
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
