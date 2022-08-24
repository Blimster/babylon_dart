part of babylon_dart;

/// interface IParticleEmitterType
@JS()
abstract class IParticleEmitterType {
  // methods
  void startDirectionFunction(Matrix worldMatrix, Vector3 directionToUpdate, Particle particle, bool isLocal, Matrix inverseWorldMatrix);
  void startPositionFunction(Matrix worldMatrix, Vector3 positionToUpdate, Particle particle, bool isLocal);
  IParticleEmitterType clone();
  void applyToShader(UniformBufferEffectCommonAccessor uboOrEffect);
  void buildUniformLayout(UniformBuffer ubo);
  String getEffectDefines();
  String getClassName();
  Object serialize();
  void parse(Object serializationObject, Scene? scene);
}
