part of babylon;

/// class PickingInfo
@JS()
class PickingInfo {
  external bool get hit;
  external num get distance;
  external Vector3 get pickedPoint;
  external AbstractMesh get pickedMesh;
  external num get bu;
  external num get bv;
  external num get faceId;
  external num get subMeshId;
  external Sprite get pickedSprite;
  external AbstractMesh get originMesh;
  external Ray get ray;
  external set hit(bool hit);
  external set distance(num distance);
  external set pickedPoint(Vector3 pickedPoint);
  external set pickedMesh(AbstractMesh pickedMesh);
  external set bu(num bu);
  external set bv(num bv);
  external set faceId(num faceId);
  external set subMeshId(num subMeshId);
  external set pickedSprite(Sprite pickedSprite);
  external set originMesh(AbstractMesh originMesh);
  external set ray(Ray ray);
  external Vector3 getNormal([bool useWorldCoordinates, bool useVerticesNormals]);
  external Vector2 getTextureCoordinates();
}
