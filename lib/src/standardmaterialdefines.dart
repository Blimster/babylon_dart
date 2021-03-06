part of babylon;

/// class StandardMaterialDefines
@JS()
class StandardMaterialDefines extends MaterialDefines implements IImageProcessingConfigurationDefines, IMaterialDetailMapDefines {
  external StandardMaterialDefines();
  external bool get MAINUV1;
  external bool get MAINUV2;
  external bool get DIFFUSE;
  external num get DIFFUSEDIRECTUV;
  external bool get DETAIL;
  external num get DETAILDIRECTUV;
  external num get DETAIL_NORMALBLENDMETHOD;
  external bool get AMBIENT;
  external num get AMBIENTDIRECTUV;
  external bool get OPACITY;
  external num get OPACITYDIRECTUV;
  external bool get OPACITYRGB;
  external bool get REFLECTION;
  external bool get EMISSIVE;
  external num get EMISSIVEDIRECTUV;
  external bool get SPECULAR;
  external num get SPECULARDIRECTUV;
  external bool get BUMP;
  external num get BUMPDIRECTUV;
  external bool get PARALLAX;
  external bool get PARALLAXOCCLUSION;
  external bool get SPECULAROVERALPHA;
  external bool get CLIPPLANE;
  external bool get CLIPPLANE2;
  external bool get CLIPPLANE3;
  external bool get CLIPPLANE4;
  external bool get CLIPPLANE5;
  external bool get CLIPPLANE6;
  external bool get ALPHATEST;
  external bool get DEPTHPREPASS;
  external bool get ALPHAFROMDIFFUSE;
  external bool get POINTSIZE;
  external bool get FOG;
  external bool get SPECULARTERM;
  external bool get DIFFUSEFRESNEL;
  external bool get OPACITYFRESNEL;
  external bool get REFLECTIONFRESNEL;
  external bool get REFRACTIONFRESNEL;
  external bool get EMISSIVEFRESNEL;
  external bool get FRESNEL;
  external bool get NORMAL;
  external bool get UV1;
  external bool get UV2;
  external bool get VERTEXCOLOR;
  external bool get VERTEXALPHA;
  external num get NUM_BONE_INFLUENCERS;
  external num get BonesPerMesh;
  external bool get BONETEXTURE;
  external bool get BONES_VELOCITY_ENABLED;
  external bool get INSTANCES;
  external bool get THIN_INSTANCES;
  external bool get GLOSSINESS;
  external bool get ROUGHNESS;
  external bool get EMISSIVEASILLUMINATION;
  external bool get LINKEMISSIVEWITHDIFFUSE;
  external bool get REFLECTIONFRESNELFROMSPECULAR;
  external bool get LIGHTMAP;
  external num get LIGHTMAPDIRECTUV;
  external bool get OBJECTSPACE_NORMALMAP;
  external bool get USELIGHTMAPASSHADOWMAP;
  external bool get REFLECTIONMAP_3D;
  external bool get REFLECTIONMAP_SPHERICAL;
  external bool get REFLECTIONMAP_PLANAR;
  external bool get REFLECTIONMAP_CUBIC;
  external bool get USE_LOCAL_REFLECTIONMAP_CUBIC;
  external bool get REFLECTIONMAP_PROJECTION;
  external bool get REFLECTIONMAP_SKYBOX;
  external bool get REFLECTIONMAP_EXPLICIT;
  external bool get REFLECTIONMAP_EQUIRECTANGULAR;
  external bool get REFLECTIONMAP_EQUIRECTANGULAR_FIXED;
  external bool get REFLECTIONMAP_MIRROREDEQUIRECTANGULAR_FIXED;
  external bool get INVERTCUBICMAP;
  external bool get LOGARITHMICDEPTH;
  external bool get REFRACTION;
  external bool get REFRACTIONMAP_3D;
  external bool get REFLECTIONOVERALPHA;
  external bool get TWOSIDEDLIGHTING;
  external bool get SHADOWFLOAT;
  external bool get MORPHTARGETS;
  external bool get MORPHTARGETS_NORMAL;
  external bool get MORPHTARGETS_TANGENT;
  external bool get MORPHTARGETS_UV;
  external num get NUM_MORPH_INFLUENCERS;
  external bool get NONUNIFORMSCALING;
  external bool get PREMULTIPLYALPHA;
  external bool get ALPHATEST_AFTERALLALPHACOMPUTATIONS;
  external bool get ALPHABLEND;
  external bool get PREPASS;
  external bool get PREPASS_IRRADIANCE;
  external num get PREPASS_IRRADIANCE_INDEX;
  external bool get PREPASS_ALBEDO;
  external num get PREPASS_ALBEDO_INDEX;
  external bool get PREPASS_DEPTHNORMAL;
  external num get PREPASS_DEPTHNORMAL_INDEX;
  external bool get PREPASS_POSITION;
  external num get PREPASS_POSITION_INDEX;
  external bool get PREPASS_VELOCITY;
  external num get PREPASS_VELOCITY_INDEX;
  external bool get PREPASS_REFLECTIVITY;
  external num get PREPASS_REFLECTIVITY_INDEX;
  external num get SCENE_MRT_COUNT;
  external bool get RGBDLIGHTMAP;
  external bool get RGBDREFLECTION;
  external bool get RGBDREFRACTION;
  external bool get IMAGEPROCESSING;
  external bool get VIGNETTE;
  external bool get VIGNETTEBLENDMODEMULTIPLY;
  external bool get VIGNETTEBLENDMODEOPAQUE;
  external bool get TONEMAPPING;
  external bool get TONEMAPPING_ACES;
  external bool get CONTRAST;
  external bool get COLORCURVES;
  external bool get COLORGRADING;
  external bool get COLORGRADING3D;
  external bool get SAMPLER3DGREENDEPTH;
  external bool get SAMPLER3DBGRMAP;
  external bool get IMAGEPROCESSINGPOSTPROCESS;
  external bool get MULTIVIEW;
  external bool get IS_REFLECTION_LINEAR;
  external bool get IS_REFRACTION_LINEAR;
  external bool get EXPOSURE;
  external set MAINUV1(bool MAINUV1);
  external set MAINUV2(bool MAINUV2);
  external set DIFFUSE(bool DIFFUSE);
  external set DIFFUSEDIRECTUV(num DIFFUSEDIRECTUV);
  external set DETAIL(bool DETAIL);
  external set DETAILDIRECTUV(num DETAILDIRECTUV);
  external set DETAIL_NORMALBLENDMETHOD(num DETAIL_NORMALBLENDMETHOD);
  external set AMBIENT(bool AMBIENT);
  external set AMBIENTDIRECTUV(num AMBIENTDIRECTUV);
  external set OPACITY(bool OPACITY);
  external set OPACITYDIRECTUV(num OPACITYDIRECTUV);
  external set OPACITYRGB(bool OPACITYRGB);
  external set REFLECTION(bool REFLECTION);
  external set EMISSIVE(bool EMISSIVE);
  external set EMISSIVEDIRECTUV(num EMISSIVEDIRECTUV);
  external set SPECULAR(bool SPECULAR);
  external set SPECULARDIRECTUV(num SPECULARDIRECTUV);
  external set BUMP(bool BUMP);
  external set BUMPDIRECTUV(num BUMPDIRECTUV);
  external set PARALLAX(bool PARALLAX);
  external set PARALLAXOCCLUSION(bool PARALLAXOCCLUSION);
  external set SPECULAROVERALPHA(bool SPECULAROVERALPHA);
  external set CLIPPLANE(bool CLIPPLANE);
  external set CLIPPLANE2(bool CLIPPLANE2);
  external set CLIPPLANE3(bool CLIPPLANE3);
  external set CLIPPLANE4(bool CLIPPLANE4);
  external set CLIPPLANE5(bool CLIPPLANE5);
  external set CLIPPLANE6(bool CLIPPLANE6);
  external set ALPHATEST(bool ALPHATEST);
  external set DEPTHPREPASS(bool DEPTHPREPASS);
  external set ALPHAFROMDIFFUSE(bool ALPHAFROMDIFFUSE);
  external set POINTSIZE(bool POINTSIZE);
  external set FOG(bool FOG);
  external set SPECULARTERM(bool SPECULARTERM);
  external set DIFFUSEFRESNEL(bool DIFFUSEFRESNEL);
  external set OPACITYFRESNEL(bool OPACITYFRESNEL);
  external set REFLECTIONFRESNEL(bool REFLECTIONFRESNEL);
  external set REFRACTIONFRESNEL(bool REFRACTIONFRESNEL);
  external set EMISSIVEFRESNEL(bool EMISSIVEFRESNEL);
  external set FRESNEL(bool FRESNEL);
  external set NORMAL(bool NORMAL);
  external set UV1(bool UV1);
  external set UV2(bool UV2);
  external set VERTEXCOLOR(bool VERTEXCOLOR);
  external set VERTEXALPHA(bool VERTEXALPHA);
  external set NUM_BONE_INFLUENCERS(num NUM_BONE_INFLUENCERS);
  external set BonesPerMesh(num BonesPerMesh);
  external set BONETEXTURE(bool BONETEXTURE);
  external set BONES_VELOCITY_ENABLED(bool BONES_VELOCITY_ENABLED);
  external set INSTANCES(bool INSTANCES);
  external set THIN_INSTANCES(bool THIN_INSTANCES);
  external set GLOSSINESS(bool GLOSSINESS);
  external set ROUGHNESS(bool ROUGHNESS);
  external set EMISSIVEASILLUMINATION(bool EMISSIVEASILLUMINATION);
  external set LINKEMISSIVEWITHDIFFUSE(bool LINKEMISSIVEWITHDIFFUSE);
  external set REFLECTIONFRESNELFROMSPECULAR(bool REFLECTIONFRESNELFROMSPECULAR);
  external set LIGHTMAP(bool LIGHTMAP);
  external set LIGHTMAPDIRECTUV(num LIGHTMAPDIRECTUV);
  external set OBJECTSPACE_NORMALMAP(bool OBJECTSPACE_NORMALMAP);
  external set USELIGHTMAPASSHADOWMAP(bool USELIGHTMAPASSHADOWMAP);
  external set REFLECTIONMAP_3D(bool REFLECTIONMAP_3D);
  external set REFLECTIONMAP_SPHERICAL(bool REFLECTIONMAP_SPHERICAL);
  external set REFLECTIONMAP_PLANAR(bool REFLECTIONMAP_PLANAR);
  external set REFLECTIONMAP_CUBIC(bool REFLECTIONMAP_CUBIC);
  external set USE_LOCAL_REFLECTIONMAP_CUBIC(bool USE_LOCAL_REFLECTIONMAP_CUBIC);
  external set REFLECTIONMAP_PROJECTION(bool REFLECTIONMAP_PROJECTION);
  external set REFLECTIONMAP_SKYBOX(bool REFLECTIONMAP_SKYBOX);
  external set REFLECTIONMAP_EXPLICIT(bool REFLECTIONMAP_EXPLICIT);
  external set REFLECTIONMAP_EQUIRECTANGULAR(bool REFLECTIONMAP_EQUIRECTANGULAR);
  external set REFLECTIONMAP_EQUIRECTANGULAR_FIXED(bool REFLECTIONMAP_EQUIRECTANGULAR_FIXED);
  external set REFLECTIONMAP_MIRROREDEQUIRECTANGULAR_FIXED(bool REFLECTIONMAP_MIRROREDEQUIRECTANGULAR_FIXED);
  external set INVERTCUBICMAP(bool INVERTCUBICMAP);
  external set LOGARITHMICDEPTH(bool LOGARITHMICDEPTH);
  external set REFRACTION(bool REFRACTION);
  external set REFRACTIONMAP_3D(bool REFRACTIONMAP_3D);
  external set REFLECTIONOVERALPHA(bool REFLECTIONOVERALPHA);
  external set TWOSIDEDLIGHTING(bool TWOSIDEDLIGHTING);
  external set SHADOWFLOAT(bool SHADOWFLOAT);
  external set MORPHTARGETS(bool MORPHTARGETS);
  external set MORPHTARGETS_NORMAL(bool MORPHTARGETS_NORMAL);
  external set MORPHTARGETS_TANGENT(bool MORPHTARGETS_TANGENT);
  external set MORPHTARGETS_UV(bool MORPHTARGETS_UV);
  external set NUM_MORPH_INFLUENCERS(num NUM_MORPH_INFLUENCERS);
  external set NONUNIFORMSCALING(bool NONUNIFORMSCALING);
  external set PREMULTIPLYALPHA(bool PREMULTIPLYALPHA);
  external set ALPHATEST_AFTERALLALPHACOMPUTATIONS(bool ALPHATEST_AFTERALLALPHACOMPUTATIONS);
  external set ALPHABLEND(bool ALPHABLEND);
  external set PREPASS(bool PREPASS);
  external set PREPASS_IRRADIANCE(bool PREPASS_IRRADIANCE);
  external set PREPASS_IRRADIANCE_INDEX(num PREPASS_IRRADIANCE_INDEX);
  external set PREPASS_ALBEDO(bool PREPASS_ALBEDO);
  external set PREPASS_ALBEDO_INDEX(num PREPASS_ALBEDO_INDEX);
  external set PREPASS_DEPTHNORMAL(bool PREPASS_DEPTHNORMAL);
  external set PREPASS_DEPTHNORMAL_INDEX(num PREPASS_DEPTHNORMAL_INDEX);
  external set PREPASS_POSITION(bool PREPASS_POSITION);
  external set PREPASS_POSITION_INDEX(num PREPASS_POSITION_INDEX);
  external set PREPASS_VELOCITY(bool PREPASS_VELOCITY);
  external set PREPASS_VELOCITY_INDEX(num PREPASS_VELOCITY_INDEX);
  external set PREPASS_REFLECTIVITY(bool PREPASS_REFLECTIVITY);
  external set PREPASS_REFLECTIVITY_INDEX(num PREPASS_REFLECTIVITY_INDEX);
  external set SCENE_MRT_COUNT(num SCENE_MRT_COUNT);
  external set RGBDLIGHTMAP(bool RGBDLIGHTMAP);
  external set RGBDREFLECTION(bool RGBDREFLECTION);
  external set RGBDREFRACTION(bool RGBDREFRACTION);
  external set IMAGEPROCESSING(bool IMAGEPROCESSING);
  external set VIGNETTE(bool VIGNETTE);
  external set VIGNETTEBLENDMODEMULTIPLY(bool VIGNETTEBLENDMODEMULTIPLY);
  external set VIGNETTEBLENDMODEOPAQUE(bool VIGNETTEBLENDMODEOPAQUE);
  external set TONEMAPPING(bool TONEMAPPING);
  external set TONEMAPPING_ACES(bool TONEMAPPING_ACES);
  external set CONTRAST(bool CONTRAST);
  external set COLORCURVES(bool COLORCURVES);
  external set COLORGRADING(bool COLORGRADING);
  external set COLORGRADING3D(bool COLORGRADING3D);
  external set SAMPLER3DGREENDEPTH(bool SAMPLER3DGREENDEPTH);
  external set SAMPLER3DBGRMAP(bool SAMPLER3DBGRMAP);
  external set IMAGEPROCESSINGPOSTPROCESS(bool IMAGEPROCESSINGPOSTPROCESS);
  external set MULTIVIEW(bool MULTIVIEW);
  external set IS_REFLECTION_LINEAR(bool IS_REFLECTION_LINEAR);
  external set IS_REFRACTION_LINEAR(bool IS_REFRACTION_LINEAR);
  external set EXPOSURE(bool EXPOSURE);
  external void setReflectionMode(String modeToEnable);
}
