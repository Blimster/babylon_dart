import 'dart:html';
import 'dart:math';

import 'package:babylon_dart/babylon_dart.dart';
import 'package:js/js.dart';

void main() {
  // query the canvas element
  final canvas = querySelector('#render-canvas') as CanvasElement;

  // create the engine
  final engine = Engine(canvas, true);

  final scene = new Scene(engine);
  final camera = new ArcRotateCamera("camera1", 0, pi / 2, 5, Vector3.Zero(), scene);

  camera.lowerRadiusLimit = 2;
  camera.upperRadiusLimit = 10;

  camera.attachControl(true);

  final sphere = Mesh.CreateSphere("sphere1", 16, 2, scene);

  final pbr = new PBRMetallicRoughnessMaterial("pbr", scene);
  sphere.material = pbr;

  pbr.baseColor = new Color3(1.0, 0.766, 0.336);
  pbr.metallic = 1.0;
  pbr.roughness = 0.0;
  pbr.environmentTexture =
      CubeTexture.CreateFromPrefilteredData("https://playground.babylonjs.com/textures/environment.dds", scene);

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
