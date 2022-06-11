part of babylon_dart;

/// class PickingInfo
@JS()
class PickingInfo {
  // properties
  external bool hit;
  external num distance;
  external Vector3? pickedPoint;
  external AbstractMesh? pickedMesh;
  external num bu;
  external num bv;
  external num faceId;
  external num subMeshFaceId;
  external num subMeshId;
  external Sprite? pickedSprite;
  external num thinInstanceIndex;
  external Ray? ray;
  external AbstractMesh? originMesh;
  external TransformNode? aimTransform;
  external TransformNode? gripTransform;
  // methods
  external Vector3? getNormal([bool useWorldCoordinates, bool useVerticesNormals]);
  external Vector2? getTextureCoordinates();
}
