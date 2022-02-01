part of babylon;

/// interface IAudioEngine
@JS()
abstract class IAudioEngine extends IDisposable {
  external bool canUseWebAudio;
  external AudioContext audioContext;
  external GainNode masterGain;
  external bool isMP3supported;
  external bool isOGGsupported;
  external bool WarnedWebAudioUnsupported;
  external bool useCustomUnlockedButton;
  external bool unlocked;
  external Observable<IAudioEngine> onAudioUnlockedObservable;
  external Observable<IAudioEngine> onAudioLockedObservable;
  void lock();
  void unlock();
  num getGlobalVolume();
  void setGlobalVolume(num newVolume);
  void connectToAnalyser(Analyser analyser);
}
