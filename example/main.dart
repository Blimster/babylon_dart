import 'dart:html';

import 'package:babylon_dart/babylon_dart.dart';
import 'package:js/js.dart';

void main() {
  // query the canvas element
  final canvas = querySelector('#render-canvas') as CanvasElement;

  // create the engine
  final engine = Engine(canvas, true);

  // create the scene andd configure it
  final scene = Scene(engine);
  scene.clearColor = Color4(0.2, 0.2, 0.2, 1);

  // create a camera that can be controlled by mouse or keyboard
  final camera = ArcRotateCamera('camera', 1, 1, 20, Vector3(0, 0, 0), scene);
  camera.attachControl();

  // a global light
  final hemiLight = HemisphericLight("hemiLight", Vector3(0, 1, 0), scene);
  hemiLight.diffuse = Color3(0.5, 0.5, 0.5);

  // a point light for shadows
  final pointLight = PointLight("dirL", Vector3(0, 10, 0), scene);
  pointLight.diffuse = Color3(0.5, 0.5, 0.5);

  // create material and mesh for a red sphere
  final sphereMaterial = StandardMaterial("sphereMat", scene);
  sphereMaterial.diffuseColor = Color3.Red();

  final sphere = MeshBuilder.CreateSphere('sphere', MeshBuilderCreateSphereOptions(segments: 16), scene);
  sphere.material = sphereMaterial;
  sphere.position = Vector3(0, 5, 0);

  // create a textured ground
  final groundTexture = Texture.args('dart-logo.jpeg', scene, true, false, 1);
  groundTexture.uScale = 1;
  groundTexture.vScale = 1;

  final groundMaterial = StandardMaterial("groundMat", scene);
  groundMaterial.diffuseColor = Color3.White();
  groundMaterial.diffuseTexture = groundTexture;
  groundMaterial.specularColor = Color3(0.1, 0.1, 0.1);

  final ground = MeshBuilder.CreateGround('ground', MeshBuilderCreateGroundOptions(height: 10, width: 10), scene);
  ground.material = groundMaterial;
  ground.receiveShadows = true;

  // enable shadows
  final shadowGenerator = ShadowGenerator(512, pointLight);
  shadowGenerator.getShadowMap().renderList.add(sphere);

  // enabled physics
  scene.enablePhysics(Vector3(0, -9.81, 0), CannonJSPlugin());

  ground.physicsImpostor = PhysicsImpostor(
    ground as IPhysicsEnabledObject,
    PhysicsImpostor.HeightmapImpostor,
    PhysicsImpostorParameters(restitution: 4),
    scene,
  );

  sphere.physicsImpostor = PhysicsImpostor(
    sphere as IPhysicsEnabledObject,
    PhysicsImpostor.SphereImpostor,
    PhysicsImpostorParameters(mass: 1),
    scene,
  );

  // focus canvas for keyboard controls
  canvas.focus();

  // the render loop
  engine.runRenderLoop(allowInterop(() {
    scene.render();
  }));

  // react to changes of the size of the canvas
  window.onResize.listen((event) {
    engine.resize();
  });
}
