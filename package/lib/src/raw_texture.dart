part of babylon_dart;

/// class RawTexture
@JS()
class RawTexture extends Texture {
  // properties
  external num format;
  // methods
  external void update(ByteBuffer data);
  external static RawTexture CreateLuminanceTexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode]);
  external static RawTexture CreateLuminanceAlphaTexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode]);
  external static RawTexture CreateAlphaTexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode]);
  external static RawTexture CreateRGBTexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode, num type, num creationFlags, bool useSRGBBuffer]);
  external static RawTexture CreateRGBATexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode, num type, num creationFlags, bool useSRGBBuffer]);
  external static RawTexture CreateRGBAStorageTexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode, num type, bool useSRGBBuffer]);
  external static RawTexture CreateRTexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode, num type]);
  external static RawTexture CreateRStorageTexture(ByteBuffer? data, num width, num height, Object? sceneOrEngine, [bool generateMipMaps, bool invertY, num samplingMode, num type]);
}
