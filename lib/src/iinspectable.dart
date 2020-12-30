part of babylon;

/// interface IInspectable
@JS()
abstract class IInspectable {
  external String label;
  external String propertyName;
  external InspectableType type;
  external num min;
  external num max;
  external num step;
}
