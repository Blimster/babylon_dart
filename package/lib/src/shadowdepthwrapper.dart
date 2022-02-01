part of babylon;

/// class ShadowDepthWrapper
@JS()
class ShadowDepthWrapper {
  external ShadowDepthWrapper(Material baseMaterial, Scene scene, [IIOptionShadowDepthMaterial options]);
  external bool get standalone;
  external Material get baseMaterial;
  external Effect getEffect(SubMesh subMesh, ShadowGenerator shadowGenerator);
  external bool isReadyForSubMesh(SubMesh subMesh, List<String> defines, ShadowGenerator shadowGenerator, bool useInstances);
  external void dispose();
}
