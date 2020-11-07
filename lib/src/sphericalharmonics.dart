part of babylon;

/// class SphericalHarmonics
@JS()
class SphericalHarmonics {
  external bool get preScaled;
  external Vector3 get l00;
  external Vector3 get l1_1;
  external Vector3 get l10;
  external Vector3 get l11;
  external Vector3 get l2_2;
  external Vector3 get l2_1;
  external Vector3 get l20;
  external Vector3 get l21;
  external Vector3 get l22;
  external set preScaled(bool preScaled);
  external set l00(Vector3 l00);
  external set l1_1(Vector3 l1_1);
  external set l10(Vector3 l10);
  external set l11(Vector3 l11);
  external set l2_2(Vector3 l2_2);
  external set l2_1(Vector3 l2_1);
  external set l20(Vector3 l20);
  external set l21(Vector3 l21);
  external set l22(Vector3 l22);
  external void addLight(Vector3 direction, Color3 color, num deltaSolidAngle);
  external void scaleInPlace(num scale);
  external void convertIncidentRadianceToIrradiance();
  external void convertIrradianceToLambertianRadiance();
  external void preScaleForRendering();
  external static SphericalHarmonics FromArray(List<List<num>> data);
  external static SphericalHarmonics FromPolynomial(SphericalPolynomial polynomial);
}
