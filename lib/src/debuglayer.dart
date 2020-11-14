part of babylon;

/// class DebugLayer
@JS()
class DebugLayer {
  external DebugLayer(Scene scene);
  external dynamic get onPropertyChangedObservable;
  external static String get InspectorURL;
  external dynamic get BJSINSPECTOR;
  external static set InspectorURL(String InspectorURL);
  external set BJSINSPECTOR(dynamic BJSINSPECTOR);
  external void select(dynamic entity, [dynamic lineContainerTitles]);
  external bool isVisible();
  external void hide();
  external void setAsActiveScene();
  external Promise<DebugLayer> show([IInspectorOptions config]);
}
