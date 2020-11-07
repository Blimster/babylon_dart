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
  external void select(dynamic entity, [String lineContainerTitle]);
  external bool isVisible();
  external void hide();
  external Promise<DebugLayer> show([IInspectorOptions config]);
}
