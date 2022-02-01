part of babylon;

/// interface IPlaneLike
@JS()
abstract class IPlaneLike {
  external IVector3Like normal;
  external num d;
  void normalize();
}
