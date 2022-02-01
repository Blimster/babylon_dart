part of babylon;

/// interface IInspectorOptions
@JS()
@anonymous
class IInspectorOptions {
  external factory IInspectorOptions({bool overlay, HtmlElement globalRoot, bool showExplorer, bool showInspector, bool embedMode, bool handleResize, bool enablePopup, bool enableClose, List<IExplorerExtensibilityGroup> explorerExtensibility, String inspectorURL, DebugLayerTab initialTab});
  external bool get overlay;
  external HtmlElement get globalRoot;
  external bool get showExplorer;
  external bool get showInspector;
  external bool get embedMode;
  external bool get handleResize;
  external bool get enablePopup;
  external bool get enableClose;
  external List<IExplorerExtensibilityGroup> get explorerExtensibility;
  external String get inspectorURL;
  external DebugLayerTab get initialTab;
}
