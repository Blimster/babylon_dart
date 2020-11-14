part of babylon;

/// interface ICustomShaderNameResolveOptions
@JS()
abstract class ICustomShaderNameResolveOptions {
  String Function(String shaderType, String code) processFinalCode;
}
