part of babylon;

/// interface IExplorerExtensibilityOption
@JS()
abstract class IExplorerExtensibilityOption {
  String label;
  void Function(dynamic entity) action;
}
