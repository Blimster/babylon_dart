part of babylon;

/// interface INavMeshParameters
@JS()
@anonymous
class INavMeshParameters {
  external factory INavMeshParameters({num cs, num ch, num walkableSlopeAngle, num walkableHeight, num walkableClimb, num walkableRadius, num maxEdgeLen, num maxSimplificationError, num minRegionArea, num mergeRegionArea, num maxVertsPerPoly, num detailSampleDist, num detailSampleMaxError});
  external num get cs;
  external num get ch;
  external num get walkableSlopeAngle;
  external num get walkableHeight;
  external num get walkableClimb;
  external num get walkableRadius;
  external num get maxEdgeLen;
  external num get maxSimplificationError;
  external num get minRegionArea;
  external num get mergeRegionArea;
  external num get maxVertsPerPoly;
  external num get detailSampleDist;
  external num get detailSampleMaxError;
}
