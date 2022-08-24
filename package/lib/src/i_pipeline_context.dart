part of babylon_dart;

/// interface IPipelineContext
@JS()
abstract class IPipelineContext {
  // properties
  external bool isAsync;
  external bool isReady;
  // methods
  void dispose();
  void setInt(String uniformName, num value);
  void setInt2(String uniformName, num x, num y);
  void setInt3(String uniformName, num x, num y, num z);
  void setInt4(String uniformName, num x, num y, num z, num w);
  void setIntArray(String uniformName, Int32List array);
  void setIntArray2(String uniformName, Int32List array);
  void setIntArray3(String uniformName, Int32List array);
  void setIntArray4(String uniformName, Int32List array);
  void setArray(String uniformName, Object array);
  void setArray2(String uniformName, Object array);
  void setArray3(String uniformName, Object array);
  void setArray4(String uniformName, Object array);
  void setMatrices(String uniformName, Float32List matrices);
  void setMatrix(String uniformName, IMatrixLike matrix);
  void setMatrix3x3(String uniformName, Float32List matrix);
  void setMatrix2x2(String uniformName, Float32List matrix);
  void setFloat(String uniformName, num value);
  void setVector2(String uniformName, IVector2Like vector2);
  void setFloat2(String uniformName, num x, num y);
  void setVector3(String uniformName, IVector3Like vector3);
  void setFloat3(String uniformName, num x, num y, num z);
  void setVector4(String uniformName, IVector4Like vector4);
  void setQuaternion(String uniformName, IQuaternionLike quaternion);
  void setFloat4(String uniformName, num x, num y, num z, num w);
  void setColor3(String uniformName, IColor3Like color3);
  void setColor4(String uniformName, IColor3Like color3, num alpha);
  void setDirectColor4(String uniformName, IColor4Like color4);
}
