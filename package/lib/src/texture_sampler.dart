part of babylon_dart;

/// class TextureSampler
@JS()
class TextureSampler {
  // properties
  external num samplingMode;
  // methods
  external TextureSampler setParameters([num wrapU, num wrapV, num wrapR, num anisotropicFilteringLevel, num samplingMode, num comparisonFunction]);
  external bool compareSampler(TextureSampler other);
}
