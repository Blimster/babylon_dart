part of babylon_dart;

/// class FactorGradient
@JS()
class FactorGradient implements IValueGradient {
  // properties
  external num gradient;
  external num factor1;
  external num? factor2;
  // methods
  external num getFactor();
}
