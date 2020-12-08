import 'dart:html';
import 'dart:js';
import 'dart:math';

import 'package:babylon_dart/babylon_dart.dart';

void main() {
  // query the canvas element
  final canvas = querySelector('#render-canvas') as CanvasElement;

  // create the engine
  final engine = Engine(canvas, true);

  // create the scene andd configure it
  final scene = Scene(engine);

  final camera = ArcRotateCamera("ArcRotateCamera", -pi / 2, pi / 2.2, 50, Vector3(0, 0, 0), scene);
  camera.attachControl(true);
  HemisphericLight("light", Vector3(0, 1, 0), scene);

  final sps = SolidParticleSystem("SPS", scene);
  final sphere = MeshBuilder.CreateSphere("s", MeshBuilderCreateSphereOptions());
  final poly = MeshBuilder.CreatePolyhedron("p", MeshBuilderCreatePolyhedronOptions(type: 2));
  sps.addShape(sphere, 20); // 20 spheres
  sps.addShape(poly, 120); // 120 polyhedrons
  sps.addShape(sphere, 80); // 80 other spheres
  sphere.dispose(); //dispose of original model sphere
  poly.dispose(); //dispose of original model poly

  sps.buildMesh(); // finally builds and displays the SPS mesh

  //Set variables
  final speed = 1.5;
  final gravity = -0.01;

  // recycle particles function
  //sets particles to an intial state
  final rand = Random(0);
  recycleParticle(SolidParticle particle) {
    particle.position.x = 0;
    particle.position.y = 0;
    particle.position.z = 0;
    particle.rotation.x = Scalar.RandomRange(-pi, pi);
    particle.rotation.y = Scalar.RandomRange(-pi, pi);
    particle.rotation.z = Scalar.RandomRange(-pi, pi);
    particle.color = Color4(rand.nextDouble(), rand.nextDouble(), rand.nextDouble(), 1);
    particle.velocity.x = Scalar.RandomRange(-0.5 * speed, 0.5 * speed);
    particle.velocity.y = Scalar.RandomRange(0.25 * speed, speed);
    particle.velocity.z = Scalar.RandomRange(-0.5 * speed, 0.5 * speed);
  }

  for (var p = 0; p < sps.nbParticles; p++) {
    recycleParticle(sps.particles[p]);
  }

  //Update SPS mesh
  sps.setParticles();

  scene.onAfterRenderObservable.add(allowInterop((scene, eventState) {
    for (var p = 0; p < sps.nbParticles; p++) {
      final particle = sps.particles[p];
      if (particle.position.y < 0) {
        recycleParticle(particle);
      }
      particle.velocity.y += gravity; // apply gravity to y
      particle.position.addInPlace(particle.velocity); // update particle new position

      final direction = (particle.idx % 2 - 0.5)
          .sign; //rotation direction +/- 1 depends on particle index in particles array           // rotation sign and new value
      particle.rotation.z += 0.1 * direction;
      particle.rotation.x += 0.05 * direction;
      particle.rotation.y += 0.008 * direction;
    }
    sps.setParticles();
    sps.mesh.rotation.y += 0.01;
  }));

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
