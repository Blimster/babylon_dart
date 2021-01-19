part of babylon;

/// interface ICustomAnimationFrameRequester
@JS()
abstract class ICustomAnimationFrameRequester {
  external Function renderFunction;
  external Function requestAnimationFrame;
  external num requestID;
}
