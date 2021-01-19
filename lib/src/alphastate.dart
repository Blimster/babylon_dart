part of babylon;

/// class AlphaState
@JS()
class AlphaState {
  external AlphaState();
  external bool get isDirty;
  external bool get alphaBlend;
  external set alphaBlend(bool value);
  external void setAlphaBlendConstants(num r, num g, num b, num a);
  external void setAlphaBlendFunctionParameters(num value0, num value1, num value2, num value3);
  external void setAlphaEquationParameters(num rgb, num alpha);
  external void reset();
  external void apply(RenderingContext gl);
}
