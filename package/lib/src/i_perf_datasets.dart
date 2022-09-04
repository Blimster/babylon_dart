part of babylon_dart;

/// interface IPerfDatasets
@JS()
abstract class IPerfDatasets {
  // properties
  external List<String> ids;
  external DynamicFloat32Array data;
  external DynamicFloat32Array startingIndices;
}
