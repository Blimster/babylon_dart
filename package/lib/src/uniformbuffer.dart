part of babylon;

/// class UniformBuffer
@JS()
class UniformBuffer {
  external UniformBuffer(Engine engine, [List<num> data, bool dynamic]);
  external bool get useUbo;
  external bool get isSync;
  external void Function(String name, Float32List matrix) get updateMatrix3x3;
  external void Function(String name, Float32List matrix) get updateMatrix2x2;
  external void Function(String name, num x) get updateFloat;
  external void Function(String name, num x, num y, String suffix) get updateFloat2;
  external void Function(String name, num x, num y, num z, String suffix) get updateFloat3;
  external void Function(String name, num x, num y, num z, num w, String suffix) get updateFloat4;
  external void Function(String name, Matrix mat) get updateMatrix;
  external void Function(String name, Vector3 vector) get updateVector3;
  external void Function(String name, Vector4 vector) get updateVector4;
  external void Function(String name, Color3 color, String suffix) get updateColor3;
  external void Function(String name, Color3 color, num alpha, String suffix) get updateColor4;
  external set updateMatrix3x3(void Function(String name, Float32List matrix) updateMatrix3x3);
  external set updateMatrix2x2(void Function(String name, Float32List matrix) updateMatrix2x2);
  external set updateFloat(void Function(String name, num x) updateFloat);
  external set updateFloat2(void Function(String name, num x, num y, String suffix) updateFloat2);
  external set updateFloat3(void Function(String name, num x, num y, num z, String suffix) updateFloat3);
  external set updateFloat4(void Function(String name, num x, num y, num z, num w, String suffix) updateFloat4);
  external set updateMatrix(void Function(String name, Matrix mat) updateMatrix);
  external set updateVector3(void Function(String name, Vector3 vector) updateVector3);
  external set updateVector4(void Function(String name, Vector4 vector) updateVector4);
  external set updateColor3(void Function(String name, Color3 color, String suffix) updateColor3);
  external set updateColor4(void Function(String name, Color3 color, num alpha, String suffix) updateColor4);
  external bool isDynamic();
  external Float32List getData();
  external DataBuffer getBuffer();
  external void addUniform(String name, dynamic size);
  external void addMatrix(String name, Matrix mat);
  external void addFloat2(String name, num x, num y);
  external void addFloat3(String name, num x, num y, num z);
  external void addColor3(String name, Color3 color);
  external void addColor4(String name, Color3 color, num alpha);
  external void addVector3(String name, Vector3 vector);
  external void addMatrix3x3(String name);
  external void addMatrix2x2(String name);
  external void create();
  external void update();
  external void updateUniform(String uniformName, Float32List data, num size);
  external void setTexture(String name, BaseTexture texture);
  external void updateUniformDirectly(String uniformName, Float32List data);
  external void bindToEffect(Effect effect, String name);
  external void dispose();
}
