part of babylon;

/// class PerfCounter
@JS()
class PerfCounter {
  external PerfCounter();
  external num get min;
  external num get max;
  external num get average;
  external num get lastSecAverage;
  external num get current;
  external num get total;
  external num get count;
  external static bool get Enabled;
  external static set Enabled(bool Enabled);
  external void fetchNewFrame();
  external void addCount(num newCount, bool fetchResult);
  external void beginMonitoring();
  external void endMonitoring([bool newFrame]);
}
