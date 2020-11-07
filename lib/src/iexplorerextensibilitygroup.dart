part of babylon;

/// interface IExplorerExtensibilityGroup
@JS()
abstract class IExplorerExtensibilityGroup {
  bool Function(dynamic entity) predicate;
  List<IExplorerExtensibilityOption> entries;
}
