part of babylon;

/// class GLTF2Export
@JS()
class GLTF2Export {
  external static Promise<GLTFData> GLTFAsync(Scene scene, String filePrefix, [IExportOptions options]);
  external static Promise<GLTFData> GLBAsync(Scene scene, String filePrefix, [IExportOptions options]);
}
