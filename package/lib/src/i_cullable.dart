part of babylon_dart;

/// interface ICullable
@JS()
abstract class ICullable {
  // methods
  bool isInFrustum(List<Plane> frustumPlanes);
  bool isCompletelyInFrustum(List<Plane> frustumPlanes);
}
