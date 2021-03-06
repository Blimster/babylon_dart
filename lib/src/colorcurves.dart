part of babylon;

/// class ColorCurves
@JS()
class ColorCurves {
  external num get globalHue;
  external num get globalDensity;
  external num get globalSaturation;
  external num get globalExposure;
  external num get highlightsHue;
  external num get highlightsDensity;
  external num get highlightsSaturation;
  external num get highlightsExposure;
  external num get midtonesHue;
  external num get midtonesDensity;
  external num get midtonesSaturation;
  external num get midtonesExposure;
  external num get shadowsHue;
  external num get shadowsDensity;
  external num get shadowsSaturation;
  external num get shadowsExposure;
  external dynamic get getColorGradingDataToRef;
  external static dynamic get applyColorGradingSliderNonlinear;
  external static dynamic get fromHSBToRef;
  external static dynamic get clamp;
  external set globalHue(num value);
  external set globalDensity(num value);
  external set globalSaturation(num value);
  external set globalExposure(num value);
  external set highlightsHue(num value);
  external set highlightsDensity(num value);
  external set highlightsSaturation(num value);
  external set highlightsExposure(num value);
  external set midtonesHue(num value);
  external set midtonesDensity(num value);
  external set midtonesSaturation(num value);
  external set midtonesExposure(num value);
  external set shadowsHue(num value);
  external set shadowsDensity(num value);
  external set shadowsSaturation(num value);
  external set shadowsExposure(num value);
  external set getColorGradingDataToRef(dynamic getColorGradingDataToRef);
  external static set applyColorGradingSliderNonlinear(dynamic applyColorGradingSliderNonlinear);
  external static set fromHSBToRef(dynamic fromHSBToRef);
  external static set clamp(dynamic clamp);
  external String getClassName();
  external static void Bind(ColorCurves colorCurves, Effect effect, [String positiveUniform, String neutralUniform, String negativeUniform]);
  external static void PrepareUniforms(List<String> uniformsList);
  external ColorCurves clone();
  external dynamic serialize();
  external static ColorCurves Parse(dynamic source);
}
