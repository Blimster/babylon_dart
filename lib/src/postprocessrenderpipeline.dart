part of babylon;

/// class PostProcessRenderPipeline
@JS()
class PostProcessRenderPipeline {
  external PostProcessRenderPipeline(Engine engine, String name);
  external String get name;
  external List<Camera> get cameras;
  external bool get isSupported;
  external dynamic get engine;
  external List<IInspectable> get inspectableCustomProperties;
  external set engine(dynamic engine);
  external set inspectableCustomProperties(List<IInspectable> inspectableCustomProperties);
  external String getClassName();
  external void addEffect(PostProcessRenderEffect renderEffect);
  external void dispose();
}
