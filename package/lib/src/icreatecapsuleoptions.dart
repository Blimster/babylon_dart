part of babylon;

/// interface ICreateCapsuleOptions
@JS()
abstract class ICreateCapsuleOptions {
  external Vector3 orientation;
  external num subdivisions;
  external num tessellation;
  external num height;
  external num radius;
  external num capSubdivisions;
  external num radiusTop;
  external num radiusBottom;
  external num topCapSubdivisions;
  external num bottomCapSubdivisions;
}
