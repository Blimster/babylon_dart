part of babylon;

@JS()
abstract class IPhysicsEnginePlugin {}

@JS()
class CannonJSPlugin implements IPhysicsEnginePlugin {
  external CannonJSPlugin();
}

@JS()
@anonymous
abstract class PhysicsImpostorOptions {
  external num get mass;
  external num get friction;
  external num get restitution;
  external factory PhysicsImpostorOptions({num mass, num friction, num restitution});
}

@JS()
class PhysicsImpostor {
  external static int get SphereImpostor;
  external static int get BoxImpostor;
  external static int get HeightmapImpostor;
  external static int get PlaneImpostor;
  external PhysicsImpostor(Mesh mesh, int type, PhysicsImpostorOptions options, Scene scene);
  external void setLinearVelocity(Vector3 direction);
}
