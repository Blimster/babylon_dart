part of babylon;

/// interface IEdgesRendererOptions
@JS()
abstract class IEdgesRendererOptions {
  bool useAlternateEdgeFinder;
  bool useFastVertexMerger;
  num epsilonVertexMerge;
  bool applyTessellation;
  num epsilonVertexAligned;
}
