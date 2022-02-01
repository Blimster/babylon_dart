@JS('BABYLON')
library babylon;

import 'dart:html';
import 'dart:web_audio';
import 'dart:web_gl';
import 'dart:typed_data';

import 'package:js/js.dart';

part 'src/type_aliases.dart';
part 'src/abstractactionmanager.dart';
part 'src/abstractmesh.dart';
part 'src/abstractscene.dart';
part 'src/actionmanager.dart';
part 'src/alphastate.dart';
part 'src/analyser.dart';
part 'src/angle.dart';
part 'src/animatable.dart';
part 'src/animation.dart';
part 'src/animationpropertiesoverride.dart';
part 'src/arcrotatecamera.dart';
part 'src/autorotationbehavior.dart';
part 'src/axisdraggizmo.dart';
part 'src/axisscalegizmo.dart';
part 'src/backease.dart';
part 'src/basesubmesh.dart';
part 'src/basetexture.dart';
part 'src/behavior.dart';
part 'src/bone.dart';
part 'src/bouncingbehavior.dart';
part 'src/boundingbox.dart';
part 'src/boundingboxgizmo.dart';
part 'src/boundingboxrenderer.dart';
part 'src/boundinginfo.dart';
part 'src/boundingsphere.dart';
part 'src/camera.dart';
part 'src/cannonjsplugin.dart';
part 'src/collider.dart';
part 'src/color3.dart';
part 'src/color4.dart';
part 'src/colorcurves.dart';
part 'src/csg.dart';
part 'src/cubetexture.dart';
part 'src/databuffer.dart';
part 'src/debuglayer.dart';
part 'src/debuglayertab.dart';
part 'src/depthcullingstate.dart';
part 'src/depthrenderer.dart';
part 'src/depthsortedparticle.dart';
part 'src/depthtexturecreationoptions.dart';
part 'src/detailmapconfiguration.dart';
part 'src/directionallight.dart';
part 'src/dynamictexture.dart';
part 'src/easingfunction.dart';
part 'src/effect.dart';
part 'src/effectfallbacks.dart';
part 'src/effectlayer.dart';
part 'src/engine.dart';
part 'src/enginecapabilities.dart';
part 'src/engineview.dart';
part 'src/environmenthelper.dart';
part 'src/eventstate.dart';
part 'src/exponentialease.dart';
part 'src/framingbehavior.dart';
part 'src/freecamera.dart';
part 'src/fresnelparameters.dart';
part 'src/gamepadmanager.dart';
part 'src/geometry.dart';
part 'src/geometrybufferrenderer.dart';
part 'src/gizmo.dart';
part 'src/gizmoaxiscache.dart';
part 'src/gizmomanager.dart';
part 'src/glowlayer.dart';
part 'src/gltfdata.dart';
part 'src/gltf2export.dart';
part 'src/groundmesh.dart';
part 'src/hemisphericlight.dart';
part 'src/highlightlayer.dart';
part 'src/hostinformation.dart';
part 'src/iaction.dart';
part 'src/iactionevent.dart';
part 'src/iagentparameters.dart';
part 'src/ianimatable.dart';
part 'src/iaudioengine.dart';
part 'src/ibehavioraware.dart';
part 'src/iclipplanesholder.dart';
part 'src/icollisioncoordinator.dart';
part 'src/icolor4like.dart';
part 'src/icreatecapsuleoptions.dart';
part 'src/icrowd.dart';
part 'src/icullable.dart';
part 'src/icustomanimationframerequester.dart';
part 'src/icustomshadernameresolveoptions.dart';
part 'src/idisplaychangedeventargs.dart';
part 'src/idisposable.dart';
part 'src/ieasingfunction.dart';
part 'src/iedgesrendereroptions.dart';
part 'src/iexplorerextensibilitygroup.dart';
part 'src/iexplorerextensibilityoption.dart';
part 'src/iexportoptions.dart';
part 'src/igetsetverticesdata.dart';
part 'src/iglowlayeroptions.dart';
part 'src/ihighlightlayeroptions.dart';
part 'src/iimageprocessingconfigurationdefines.dart';
part 'src/iinspectable.dart';
part 'src/iinspectoroptions.dart';
part 'src/iioptionshadowdepthmaterial.dart';
part 'src/iloadingscreen.dart';
part 'src/imageprocessingconfiguration.dart';
part 'src/imageprocessingpostprocess.dart';
part 'src/imaterialanisotropicdefines.dart';
part 'src/imaterialbrdfdefines.dart';
part 'src/imaterialclearcoatdefines.dart';
part 'src/imaterialcompilationoptions.dart';
part 'src/imaterialdetailmapdefines.dart';
part 'src/imaterialsheendefines.dart';
part 'src/imaterialsubsurfacedefines.dart';
part 'src/imotorenabledjoint.dart';
part 'src/imultirendertargetoptions.dart';
part 'src/inavigationengineplugin.dart';
part 'src/inavmeshparameters.dart';
part 'src/inspectabletype.dart';
part 'src/instancedmesh.dart';
part 'src/instancingattributeinfo.dart';
part 'src/internaltexture.dart';
part 'src/internaltexturesource.dart';
part 'src/intersectioninfo.dart';
part 'src/ieffectfallbacks.dart';
part 'src/ienvironmenthelperoptions.dart';
part 'src/iofflineprovider.dart';
part 'src/irenderingmanagerautoclearsetup.dart';
part 'src/iphysicsenabledobject.dart';
part 'src/iphysicsengine.dart';
part 'src/iphysicsengineplugin.dart';
part 'src/ipipelinecontext.dart';
part 'src/iplanelike.dart';
part 'src/ishadowgenerator.dart';
part 'src/iscenecomponent.dart';
part 'src/iscenelike.dart';
part 'src/ishadowlight.dart';
part 'src/isimplificationsettings.dart';
part 'src/isimplificationtask.dart';
part 'src/isize.dart';
part 'src/ismartarraylike.dart';
part 'src/isoundtrackoptions.dart';
part 'src/isoundoptions.dart';
part 'src/ispritemanager.dart';
part 'src/ivector3like.dart';
part 'src/iviewportlike.dart';
part 'src/iviewportownerlike.dart';
part 'src/ivrpresentationattributes.dart';
part 'src/keyboardinfo.dart';
part 'src/keyboardinfopre.dart';
part 'src/lensflare.dart';
part 'src/lensflaresystem.dart';
part 'src/layer.dart';
part 'src/light.dart';
part 'src/linesmesh.dart';
part 'src/loader.dart';
part 'src/material.dart';
part 'src/materialdefines.dart';
part 'src/matrix.dart';
part 'src/mesh.dart';
part 'src/meshbuilder.dart';
part 'src/modelshape.dart';
part 'src/morphtarget.dart';
part 'src/morphtargetmanager.dart';
part 'src/multimaterial.dart';
part 'src/multirendertarget.dart';
part 'src/node.dart';
part 'src/nullengine.dart';
part 'src/nullengineoptions.dart';
part 'src/observable.dart';
part 'src/observer.dart';
part 'src/octree.dart';
part 'src/octreeblock.dart';
part 'src/outlinerenderer.dart';
part 'src/particle.dart';
part 'src/passpostprocess.dart';
part 'src/pbranisotropicconfiguration.dart';
part 'src/pbrbasematerial.dart';
part 'src/pbrbasesimplematerial.dart';
part 'src/pbrbrdfconfiguration.dart';
part 'src/pbrclearcoatconfiguration.dart';
part 'src/pbrmaterial.dart';
part 'src/pbrmetallicroughnessmaterial.dart';
part 'src/pbrsheenconfiguration.dart';
part 'src/pbrspecularglossinessmaterial.dart';
part 'src/pbrsubsurfaceconfiguration.dart';
part 'src/perfcounter.dart';
part 'src/performancemonitor.dart';
part 'src/physicsimpostor.dart';
part 'src/physicsimpostorjoint.dart';
part 'src/physicsimpostorparameters.dart';
part 'src/physicsjoint.dart';
part 'src/physicsjointdata.dart';
part 'src/physicsraycastresult.dart';
part 'src/pickinginfo.dart';
part 'src/plane.dart';
part 'src/planedraggizmo.dart';
part 'src/planerotationgizmo.dart';
part 'src/pointerdragbehavior.dart';
part 'src/pointereventtypes.dart';
part 'src/pointerinfo.dart';
part 'src/pointerinfobase.dart';
part 'src/pointerinfopre.dart';
part 'src/pointlight.dart';
part 'src/positiongizmo.dart';
part 'src/postprocess.dart';
part 'src/postprocessmanager.dart';
part 'src/postprocessrendereffect.dart';
part 'src/postprocessrenderpipeline.dart';
part 'src/postprocessrenderpipelinemanager.dart';
part 'src/promise.dart';
part 'src/prepassconfiguration.dart';
part 'src/prepasseffectconfiguration.dart';
part 'src/prepassrenderer.dart';
part 'src/pushmaterial.dart';
part 'src/quaternion.dart';
part 'src/ray.dart';
part 'src/recastjsplugin.dart';
part 'src/reflectionprobe.dart';
part 'src/renderinggroupinfo.dart';
part 'src/rendertargetcreationoptions.dart';
part 'src/rendertargettexture.dart';
part 'src/rotationgizmo.dart';
part 'src/runtimeanimation.dart';
part 'src/scalar.dart';
part 'src/scalegizmo.dart';
part 'src/scene.dart';
part 'src/sceneoptions.dart';
part 'src/shadow.dart';
part 'src/shadowdepthwrapper.dart';
part 'src/shadowlight.dart';
part 'src/simplificationqueue.dart';
part 'src/sixdofdragbehavior.dart';
part 'src/smartarray.dart';
part 'src/smartarraynoduplicate.dart';
part 'src/solidparticle.dart';
part 'src/solidparticlesystem.dart';
part 'src/solidparticlevertex.dart';
part 'src/sound.dart';
part 'src/soundtrack.dart';
part 'src/space.dart';
part 'src/sphericalpolynomial.dart';
part 'src/sphericalharmonics.dart';
part 'src/sprite.dart';
part 'src/standardmaterial.dart';
part 'src/standardmaterialdefines.dart';
part 'src/stencilstate.dart';
part 'src/submesh.dart';
part 'src/subsurfaceconfiguration.dart';
part 'src/subsurfacescatteringpostprocess.dart';
part 'src/targetcamera.dart';
part 'src/thinengine.dart';
part 'src/thinsprite.dart';
part 'src/thintexture.dart';
part 'src/transformnode.dart';
part 'src/texture.dart';
part 'src/uniformbuffer.dart';
part 'src/utilitylayerrenderer.dart';
part 'src/vector2.dart';
part 'src/vector3.dart';
part 'src/vector4.dart';
part 'src/vertexbuffer.dart';
part 'src/vertexdata.dart';
part 'src/viewport.dart';
part 'src/vrcamerametrics.dart';
part 'src/vrexperiencehelper.dart';
part 'src/vrexperiencehelperoptions.dart';
part 'src/webvroptions.dart';
part 'src/webxrdefaultexperience.dart';
part 'src/webxrdefaultexperienceoptions.dart';

