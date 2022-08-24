part of babylon_dart;

/// interface ICanvasRenderingContext
@JS()
abstract class ICanvasRenderingContext {
  // properties
  external String lineJoin;
  external num miterLimit;
  external String font;
  external String strokeStyle;
  external Object fillStyle;
  external num globalAlpha;
  external String shadowColor;
  external num shadowBlur;
  external num shadowOffsetX;
  external num shadowOffsetY;
  external num lineWidth;
  external static final ICanvas canvas;
  // methods
  void clearRect(num x, num y, num width, num height);
  void save();
  void restore();
  void fillRect(num x, num y, num width, num height);
  void scale(num x, num y);
  void rotate(num angle);
  void translate(num x, num y);
  void strokeRect(num x, num y, num width, num height);
  void rect(num x, num y, num width, num height);
  void clip();
  void putImageData(ImageData imageData, num dx, num dy);
  void arc(num x, num y, num radius, num startAngle, num endAngle, [bool anticlockwise]);
  void beginPath();
  void closePath();
  void moveTo(num x, num y);
  void lineTo(num x, num y);
  void quadraticCurveTo(num cpx, num cpy, num x, num y);
  ITextMetrics measureText(String text);
  void stroke();
  void fill();
  void drawImage(Object image, num sx, num sy, num sWidth, num sHeight, num dx, num dy, num dWidth, num dHeight);
  void drawImage(Object image, num dx, num dy, num dWidth, num dHeight);
  void drawImage(Object image, num dx, num dy);
  ImageData getImageData(num sx, num sy, num sw, num sh);
  void setLineDash(List<num> segments);
  void fillText(String text, num x, num y, [num maxWidth]);
  void strokeText(String text, num x, num y, [num maxWidth]);
  ICanvasGradient createLinearGradient(num x0, num y0, num x1, num y1);
  void setTransform(num a, num b, num c, num d, num e, num f);
}
