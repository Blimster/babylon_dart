part of babylon;

/// interface ISceneComponent
@JS()
abstract class ISceneComponent {
  external String name;
  external Scene scene;
  void register();
  void rebuild();
  void dispose();
}
