part of babylon_dart;

/// interface ICustomAnimationFrameRequester
@JS()
abstract class ICustomAnimationFrameRequester {
  // properties
  external Function renderFunction;
  external Function requestAnimationFrame;
  external num requestID;
}
