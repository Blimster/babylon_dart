part of babylon_dart;

/// interface IPlaneLike
@JS()
abstract class IPlaneLike {
  // properties
  external IVector3Like normal;
  external num d;
  // methods
  void normalize();
}
