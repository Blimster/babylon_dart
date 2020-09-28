part of babylon;

@JS()
class ShadowLight extends Light {
  void Function(Matrix viewMatrix,List<AbstractMesh> renderList,Matrix result) customProjectionMatrixBuilder;
  Vector3 transformedPosition;
  Vector3 transformedDirection;
  external Vector3 get position;
  external Vector3 get direction;
  external num get shadowMinZ;
  external num get shadowMaxZ;
  external set position(Vector3 value);
  external set direction(Vector3 value);
  external set shadowMinZ(num value);
  external set shadowMaxZ(num value);
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
}

