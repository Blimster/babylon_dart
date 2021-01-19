import 'dart:html';
import 'dart:js';
import 'dart:math';

import 'package:babylon_dart/babylon_dart.dart';

void main() {
  // query the canvas element
  final canvas = querySelector('#render-canvas') as CanvasElement;

  // create the engine
  final engine = Engine.args(canvas, true);

  // create the scene andd configure it
  final scene = Scene(engine);

  final camera = ArcRotateCamera("ArcRotateCamera", -pi / 2, pi / 2.2, 50, Vector3(0, 0, 0), scene);
  camera.attachControl(true);
  HemisphericLight("light", Vector3(0, 1, 0), scene);

  final box = MeshBuilder.CreateBox("box", MeshBuilderCreateBoxOptions(size: 15), scene);
  final sphere = MeshBuilder.CreateSphere("sphere", MeshBuilderCreateSphereOptions(segments: 16, diameter: 20), scene);

  final boxCsg = CSG.FromMesh(box);
  final sphereCsg = CSG.FromMesh(sphere);

  final resultCsg = boxCsg.subtract(sphereCsg);

  final mat0 = StandardMaterial("mat0", scene);
  mat0.diffuseColor = Color3(1, 0, 0);

  final mat1 = StandardMaterial("mat1", scene);
  mat1.diffuseColor = Color3(0, 1, 0);

  final multiMat = MultiMaterial("multiMat", scene);
  multiMat.subMaterials.addAll([mat0, mat1]);

  box.material = mat0;
  sphere.material = mat1;

  final result = resultCsg.toMesh('result', multiMat, scene, true);
  result.position.x = 20;

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
