part of babylon;

/// class DepthSortedParticle
@JS()
class DepthSortedParticle {
  external DepthSortedParticle(num idx, num ind, num indLength, num materialIndex);
  external num get idx;
  external num get ind;
  external num get indicesLength;
  external num get sqDistance;
  external num get materialIndex;
  external set idx(num idx);
  external set ind(num ind);
  external set indicesLength(num indicesLength);
  external set sqDistance(num sqDistance);
  external set materialIndex(num materialIndex);
}
