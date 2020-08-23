part of babylon;

@JS()
class BaseTexture {}

@JS()
class Texture extends BaseTexture {
  external Texture();
  @JS('Texture')
  external Texture.fromUrl(String url, Scene scene, bool noMipmap, bool invertY, int samplingMode);
  external set uScale(num v);
  external set vScale(num v);
}

@JS()
class RenderTargetTexture extends Texture {
  external set renderList(List<Mesh> v);
  external List<Mesh> get renderList;
}
