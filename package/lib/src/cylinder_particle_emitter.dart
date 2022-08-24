part of babylon_dart;

/// class CylinderParticleEmitter
@JS()
class CylinderParticleEmitter implements IParticleEmitterType {
  // properties
  external num radius;
  external num height;
  external num radiusRange;
  external num directionRandomizer;
  // methods
  external void startDirectionFunction(Matrix worldMatrix, Vector3 directionToUpdate, Particle particle, bool isLocal, Matrix inverseWorldMatrix);
  external void startPositionFunction(Matrix worldMatrix, Vector3 positionToUpdate, Particle particle, bool isLocal);
  external CylinderParticleEmitter clone();
  external void applyToShader(UniformBufferEffectCommonAccessor uboOrEffect);
  external void buildUniformLayout(UniformBuffer ubo);
  external String getEffectDefines();
  external String getClassName();
  external Object serialize();
  external void parse(Object serializationObject, Scene? scene);
}
