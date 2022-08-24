part of babylon_dart;

/// interface IDrawContext
@JS()
abstract class IDrawContext {
  // properties
  external num uniqueId;
  external bool useInstancing;
  // methods
  void reset();
  void dispose();
}
