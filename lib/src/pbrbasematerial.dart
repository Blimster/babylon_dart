part of babylon;

/// class PBRBaseMaterial
@JS()
abstract class PBRBaseMaterial extends PushMaterial {
  external bool get realTimeFiltering;
  external num get realTimeFilteringQuality;
  external bool get canRenderToMRT;
  external bool get hasRenderTargetTextures;
  external bool get useLogarithmicDepth;
  external static num get PBRMATERIAL_OPAQUE;
  external static num get PBRMATERIAL_ALPHATEST;
  external static num get PBRMATERIAL_ALPHABLEND;
  external static num get PBRMATERIAL_ALPHATESTANDBLEND;
  external static num get DEFAULT_AO_ON_ANALYTICAL_LIGHTS;
  external static num get LIGHTFALLOFF_PHYSICAL;
  external static num get LIGHTFALLOFF_GLTF;
  external static num get LIGHTFALLOFF_STANDARD;
  external num get debugMode;
  external dynamic get debugLimit;
  external dynamic get debugFactor;
  external PBRClearCoatConfiguration get clearCoat;
  external PBRAnisotropicConfiguration get anisotropy;
  external PBRBRDFConfiguration get brdf;
  external PBRSheenConfiguration get sheen;
  external PBRSubSurfaceConfiguration get subSurface;
  external PrePassConfiguration get prePassConfiguration;
  external DetailMapConfiguration get detailMap;
  external set realTimeFiltering(bool b);
  external set realTimeFilteringQuality(num n);
  external set useLogarithmicDepth(bool value);
  external static set DEFAULT_AO_ON_ANALYTICAL_LIGHTS(num DEFAULT_AO_ON_ANALYTICAL_LIGHTS);
  external set debugMode(num debugMode);
  external set debugLimit(dynamic debugLimit);
  external set debugFactor(dynamic debugFactor);
  external String getClassName();
  external bool needAlphaBlending();
  external bool needAlphaTesting();
  external BaseTexture getAlphaTestTexture();
  external bool isReadyForSubMesh(AbstractMesh mesh, SubMesh subMesh, [bool useInstances]);
  external bool isMetallicWorkflow();
  external void forceCompilation(AbstractMesh mesh, [void Function(Material material) onCompiled, IMaterialCompilationOptions options, void Function(String reason) onError]);
  external void buildUniformLayout();
  external void unbind();
  external void bindForSubMesh(Matrix world, Mesh mesh, SubMesh subMesh);
  external List<IAnimatable> getAnimatables();
  external List<BaseTexture> getActiveTextures();
  external bool hasTexture(BaseTexture texture);
  external bool setPrePassRenderer(PrePassRenderer prePassRenderer);
  external void dispose([bool forceDisposeEffect, bool forceDisposeTextures, bool notBoundToMesh]);
}
