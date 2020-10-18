part of babylon;

/// interface ICullable
@JS()
abstract class ICullable {
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
}
