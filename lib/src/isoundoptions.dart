part of babylon;

/// interface ISoundOptions
@JS()
abstract class ISoundOptions {
  bool autoplay;
  bool loop;
  num volume;
  bool spatialSound;
  num maxDistance;
  bool useCustomAttenuation;
  num rolloffFactor;
  num refDistance;
  String distanceModel;
  num playbackRate;
  bool streaming;
  num length;
  num offset;
  bool skipCodecCheck;
}
