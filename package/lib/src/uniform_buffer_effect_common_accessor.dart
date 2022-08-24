part of babylon_dart;

/// class UniformBufferEffectCommonAccessor
@JS()
class UniformBufferEffectCommonAccessor {
  // properties
  external void Function(String name, Float32List matrix) setMatrix3x3;
  external void Function(String name, Float32List matrix) setMatrix2x2;
  external void Function(String name, num x) setFloat;
  external void Function(String name, num x, num y, [String suffix]) setFloat2;
  external void Function(String name, num x, num y, num z, [String suffix]) setFloat3;
  external void Function(String name, num x, num y, num z, num w, [String suffix]) setFloat4;
  external void Function(String name, Float32List array) setFloatArray;
  external void Function(String name, List<num> array) setArray;
  external void Function(String name, Int32List array) setIntArray;
  external void Function(String name, IMatrixLike mat) setMatrix;
  external void Function(String name, Float32List mat) setMatrices;
  external void Function(String name, IVector3Like vector) setVector3;
  external void Function(String name, IVector4Like vector) setVector4;
  external void Function(String name, IColor3Like color, [String suffix]) setColor3;
  external void Function(String name, IColor3Like color, num alpha, [String suffix]) setColor4;
  external void Function(String name, IColor4Like color) setDirectColor4;
  external void Function(String name, num x, [String suffix]) setInt;
  external void Function(String name, num x, num y, [String suffix]) setInt2;
  external void Function(String name, num x, num y, num z, [String suffix]) setInt3;
  external void Function(String name, num x, num y, num z, num w, [String suffix]) setInt4;
}
