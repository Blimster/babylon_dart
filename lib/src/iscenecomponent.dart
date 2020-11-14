part of babylon;

/// interface ISceneComponent
@JS()
abstract class ISceneComponent {
  String name;
  Scene scene;
  void register();
  void rebuild();
  void dispose();
}
