part of babylon;

/// interface IAudioEngine
@JS()
abstract class IAudioEngine extends IDisposable {
  bool canUseWebAudio;
  AudioContext audioContext;
  GainNode masterGain;
  bool isMP3supported;
  bool isOGGsupported;
  bool WarnedWebAudioUnsupported;
  bool useCustomUnlockedButton;
  bool unlocked;
  Observable<IAudioEngine> onAudioUnlockedObservable;
  Observable<IAudioEngine> onAudioLockedObservable;
  void lock();
  void unlock();
  num getGlobalVolume();
  void setGlobalVolume(num newVolume);
  void connectToAnalyser(Analyser analyser);
}
