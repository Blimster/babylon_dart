part of babylon;

/// interface ICullable
@JS()
abstract class ICullable {
  bool isInFrustum(List<Plane> frustumPlanes);
  bool isCompletelyInFrustum(List<Plane> frustumPlanes);
}
