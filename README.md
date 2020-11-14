# babylon_dart

Bindings for the [BabylonJS](https://www.babylonjs.com/) 4.1 web rendering engine.

## Status Quo

The bindings are created using a self-written generator ([babylon_dart_gen](https://github.com/blimster/babylon_dart_gen)). This is because the generator [js_facade_gen](https://github.com/dart-lang/js_facade_gen) from the Dart project runs into multiple exceptions when trying to generate bindings from the `babylon.d.ts` file.

`babylon_dart_gen` has a configuration to define what should be included or excluded. At the moment, only a subset is included. The more features are implemented in the generator the more parts of the `babylon.d.ts` file can be converted.

Work is in progress. Tell me what is important for you and I will try to include it in a new release of `babylon`. Or even better, create a pull request in the [babylon_dart_gen](https://github.com/blimster/babylon_dart_gen) project.

## Documentation

Currently, no docs are generated in the bindings. For help look at the official [docs](https://doc.babylonjs.com/).

## Example

In your `index.html` add links to the BabylonJS implementation:

```html
<script src="/packages/babylon/assets/babylon.js"></script>
<script src="/packages/babylon/assets/babylonjs.loaders.min.js"></script>
<script src="/packages/babylon/assets/cannon.js"></script>
```

Here is a little example rendering 2 meshes with a little physics in it:

```dart
import 'dart:html';

import 'package:babylon_dart/babylon_dart.dart';
import 'package:js/js.dart';

void main() {
  final canvas = querySelector('#render-canvas') as CanvasElement;
  final engine = Engine(canvas, true);

  final scene = Scene(engine);
  scene.clearColor = Color4(0, 0.05, 0.1, 1);
  scene.fogMode = Scene.FOGMODE_LINEAR;
  scene.fogStart = 40.0;
  scene.fogEnd = 60.0;
  scene.fogColor = Color3(0, 0.05, 0.1);
  scene.enablePhysics(Vector3(0, -9.81, 0), CannonJSPlugin());

  final hemiLight = HemisphericLight("hemiLight", Vector3(0, 1, 0), scene);
  hemiLight.diffuse = Color3(0.5, 0.5, 0.5);

  final pointLight = PointLight("dirL", Vector3(0, 10, 0), scene);
  pointLight.diffuse = Color3(0.5, 0.5, 0.5);

  final sphereMaterial = StandardMaterial("sphereMat", scene);
  sphereMaterial.diffuseColor = Color3.Blue();

  final sphere = MeshBuilder.CreateSphere('sphere', MeshBuilderCreateSphereOptions(segments: 16), scene);
  sphere.material = sphereMaterial;
  sphere.position = Vector3(0, 5, 0);
  sphere.physicsImpostor = PhysicsImpostor(
    sphere as IPhysicsEnabledObject,
    PhysicsImpostor.SphereImpostor,
    PhysicsImpostorParameters(mass: 1),
    scene,
  );

  final groundMaterial = StandardMaterial("groundMat", scene);
  groundMaterial.diffuseColor = Color3.Red();

  final ground = MeshBuilder.CreateGround('ground', MeshBuilderCreateGroundOptions(height: 10, width: 10), scene);
  ground.material = groundMaterial;
  ground.receiveShadows = true;
  ground.physicsImpostor = PhysicsImpostor(
    ground as IPhysicsEnabledObject,
    PhysicsImpostor.HeightmapImpostor,
    PhysicsImpostorParameters(restitution: 4),
    scene,
  );

  final shadowGenerator = ShadowGenerator(512, pointLight);
  shadowGenerator.getShadowMap().renderList.add(sphere);

  final camera = ArcRotateCamera('camera', 1, 1, 20, Vector3(0, 0, 0), scene);
  camera.attachControl(canvas);

  canvas.focus();

  engine.runRenderLoop(allowInterop(() {
    scene.render();
  }));

  window.onResize.listen((event) {
    engine.resize();
  });
}
```
