part of babylon;

/// interface IExportOptions
@JS()
abstract class IExportOptions {
  num animationSampleRate;
  bool exportWithoutWaitingForScene;
  bool includeCoordinateSystemConversionNodes;
  bool shouldExportNode(Node node);
  dynamic metadataSelector(dynamic metadata);
}
