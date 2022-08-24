part of babylon_dart;

/// class PerformanceViewerCollector
@JS()
class PerformanceViewerCollector {
  // properties
  external static final IPerfDatasets datasets;
  external static final Observable<List<num>> datasetObservable;
  external static final Observable<Map<String, IPerfMetadata>> metadataObservable;
  // methods
  external IPerfCustomEvent? registerEvent(String name, [bool forceUpdate, String category]);
  external void sendEvent(IPerfCustomEvent event);
  external void addCollectionStrategies(List<IPerformanceViewerStrategyParameter> strategyCallbacks);
  external void getCurrentSlice();
  external void updateMetadata<T extends UNSUPPORTED[TypeOperator|keyof IPerfMetadata]>(String id, T prop, UNSUPPORTED[IndexedAccessType|IPerfMetadata[T]] value);
  external void clear([bool preserveStringEventsRestore]);
  external bool loadFromFileData(String data, [bool keepDatasetMeta]);
  external void exportDataToCsv();
  external void start([bool shouldPreserve]);
  external void stop();
  external void dispose();
}
