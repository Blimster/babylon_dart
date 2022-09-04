part of babylon_dart;

/// class WebXRSessionManager
@JS()
class WebXRSessionManager implements IDisposable, IWebXRRenderTargetTextureProvider {
  // properties
  external Scene scene;
  external XRReferenceSpace baseReferenceSpace;
  external XRFrame? currentFrame;
  external num currentTimestamp;
  external num defaultHeightCompensation;
  external Observable<XRFrame> onXRFrameObservable;
  external Observable<XRReferenceSpace> onXRReferenceSpaceChanged;
  external Observable<Object> onXRSessionEnded;
  external Observable<XRSession> onXRSessionInit;
  external XRSession session;
  external XRReferenceSpace viewerReferenceSpace;
  external bool inXRFrameLoop;
  external bool inXRSession;
  // methods
  external void dispose();
  external Promise<void> exitXRAsync();
  external bool trySetViewportForView(Viewport viewport, XRView view);
  external RenderTargetTexture? getRenderTargetTextureForEye(XREye eye);
  external RenderTargetTexture? getRenderTargetTextureForView(XRView view);
  external WebXRRenderTarget getWebXRRenderTarget([WebXRManagedOutputCanvasOptions options]);
  external Promise<void> initializeAsync();
  external Promise<XRSession> initializeSessionAsync([XRSessionMode xrSessionMode, XRSessionInit xrSessionInit]);
  external Promise<bool> isSessionSupportedAsync(XRSessionMode sessionMode);
  external void resetReferenceSpace();
  external void runXRRenderLoop();
  external Promise<XRReferenceSpace> setReferenceSpaceTypeAsync([XRReferenceSpaceType referenceSpaceType]);
  external Promise<void> updateRenderStateAsync(XRRenderState state);
  external void updateRenderState(XRRenderStateInit state);
  external static Promise<bool> IsSessionSupportedAsync(XRSessionMode sessionMode);
  external Promise<void> updateTargetFrameRate(num rate);
  external void runInXRFrame(void Function() callback, [bool ignoreIfNotInSession]);
}
