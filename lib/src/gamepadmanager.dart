part of babylon;

/// class GamepadManager
@JS()
class GamepadManager {
  external GamepadManager([dynamic _scene]);
  external List<Gamepad> get gamepads;
  external Observable<Gamepad> get onGamepadConnectedObservable;
  external Observable<Gamepad> get onGamepadDisconnectedObservable;
  external set onGamepadConnectedObservable(Observable<Gamepad> onGamepadConnectedObservable);
  external set onGamepadDisconnectedObservable(Observable<Gamepad> onGamepadDisconnectedObservable);
  external Gamepad getGamepadByType([num type]);
  external void dispose();
}
