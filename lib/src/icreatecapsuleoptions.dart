part of babylon;

/// interface ICreateCapsuleOptions
@JS()
abstract class ICreateCapsuleOptions {
  Vector3 orientation;
  num subdivisions;
  num tessellation;
  num height;
  num radius;
  num capSubdivisions;
  num radiusTop;
  num radiusBottom;
  num topCapSubdivisions;
  num bottomCapSubdivisions;
}
