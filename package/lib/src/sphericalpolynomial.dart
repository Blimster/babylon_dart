part of babylon;

/// class SphericalPolynomial
@JS()
class SphericalPolynomial {
  external SphericalHarmonics get preScaledHarmonics;
  external Vector3 get x;
  external Vector3 get y;
  external Vector3 get z;
  external Vector3 get xx;
  external Vector3 get yy;
  external Vector3 get zz;
  external Vector3 get xy;
  external Vector3 get yz;
  external Vector3 get zx;
  external set x(Vector3 x);
  external set y(Vector3 y);
  external set z(Vector3 z);
  external set xx(Vector3 xx);
  external set yy(Vector3 yy);
  external set zz(Vector3 zz);
  external set xy(Vector3 xy);
  external set yz(Vector3 yz);
  external set zx(Vector3 zx);
  external void addAmbient(Color3 color);
  external void scaleInPlace(num scale);
  external static SphericalPolynomial FromHarmonics(SphericalHarmonics harmonics);
  external static SphericalPolynomial FromArray(List<List<num>> data);
}
