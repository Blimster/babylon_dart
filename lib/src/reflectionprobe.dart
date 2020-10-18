part of babylon;

/// class ReflectionProbe
@JS()
class ReflectionProbe {
  external ReflectionProbe(String name, num size, Scene scene, [bool generateMipMaps, bool useFloat]);
  external num get samples;
  external num get refreshRate;
  external RenderTargetTexture get cubeTexture;
  external List<AbstractMesh> get renderList;
  external String get name;
  external Vector3 get position;
  external set samples(num value);
  external set refreshRate(num value);
  external set name(String name);
  external set position(Vector3 position);
  external Scene getScene();
  external void attachToMesh(AbstractMesh mesh);
  external void setRenderingAutoClearDepthStencil(num renderingGroupId, bool autoClearDepthStencil);
  external void dispose();
  external String toString([bool fullDetails]);
  external String getClassName();
  external dynamic serialize();
  external static ReflectionProbe Parse(dynamic parsedReflectionProbe, Scene scene, String rootUrl);
}
