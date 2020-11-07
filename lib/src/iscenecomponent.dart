part of babylon;

/// interface ISceneComponent
@JS()
abstract class ISceneComponent {
  String name;
  Scene scene;
  external void register();
  external void rebuild();
  external void dispose();
}
