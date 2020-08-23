part of babylon;

@JS()
class Node {
  external String get name;
  external set name(String v);
  external bool isReady([bool completeCheck]);
  external set onReady(void Function(Node) v);
}

@JS()
class TransformNode extends Node {
  external static int get BILLBOARDMODE_ALL;
  external static int get BILLBOARDMODE_NONE;
  external static int get BILLBOARDMODE_USE_POSITION;
  external static int get BILLBOARDMODE_X;
  external static int get BILLBOARDMODE_Y;
  external static int get BILLBOARDMODE_Z;
  external set position(Vector3 v);
  external Vector3 get position;
  external set scaling(Vector3 v);
  external Vector3 get scaling;
  external set rotation(Vector3 v);
  external Vector3 get rotation;
  external set rotationQuaternion(Quaternion v);
  external set billboardMode(int v);
  external int get billboardMode;
  external Quaternion get rotationQuaternion;
  external TransformNode setDirection(Vector3 localAxis, [num yawCor, num pitchCor, num rollCor]);
}
