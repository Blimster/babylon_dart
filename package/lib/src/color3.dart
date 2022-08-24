part of babylon_dart;

/// class Color3
@JS()
class Color3 {
  // properties
  external num r;
  external num g;
  external num b;
  // methods
  external String toString();
  external String getClassName();
  external num getHashCode();
  external Color3 toArray(Float32List array, [num index]);
  external Color3 fromArray(List<num> array, [num offset]);
  external Color4 toColor4([num alpha]);
  external List<num> asArray();
  external num toLuminance();
  external Color3 multiply(Color3 otherColor);
  external Color3 multiplyToRef(Color3 otherColor, Color3 result);
  external bool equals(Color3 otherColor);
  external bool equalsFloats(num r, num g, num b);
  external Color3 scale(num scale);
  external Color3 scaleInPlace(num scale);
  external Color3 scaleToRef(num scale, Color3 result);
  external Color3 scaleAndAddToRef(num scale, Color3 result);
  external Color3 clampToRef(num? min, num? max, Color3 result);
  external Color3 add(Color3 otherColor);
  external Color3 addToRef(Color3 otherColor, Color3 result);
  external Color3 subtract(Color3 otherColor);
  external Color3 subtractToRef(Color3 otherColor, Color3 result);
  external Color3 clone();
  external Color3 copyFrom(Color3 source);
  external Color3 copyFromFloats(num r, num g, num b);
  external Color3 set(num r, num g, num b);
  external String toHexString();
  external Color3 toLinearSpace();
  external Color3 toHSV();
  external void toHSVToRef(Color3 result);
  external Color3 toLinearSpaceToRef(Color3 convertedColor);
  external Color3 toGammaSpace();
  external Color3 toGammaSpaceToRef(Color3 convertedColor);
  external static void HSVtoRGBToRef(num hue, num saturation, num value, Color3 result);
  external static Color3 FromHSV(num hue, num saturation, num value);
  external static Color3 FromHexString(String hex);
  external static Color3 FromArray(List<num> array, [num offset]);
  external static void FromArrayToRef(List<num> array, num? offset, Color3 result);
  external static Color3 FromInts(num r, num g, num b);
  external static Color3 Lerp(Color3 start, Color3 end, num amount);
  external static void LerpToRef(Color3 left, Color3 right, num amount, Color3 result);
  external static Color3 Hermite(Color3 value1, Color3 tangent1, Color3 value2, Color3 tangent2, num amount);
  external static Color3 Hermite1stDerivative(Color3 value1, Color3 tangent1, Color3 value2, Color3 tangent2, num time);
  external static void Hermite1stDerivativeToRef(Color3 value1, Color3 tangent1, Color3 value2, Color3 tangent2, num time, Color3 result);
  external static Color3 Red();
  external static Color3 Green();
  external static Color3 Blue();
  external static Color3 Black();
  external static Color3 White();
  external static Color3 Purple();
  external static Color3 Magenta();
  external static Color3 Yellow();
  external static Color3 Gray();
  external static Color3 Teal();
  external static Color3 Random();
}
