part of babylon;

/// class LensFlareSystem
@JS()
class LensFlareSystem {
  external LensFlareSystem(String name, dynamic emitter, Scene scene);
  external bool get isEnabled;
  external String get name;
  external List<LensFlare> get lensFlares;
  external num get borderLimit;
  external num get viewportBorder;
  external bool Function(AbstractMesh mesh) get meshesSelectionPredicate;
  external num get layerMask;
  external String get id;
  external set isEnabled(bool value);
  external set name(String name);
  external set lensFlares(List<LensFlare> lensFlares);
  external set borderLimit(num borderLimit);
  external set viewportBorder(num viewportBorder);
  external set meshesSelectionPredicate(bool Function(AbstractMesh mesh) meshesSelectionPredicate);
  external set layerMask(num layerMask);
  external set id(String id);
  external Scene getScene();
  external dynamic getEmitter();
  external void setEmitter(dynamic newEmitter);
  external Vector3 getEmitterPosition();
  external bool computeEffectivePosition(Viewport globalViewport);
  external bool render();
  external void dispose();
  external static LensFlareSystem Parse(dynamic parsedLensFlareSystem, Scene scene, String rootUrl);
  external dynamic serialize();
}
