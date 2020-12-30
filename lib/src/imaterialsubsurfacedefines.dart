part of babylon;

/// interface IMaterialSubSurfaceDefines
@JS()
abstract class IMaterialSubSurfaceDefines {
  external bool SUBSURFACE;
  external bool SS_REFRACTION;
  external bool SS_TRANSLUCENCY;
  external bool SS_SCATTERING;
  external bool SS_THICKNESSANDMASK_TEXTURE;
  external num SS_THICKNESSANDMASK_TEXTUREDIRECTUV;
  external bool SS_REFRACTIONMAP_3D;
  external bool SS_REFRACTIONMAP_OPPOSITEZ;
  external bool SS_LODINREFRACTIONALPHA;
  external bool SS_GAMMAREFRACTION;
  external bool SS_RGBDREFRACTION;
  external bool SS_LINEARSPECULARREFRACTION;
  external bool SS_LINKREFRACTIONTOTRANSPARENCY;
  external bool SS_ALBEDOFORREFRACTIONTINT;
  external bool SS_MASK_FROM_THICKNESS_TEXTURE;
  external bool SS_MASK_FROM_THICKNESS_TEXTURE_GLTF;
}
