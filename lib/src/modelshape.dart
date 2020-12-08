part of babylon;

/// class ModelShape
@JS()
class ModelShape {
  external ModelShape(num id, List<Vector3> shape, List<num> indices, List<num> normals, List<num> colors, List<num> shapeUV, void Function(SolidParticle particle, num i, num s) posFunction, void Function(SolidParticle particle, Vector3 vertex, num i) vtxFunction, Material material);
  external num get shapeID;
  external set shapeID(num shapeID);
}
