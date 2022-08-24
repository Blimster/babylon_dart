part of babylon_dart;

/// interface IInspectable
@JS()
abstract class IInspectable {
  // properties
  external String label;
  external String propertyName;
  external InspectableType type;
  external num min;
  external num max;
  external num step;
  external void Function() callback;
  external List<IInspectableOptions> options;
}
