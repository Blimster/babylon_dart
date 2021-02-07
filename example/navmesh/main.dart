import 'dart:html';

import 'package:babylon_dart/babylon_dart.dart';
import 'package:js/js.dart';

void main() {
  // query the canvas element
  final canvas = querySelector('#render-canvas') as CanvasElement;

  // create the engine
  final engine = Engine.args(canvas, true);

  // create the scene andd configure it
  final scene = Scene(engine);
  scene.clearColor = Color4(0.2, 0.2, 0.2, 1);

  // create a camera that can be controlled by mouse or keyboard
  final camera = ArcRotateCamera('camera', 1, 1, 20, Vector3(0, 0, 0), scene);
  camera.attachControl();

  // a global light
  final hemiLight = HemisphericLight("hemiLight", Vector3(0, 1, 0), scene);
  hemiLight.diffuse = Color3(0.5, 0.5, 0.5);

  final groundMaterial = StandardMaterial("groundMat", scene);
  groundMaterial.diffuseColor = Color3.White();
  groundMaterial.specularColor = Color3(0.1, 0.1, 0.1);

  final ground = MeshBuilder.CreateGround('ground', MeshBuilderCreateGroundOptions(height: 10, width: 10), scene);
  ground.material = groundMaterial;
  ground.receiveShadows = true;

  final start = MeshBuilder.CreateSphere('start', MeshBuilderCreateSphereOptions(diameter: 0.5), scene);
  start.position.y = 0.25;
  start.position.x = 4;
  start.material = StandardMaterial('startMat', scene)..diffuseColor = Color3.Blue();

  final end = MeshBuilder.CreateSphere('end', MeshBuilderCreateSphereOptions(diameter: 0.5), scene);
  end.position.y = 0.25;
  end.position.x = -4;
  end.material = StandardMaterial('endMat', scene)..diffuseColor = Color3.Red();

  final obstacle1 =
      MeshBuilder.CreateBox('obstacle1', MeshBuilderCreateBoxOptions(width: 0.5, height: 0.5, depth: 4), scene);
  obstacle1.position.y = 0.25;
  obstacle1.position.x = 2;
  obstacle1.position.z = -3;

  final obstacle2 =
      MeshBuilder.CreateBox('obstacle1', MeshBuilderCreateBoxOptions(width: 0.5, height: 0.5, depth: 8), scene);
  obstacle2.position.y = 0.25;
  obstacle2.position.x = -2;
  obstacle2.position.z = 1;

  final navPlugin = RecastJSPlugin();
  navPlugin.createNavMesh(
      [ground, obstacle1, obstacle2],
      INavMeshParameters(
        cs: 0.2,
        ch: 0.2,
        walkableSlopeAngle: 35,
        walkableHeight: 1,
        walkableClimb: 1,
        walkableRadius: 1,
        maxEdgeLen: 12,
        maxSimplificationError: 1.3,
        minRegionArea: 8,
        mergeRegionArea: 20,
        maxVertsPerPoly: 6,
        detailSampleDist: 6,
        detailSampleMaxError: 1,
      ));
  final points = navPlugin.computePath(start.position, end.position);

  MeshBuilder.CreateDashedLines(
    'path',
    MeshBuilderCreateDashedLinesOptions(points: points),
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
