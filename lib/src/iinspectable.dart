part of babylon;

/// interface IInspectable
@JS()
abstract class IInspectable {
  String label;
  String propertyName;
  InspectableType type;
  num min;
  num max;
  num step;
}
