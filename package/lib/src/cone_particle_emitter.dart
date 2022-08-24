part of babylon_dart;

/// class ConeParticleEmitter
@JS()
class ConeParticleEmitter implements IParticleEmitterType {
  // properties
  external num directionRandomizer;
  external num radiusRange;
  external num heightRange;
  external bool emitFromSpawnPointOnly;
  // methods
  external void startDirectionFunction(Matrix worldMatrix, Vector3 directionToUpdate, Particle particle, bool isLocal, Matrix inverseWorldMatrix);
  external void startPositionFunction(Matrix worldMatrix, Vector3 positionToUpdate, Particle particle, bool isLocal);
  external ConeParticleEmitter clone();
  external void applyToShader(UniformBufferEffectCommonAccessor uboOrEffect);
  external void buildUniformLayout(UniformBuffer ubo);
  external String getEffectDefines();
  external String getClassName();
  external Object serialize();
  external void parse(Object serializationObject, Scene? scene);
}
