part of babylon;

/// class SoundTrack
@JS()
class SoundTrack {
  external SoundTrack(Scene scene, [ISoundTrackOptions options]);
  external num get id;
  external List<Sound> get soundCollection;
  external set id(num id);
  external set soundCollection(List<Sound> soundCollection);
  external void dispose();
  external void AddSound(Sound sound);
  external void RemoveSound(Sound sound);
  external void setVolume(num newVolume);
  external void switchPanningModelToHRTF();
  external void switchPanningModelToEqualPower();
  external void connectToAnalyser(Analyser analyser);
}
