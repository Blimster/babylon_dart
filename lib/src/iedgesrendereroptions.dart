part of babylon;

/// interface IEdgesRendererOptions
@JS()
abstract class IEdgesRendererOptions {
  external bool useAlternateEdgeFinder;
  external bool useFastVertexMerger;
  external num epsilonVertexMerge;
  external bool applyTessellation;
  external num epsilonVertexAligned;
}
