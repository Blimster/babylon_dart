part of babylon_dart;

/// interface IWebXRFeature
@JS()
abstract class IWebXRFeature extends IDisposable {
  // properties
  external bool attached;
  external bool disableAutoAttach;
  external bool isDisposed;
  external String xrNativeFeatureName;
  external List<String> dependsOn;
  external Promise<XRSessionInit> Function() getXRSessionInitExtension;
  // methods
  bool attach([bool force]);
  bool detach();
  bool isCompatible();
}
