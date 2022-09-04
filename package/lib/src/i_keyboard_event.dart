part of babylon_dart;

/// interface IKeyboardEvent
@JS()
abstract class IKeyboardEvent extends IUIEvent {
  // properties
  external bool altKey;
  external num charCode;
  external String code;
  external bool ctrlKey;
  external String key;
  external num keyCode;
  external bool metaKey;
  external bool shiftKey;
}
