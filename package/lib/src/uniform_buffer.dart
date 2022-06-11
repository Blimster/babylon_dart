part of babylon_dart;

/// class UniformBuffer
@JS()
class UniformBuffer {
  // properties
  external void Function(String name, Float32List matrix) updateMatrix3x3;
  external void Function(String name, Float32List matrix) updateMatrix2x2;
  external void Function(String name, num x) updateFloat;
  external void Function(String name, num x, num y, [String suffix]) updateFloat2;
  external void Function(String name, num x, num y, num z, [String suffix]) updateFloat3;
  external void Function(String name, num x, num y, num z, num w, [String suffix]) updateFloat4;
  external void Function(String name, Float32List array) updateFloatArray;
  external void Function(String name, List<num> array) updateArray;
  external void Function(String name, Int32Array array) updateIntArray;
  external void Function(String name, IMatrixLike mat) updateMatrix;
  external void Function(String name, Float32List mat) updateMatrices;
  external void Function(String name, IVector3Like vector) updateVector3;
  external void Function(String name, IVector4Like vector) updateVector4;
  external void Function(String name, IColor3Like color, [String suffix]) updateColor3;
  external void Function(String name, IColor3Like color, num alpha, [String suffix]) updateColor4;
  external void Function(String name, IColor4Like color, [String suffix]) updateDirectColor4;
  external void Function(String name, num x, [String suffix]) updateInt;
  external void Function(String name, num x, num y, [String suffix]) updateInt2;
  external void Function(String name, num x, num y, num z, [String suffix]) updateInt3;
  external void Function(String name, num x, num y, num z, num w, [String suffix]) updateInt4;
  // methods
  external bool isDynamic();
  external Float32List getData();
  external DataBuffer? getBuffer();
  external void addUniform(String name, Object size, [num arraySize]);
  external void addMatrix(String name, IMatrixLike mat);
  external void addFloat2(String name, num x, num y);
  external void addFloat3(String name, num x, num y, num z);
  external void addColor3(String name, IColor3Like color);
  external void addColor4(String name, IColor3Like color, num alpha);
  external void addVector3(String name, IVector3Like vector);
  external void addMatrix3x3(String name);
  external void addMatrix2x2(String name);
  external void create();
  external void update();
  external void updateUniform(String uniformName, Float32List data, num size);
  external void updateUniformArray(String uniformName, Float32List data, num size);
  external void setTexture(String name, ThinTexture? texture);
  external void updateUniformDirectly(String uniformName, Float32List data);
  external void bindToEffect(Effect effect, String name);
  external void bindUniformBuffer();
  external void unbindEffect();
  external bool setDataBuffer(DataBuffer dataBuffer);
  external void dispose();
}
