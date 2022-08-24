part of babylon_dart;

/// class HemisphericParticleEmitter
@JS()
class HemisphericParticleEmitter implements IParticleEmitterType {
  // properties
  external num radius;
  external num radiusRange;
  external num directionRandomizer;
  // methods
  external void startDirectionFunction(Matrix worldMatrix, Vector3 directionToUpdate, Particle particle, bool isLocal, Matrix inverseWorldMatrix);
  external void startPositionFunction(Matrix worldMatrix, Vector3 positionToUpdate, Particle particle, bool isLocal);
  external HemisphericParticleEmitter clone();
  external void applyToShader(UniformBufferEffectCommonAccessor uboOrEffect);
  external void buildUniformLayout(UniformBuffer ubo);
  external String getEffectDefines();
  external String getClassName();
  external Object serialize();
  external void parse(Object serializationObject, Scene? scene);
}
