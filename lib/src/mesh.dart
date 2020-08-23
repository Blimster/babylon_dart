part of babylon;

@JS()
class AbstractMesh extends TransformNode {
  external set material(Material v);
  external Material get material;
  external set physicsImpostor(PhysicsImpostor v);
  external PhysicsImpostor get physicsImpostor;
}

@JS()
class Mesh extends AbstractMesh {
  external set receiveShadows(bool v);
  external bool get receiveShadows;
}

@JS()
class GroundMesh extends Mesh {
  external num getHeightAtCoordinates(num x, num z);
  external Vector3 getNormalAtCoordinates(num x, num z);
}

@JS()
@anonymous
class SphereOptions {
  external num get segments;
  external num get diameter;
  external factory SphereOptions({num segments, num diameter});
}

@JS()
@anonymous
class BoxOptions {
  external num get size;
  external num get width;
  external num get height;
  external num get depth;
  external factory BoxOptions({num size, num width, num height, depth});
}

@JS()
@anonymous
class GroundOptions {
  external num get width;
  external num get height;
  external num get subdivisions;
  external factory GroundOptions({num width, num height, num subdivisions});
}

@JS()
@anonymous
class GroundFromHeightMapOptions {
  external num get width;
  external num get height;
  external num get subdivisions;
  external num get minHeight;
  external num get maxHeight;
  external factory GroundFromHeightMapOptions({num width, num height, num subdivisions, num minHeight, num maxHeight});
}

@JS()
class MeshBuilder {
  external static Mesh CreateSphere(String name, SphereOptions options, Scene scene);
  external static Mesh CreateBox(String name, BoxOptions options, Scene scene);
  external static GroundMesh CreateGround(String name, GroundOptions options, Scene scene);
  external static GroundMesh CreateGroundFromHeightMap(
      String name, String url, GroundFromHeightMapOptions options, Scene scene);
}
