part of babylon;

/// class VRCameraMetrics
@JS()
class VRCameraMetrics {
  external num get aspectRatio;
  external num get aspectRatioFov;
  external Matrix get leftHMatrix;
  external Matrix get rightHMatrix;
  external Matrix get leftPreViewMatrix;
  external Matrix get rightPreViewMatrix;
  external num get hResolution;
  external num get vResolution;
  external num get hScreenSize;
  external num get vScreenSize;
  external num get vScreenCenter;
  external num get eyeToScreenDistance;
  external num get lensSeparationDistance;
  external num get interpupillaryDistance;
  external List<num> get distortionK;
  external List<num> get chromaAbCorrection;
  external num get postProcessScaleFactor;
  external num get lensCenterOffset;
  external bool get compensateDistortion;
  external bool get multiviewEnabled;
  external set hResolution(num hResolution);
  external set vResolution(num vResolution);
  external set hScreenSize(num hScreenSize);
  external set vScreenSize(num vScreenSize);
  external set vScreenCenter(num vScreenCenter);
  external set eyeToScreenDistance(num eyeToScreenDistance);
  external set lensSeparationDistance(num lensSeparationDistance);
  external set interpupillaryDistance(num interpupillaryDistance);
  external set distortionK(List<num> distortionK);
  external set chromaAbCorrection(List<num> chromaAbCorrection);
  external set postProcessScaleFactor(num postProcessScaleFactor);
  external set lensCenterOffset(num lensCenterOffset);
  external set compensateDistortion(bool compensateDistortion);
  external set multiviewEnabled(bool multiviewEnabled);
  external static VRCameraMetrics GetDefault();
}
