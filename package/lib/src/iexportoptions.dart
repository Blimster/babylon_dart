part of babylon;

/// interface IExportOptions
@JS()
abstract class IExportOptions {
  external num animationSampleRate;
  external bool exportWithoutWaitingForScene;
  external bool includeCoordinateSystemConversionNodes;
  bool shouldExportNode(Node node);
  dynamic metadataSelector(dynamic metadata);
}
