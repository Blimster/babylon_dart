part of babylon;

/// class StencilState
@JS()
class StencilState {
  external StencilState();
  external bool get isDirty;
  external num get stencilFunc;
  external num get stencilFuncRef;
  external num get stencilFuncMask;
  external num get stencilOpStencilFail;
  external num get stencilOpDepthFail;
  external num get stencilOpStencilDepthPass;
  external num get stencilMask;
  external bool get stencilTest;
  external static num get ALWAYS;
  external static num get KEEP;
  external static num get REPLACE;
  external set stencilFunc(num value);
  external set stencilFuncRef(num value);
  external set stencilFuncMask(num value);
  external set stencilOpStencilFail(num value);
  external set stencilOpDepthFail(num value);
  external set stencilOpStencilDepthPass(num value);
  external set stencilMask(num value);
  external set stencilTest(bool value);
  external void reset();
  external void apply(RenderingContext gl);
}
