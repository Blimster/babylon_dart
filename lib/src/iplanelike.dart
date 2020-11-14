part of babylon;

/// interface IPlaneLike
@JS()
abstract class IPlaneLike {
  IVector3Like normal;
  num d;
  void normalize();
}
