part of babylon;

/// class PostProcessRenderEffect
@JS()
class PostProcessRenderEffect {
  external PostProcessRenderEffect(Engine engine, String name, dynamic Function() getPostProcesses, [bool singleInstance]);
  external bool get isSupported;
  external List<PostProcess> getPostProcesses([Camera camera]);
}
