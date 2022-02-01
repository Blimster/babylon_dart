part of babylon;

/// interface ICustomShaderNameResolveOptions
@JS()
abstract class ICustomShaderNameResolveOptions {
  external String Function(String shaderType, String code) processFinalCode;
}
