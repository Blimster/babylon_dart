part of babylon_dart;

/// class BoxParticleEmitter
@JS()
class BoxParticleEmitter implements IParticleEmitterType {
  // properties
  external Vector3 direction1;
  external Vector3 direction2;
  external Vector3 minEmitBox;
  external Vector3 maxEmitBox;
  // methods
  external void startDirectionFunction(Matrix worldMatrix, Vector3 directionToUpdate, Particle particle, bool isLocal, Matrix inverseWorldMatrix);
  external void startPositionFunction(Matrix worldMatrix, Vector3 positionToUpdate, Particle particle, bool isLocal);
  external BoxParticleEmitter clone();
  external void applyToShader(UniformBufferEffectCommonAccessor uboOrEffect);
  external void buildUniformLayout(UniformBuffer ubo);
  external String getEffectDefines();
  external String getClassName();
  external Object serialize();
  external void parse(Object serializationObject, Scene? scene);
}
