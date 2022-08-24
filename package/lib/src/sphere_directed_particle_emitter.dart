part of babylon_dart;

/// class SphereDirectedParticleEmitter
@JS()
class SphereDirectedParticleEmitter extends SphereParticleEmitter {
  // properties
  external Vector3 direction1;
  external Vector3 direction2;
  // methods
  external void startDirectionFunction(Matrix worldMatrix, Vector3 directionToUpdate, Particle particle, bool isLocal, Matrix inverseWorldMatrix);
  external SphereDirectedParticleEmitter clone();
  external void applyToShader(UniformBufferEffectCommonAccessor uboOrEffect);
  external void buildUniformLayout(UniformBuffer ubo);
  external String getEffectDefines();
  external String getClassName();
  external Object serialize();
  external void parse(Object serializationObject, Scene? scene);
}
