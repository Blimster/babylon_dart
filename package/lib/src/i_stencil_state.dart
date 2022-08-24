part of babylon_dart;

/// interface IStencilState
@JS()
abstract class IStencilState {
  // properties
  external bool enabled;
  external num mask;
  external num func;
  external num funcRef;
  external num funcMask;
  external num opStencilDepthPass;
  external num opStencilFail;
  external num opDepthFail;
  // methods
  void reset();
}
