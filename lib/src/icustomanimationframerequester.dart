part of babylon;

/// interface ICustomAnimationFrameRequester
@JS()
abstract class ICustomAnimationFrameRequester {
  Function renderFunction;
  Function requestAnimationFrame;
  num requestID;
}
