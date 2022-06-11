part of babylon_dart;

/// interface IEdgesRendererOptions
@JS()
abstract class IEdgesRendererOptions {
  // properties
  external bool useAlternateEdgeFinder;
  external bool useFastVertexMerger;
  external num epsilonVertexMerge;
  external bool applyTessellation;
  external num epsilonVertexAligned;
  external bool removeDegeneratedTriangles;
}
