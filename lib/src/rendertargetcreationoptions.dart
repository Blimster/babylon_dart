part of babylon;

/// class RenderTargetCreationOptions
@JS()
class RenderTargetCreationOptions {
  external bool get generateMipMaps;
  external bool get generateDepthBuffer;
  external bool get generateStencilBuffer;
  external num get type;
  external num get samplingMode;
  external num get format;
  external set generateMipMaps(bool generateMipMaps);
  external set generateDepthBuffer(bool generateDepthBuffer);
  external set generateStencilBuffer(bool generateStencilBuffer);
  external set type(num type);
  external set samplingMode(num samplingMode);
  external set format(num format);
}
