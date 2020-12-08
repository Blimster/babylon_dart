part of babylon;

/// class SolidParticle
@JS()
class SolidParticle {
  external SolidParticle(num particleIndex, num particleId, num positionIndex, num indiceIndex, ModelShape model, num shapeId, num idxInShape, SolidParticleSystem sps, [BoundingInfo modelBoundingInfo, num materialIndex]);
  external Vector3 get scale;
  external Quaternion get quaternion;
  external num get idx;
  external num get id;
  external Color4 get color;
  external Vector3 get position;
  external Vector3 get rotation;
  external Quaternion get rotationQuaternion;
  external Vector3 get scaling;
  external Vector4 get uvs;
  external Vector3 get velocity;
  external Vector3 get pivot;
  external bool get translateFromPivot;
  external bool get alive;
  external bool get isVisible;
  external num get shapeId;
  external num get idxInShape;
  external num get parentId;
  external num get materialIndex;
  external dynamic get props;
  external num get cullingStrategy;
  external set scale(Vector3 scale);
  external set quaternion(Quaternion q);
  external set idx(num idx);
  external set id(num id);
  external set color(Color4 color);
  external set position(Vector3 position);
  external set rotation(Vector3 rotation);
  external set rotationQuaternion(Quaternion rotationQuaternion);
  external set scaling(Vector3 scaling);
  external set uvs(Vector4 uvs);
  external set velocity(Vector3 velocity);
  external set pivot(Vector3 pivot);
  external set translateFromPivot(bool translateFromPivot);
  external set alive(bool alive);
  external set isVisible(bool isVisible);
  external set shapeId(num shapeId);
  external set idxInShape(num idxInShape);
  external set parentId(num parentId);
  external set materialIndex(num materialIndex);
  external set props(dynamic props);
  external set cullingStrategy(num cullingStrategy);
  external SolidParticle copyToRef(SolidParticle target);
  external bool intersectsMesh(dynamic target);
  external bool isInFrustum(List<Plane> frustumPlanes);
  external void getRotationMatrix(Matrix m);
}
