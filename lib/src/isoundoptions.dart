part of babylon;

/// interface ISoundOptions
@JS()
abstract class ISoundOptions {
  external bool autoplay;
  external bool loop;
  external num volume;
  external bool spatialSound;
  external num maxDistance;
  external bool useCustomAttenuation;
  external num rolloffFactor;
  external num refDistance;
  external String distanceModel;
  external num playbackRate;
  external bool streaming;
  external num length;
  external num offset;
  external bool skipCodecCheck;
}
