part of babylon_dart;

/// class MaterialStencilState
@JS()
class MaterialStencilState implements IStencilState {
  // methods
  external void reset();
  external String getClassName();
  external void copyTo(MaterialStencilState stencilState);
  external Object serialize();
  external void parse(Object source, Scene scene, String rootUrl);
}
