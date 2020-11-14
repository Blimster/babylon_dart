part of babylon;

/// class ImageProcessingPostProcess
@JS()
class ImageProcessingPostProcess extends PostProcess {
  external ImageProcessingPostProcess(String name, dynamic options, [Camera camera, num samplingMode, Engine engine, bool reusable, num textureType, ImageProcessingConfiguration imageProcessingConfiguration]);
  external ImageProcessingConfiguration get imageProcessingConfiguration;
  external bool get isSupported;
  external ColorCurves get colorCurves;
  external bool get colorCurvesEnabled;
  external BaseTexture get colorGradingTexture;
  external bool get colorGradingEnabled;
  external num get exposure;
  external bool get toneMappingEnabled;
  external num get toneMappingType;
  external num get contrast;
  external num get vignetteStretch;
  external num get vignetteCentreX;
  external num get vignetteCentreY;
  external num get vignetteWeight;
  external Color4 get vignetteColor;
  external num get vignetteCameraFov;
  external num get vignetteBlendMode;
  external bool get vignetteEnabled;
  external bool get fromLinearSpace;
  external set imageProcessingConfiguration(ImageProcessingConfiguration value);
  external set colorCurves(ColorCurves value);
  external set colorCurvesEnabled(bool value);
  external set colorGradingTexture(BaseTexture value);
  external set colorGradingEnabled(bool value);
  external set exposure(num value);
  external set toneMappingEnabled(bool value);
  external set toneMappingType(num value);
  external set contrast(num value);
  external set vignetteStretch(num value);
  external set vignetteCentreX(num value);
  external set vignetteCentreY(num value);
  external set vignetteWeight(num value);
  external set vignetteColor(Color4 value);
  external set vignetteCameraFov(num value);
  external set vignetteBlendMode(num value);
  external set vignetteEnabled(bool value);
  external set fromLinearSpace(bool value);
  external String getClassName();
  external void dispose([Camera camera]);
}
