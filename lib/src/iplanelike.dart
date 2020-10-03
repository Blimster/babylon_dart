part of babylon;

@JS()
abstract class IPlaneLike {
  IVector3Like normal;
  num d;
  external void normalize();
}
