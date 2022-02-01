part of babylon;

/// class DepthTextureCreationOptions
@JS()
class DepthTextureCreationOptions {
  external bool get generateStencil;
  external bool get bilinearFiltering;
  external num get comparisonFunction;
  external bool get isCube;
  external set generateStencil(bool generateStencil);
  external set bilinearFiltering(bool bilinearFiltering);
  external set comparisonFunction(num comparisonFunction);
  external set isCube(bool isCube);
}
