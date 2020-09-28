part of babylon;

@JS()
class Color4 {
  external Color4([num r, num g, num b, num a]);
  num r;
  num g;
  num b;
  num a;
  external Color4 addInPlace(Color4 right);
  external List<num> asArray();
  external Color4 toArray(List<num> array, [num index]);
  external bool equals(Color4 otherColor);
  external Color4 add(Color4 right);
  external Color4 subtract(Color4 right);
  external Color4 subtractToRef(Color4 right, Color4 result);
  external Color4 scale(num scale);
  external Color4 scaleToRef(num scale, Color4 result);
  external Color4 scaleAndAddToRef(num scale, Color4 result);
  external Color4 multiply(Color4 color);
  external Color4 multiplyToRef(Color4 color, Color4 result);
  external String toString();
  external String getClassName();
  external num getHashCode();
  external Color4 clone();
  external Color4 copyFrom(Color4 source);
  external Color4 copyFromFloats(num r, num g, num b, num a);
  external Color4 set(num r, num g, num b, num a);
  external String toHexString([bool returnAsColor3]);
  external Color4 toLinearSpace();
  external Color4 toLinearSpaceToRef(Color4 convertedColor);
  external Color4 toGammaSpace();
  external Color4 toGammaSpaceToRef(Color4 convertedColor);
  external static Color4 FromHexString(String hex);
  external static Color4 Lerp(Color4 left, Color4 right, num amount);
  external static void LerpToRef(Color4 left, Color4 right, num amount, Color4 result);
  external static Color4 FromColor3(Color3 color3, [num alpha]);
  external static Color4 FromArray(List<num> array, [num offset]);
  external static Color4 FromInts(num r, num g, num b, num a);
  external static List<num> CheckColors4(List<num> colors, num count);
}

