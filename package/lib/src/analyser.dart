part of babylon_dart;

/// class Analyser
@JS()
class Analyser {
  // properties
  external num SMOOTHING;
  external num FFT_SIZE;
  external num BARGRAPHAMPLITUDE;
  external AnalyserDEBUGCANVASPOS DEBUGCANVASPOS;
  external AnalyserDEBUGCANVASSIZE DEBUGCANVASSIZE;
  // methods
  external num getFrequencyBinCount();
  external Uint8List getByteFrequencyData();
  external Uint8List getByteTimeDomainData();
  external Float32List getFloatFrequencyData();
  external void drawDebugCanvas();
  external void stopDebugCanvas();
  external void connectAudioNodes(AudioNode inputAudioNode, AudioNode outputAudioNode);
  external void dispose();
}

@JS()
@anonymous
class AnalyserDEBUGCANVASPOS {
}

@JS()
@anonymous
class AnalyserDEBUGCANVASSIZE {
}