@JS()
@anonymous
class RenderTargetTextureSize {
  external factory RenderTargetTextureSize({int width, int height, int layers});
  external int get size;
  external int get height;
  external int get layers;
}

@JS()
@anonymous
class EngineOptions {
  external factory EngineOptions(
      {num limitDeviceRatio,
      bool autoEnableWebVR,
      bool disableWebGL2Support,
      bool audioEngine,
      bool deterministicLockstep,
      num lockstepMaxSteps,
      num timeStep,
      bool doNotHandleContextLost,
      bool doNotHandleTouchAction,
      bool useHighPrecisionFloats,
      bool xrCompatible,
      bool useHighPrecisionMatrix,
      bool failIfMajorPerformanceCaveat,
      bool alpha,
      bool antialias,
      bool depth,
      bool desynchronized,
      String powerPreference,
      bool premultipliedAlpha,
      bool preserveDrawingBuffer,
      bool stencil});
  external num get limitDeviceRatio;
  external bool get autoEnableWebVR;
  external bool get disableWebGL2Support;
  external bool get audioEngine;
  external bool get deterministicLockstep;
  external num get lockstepMaxSteps;
  external num get timeStep;
  external bool get doNotHandleContextLost;
  external bool get doNotHandleTouchAction;
  external bool get useHighPrecisionFloats;
  external bool get xrCompatible;
  external bool get useHighPrecisionMatrix;
  external bool get failIfMajorPerformanceCaveat;
  external bool get alpha;
  external bool get antialias;
  external bool get depth;
  external bool get desynchronized;
  external String get powerPreference;
  external bool get premultipliedAlpha;
  external bool get preserveDrawingBuffer;
  external bool get stencil;
}
