part of babylon;

/// class PerformanceMonitor
@JS()
class PerformanceMonitor {
  external PerformanceMonitor([num frameSampleSize]);
  external num get averageFrameTime;
  external num get averageFrameTimeVariance;
  external num get instantaneousFrameTime;
  external num get averageFPS;
  external num get instantaneousFPS;
  external bool get isSaturated;
  external bool get isEnabled;
  external void sampleFrame([num timeMs]);
  external void enable();
  external void disable();
  external void reset();
}
