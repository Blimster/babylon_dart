part of babylon;

@JS()
class PickingInfo {
  bool hit;
  num distance;
  Vector3 pickedPoint;
  AbstractMesh pickedMesh;
  num bu;
  num bv;
  num faceId;
  num subMeshFaceId;
  num subMeshId;
  Sprite pickedSprite;
  AbstractMesh originMesh;
  Ray ray;
  external Vector3 getNormal([bool useWorldCoordinates, bool useVerticesNormals]);
  external Vector2 getTextureCoordinates();
}

