part of babylon_dart;

/// class Particle
@JS()
class Particle {
  // properties
  external ParticleSystem particleSystem;
  external num id;
  external Vector3 position;
  external Vector3 direction;
  external Color4 color;
  external Color4 colorStep;
  external num lifeTime;
  external num age;
  external num size;
  external Vector2 scale;
  external num angle;
  external num angularSpeed;
  external num cellIndex;
  external Vector4 remapData;
  // methods
  external void updateCellIndex();
  external void copyTo(Particle other);
}
