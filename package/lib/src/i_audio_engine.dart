part of babylon_dart;

/// interface IAudioEngine
@JS()
abstract class IAudioEngine extends IDisposable {
  // properties
  external static final bool canUseWebAudio;
  external static final AudioContext? audioContext;
  external static final GainNode masterGain;
  external static final bool isMP3supported;
  external static final bool isOGGsupported;
  external bool WarnedWebAudioUnsupported;
  external bool useCustomUnlockedButton;
  external static final bool unlocked;
  external Observable<IAudioEngine> onAudioUnlockedObservable;
  external Observable<IAudioEngine> onAudioLockedObservable;
  // methods
  void lock();
  void unlock();
  num getGlobalVolume();
  void setGlobalVolume(num newVolume);
  void connectToAnalyser(Analyser analyser);
}
