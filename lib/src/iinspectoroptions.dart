part of babylon;

/// interface IInspectorOptions
@JS()
abstract class IInspectorOptions {
  bool overlay;
  HtmlElement globalRoot;
  bool showExplorer;
  bool showInspector;
  bool embedMode;
  bool handleResize;
  bool enablePopup;
  bool enableClose;
  List<IExplorerExtensibilityGroup> explorerExtensibility;
  String inspectorURL;
}
