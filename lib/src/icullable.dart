part of babylon;

@JS()
abstract class ICullable {
  external bool isInFrustum(List<Plane> frustumPlanes);
  external bool isCompletelyInFrustum(List<Plane> frustumPlanes);
}
