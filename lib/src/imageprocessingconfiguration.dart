part of babylon;

@JS()
class ImageProcessingConfiguration {
  num TONEMAPPING_STANDARD;
  num TONEMAPPING_ACES;
  ColorCurves colorCurves;
  num vignetteStretch;
  num vignetteCentreX;
  num vignetteCentreY;
  num vignetteWeight;
  Color4 vignetteColor;
  num vignetteCameraFov;
  external bool get colorCurvesEnabled;
  external BaseTexture get colorGradingTexture;
  external bool get colorGradingEnabled;
  external bool get colorGradingWithGreenDepth;
  external bool get colorGradingBGR;
  external num get exposure;
  external bool get toneMappingEnabled;
  external num get toneMappingType;
  external num get contrast;
  external num get vignetteBlendMode;
  external bool get vignetteEnabled;
  external bool get applyByPostProcess;
  external bool get isEnabled;
  external num get VIGNETTEMODE_MULTIPLY;
  external num get VIGNETTEMODE_OPAQUE;
  external set colorCurvesEnabled(bool value);
  external set colorGradingTexture(BaseTexture value);
  external set colorGradingEnabled(bool value);
  external set colorGradingWithGreenDepth(bool value);
  external set colorGradingBGR(bool value);
  external set exposure(num value);
  external set toneMappingEnabled(bool value);
  external set toneMappingType(num value);
  external set contrast(num value);
  external set vignetteBlendMode(num value);
  external set vignetteEnabled(bool value);
  external set applyByPostProcess(bool value);
  external set isEnabled(bool value);
  external String getClassName();
  external bool isReady();
  external void bind(Effect effect, num overrideAspectRatio);
  external ImageProcessingConfiguration clone();
  external dynamic serialize();
  external static ImageProcessingConfiguration Parse(dynamic source);
}
