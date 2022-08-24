part of babylon_dart;

/// interface IImage
@JS()
abstract class IImage {
  // properties
  external Object onload;
  external Object onerror;
  external String src;
  external static final num width;
  external static final num height;
  external static final num naturalHeight;
  external static final num naturalWidth;
  external Object crossOrigin;
  external String referrerPolicy;
}
