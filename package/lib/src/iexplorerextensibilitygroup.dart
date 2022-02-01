part of babylon;

/// interface IExplorerExtensibilityGroup
@JS()
abstract class IExplorerExtensibilityGroup {
  external bool Function(dynamic entity) predicate;
  external List<IExplorerExtensibilityOption> entries;
}
