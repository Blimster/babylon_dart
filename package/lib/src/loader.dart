part of babylon;

@JS()
class AssetContainer extends AbstractScene {
  external void addAllToScene();
}

@JS()
class SceneLoader {
  external static void Append(String rootUrl, String sceneFilename, Scene scene, [void Function(Scene v) onSuccess]);
  external static void ImportMesh(List<String> meshNames, String rootUrl, String sceneFileName, Scene scene,
      [void Function(List<dynamic> meshes, List<dynamic> particleSystems, List<dynamic> skeletons,
          List<dynamic> animationGroups)]);
  external static void LoadAssetContainer(
      String rootUrl, String sceneFilename, Scene scene, void Function(AssetContainer v) onSuccess);
}
