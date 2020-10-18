part of babylon;

/// class GroundMesh
@JS()
class GroundMesh extends Mesh {
  external GroundMesh(String name, Scene scene);
  external num get subdivisions;
  external num get subdivisionsX;
  external num get subdivisionsY;
  external bool get generateOctree;
  external set generateOctree(bool generateOctree);
  external String getClassName();
  external void optimize(num chunksCount, [num octreeBlocksSize]);
  external num getHeightAtCoordinates(num x, num z);
  external Vector3 getNormalAtCoordinates(num x, num z);
  external GroundMesh getNormalAtCoordinatesToRef(num x, num z, Vector3 ref);
  external GroundMesh updateCoordinateHeights();
  external void serialize([dynamic currentSerializationObject]);
  external static GroundMesh Parse(dynamic parsedTransformNode, Scene scene, String rootUrl);
}
