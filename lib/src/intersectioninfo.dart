part of babylon;

/// class IntersectionInfo
@JS()
class IntersectionInfo {
  external IntersectionInfo(num bu, num bv, num distance);
  external num get bu;
  external num get bv;
  external num get distance;
  external num get faceId;
  external num get subMeshId;
  external set bu(num bu);
  external set bv(num bv);
  external set distance(num distance);
  external set faceId(num faceId);
  external set subMeshId(num subMeshId);
}
