part of babylon;

/// interface IExplorerExtensibilityOption
@JS()
abstract class IExplorerExtensibilityOption {
  external String label;
  external void Function(dynamic entity) action;
}
