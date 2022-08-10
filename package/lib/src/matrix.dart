part of babylon_dart;

/// class Matrix
@JS()
class Matrix {
  // properties
  external num updateFlag;
  // methods
  external void markAsUpdated();
  external bool isIdentity();
  external bool isIdentityAs3x2();
  external num determinant();
  external Object toArray();
  external Object asArray();
  external Matrix invert();
  external Matrix reset();
  external Matrix add(Matrix other);
  external Matrix addToRef(Matrix other, Matrix result);
  external Matrix addToSelf(Matrix other);
  external Matrix invertToRef(Matrix other);
  external Matrix addAtIndex(num index, num value);
  external Matrix multiplyAtIndex(num index, num value);
  external Matrix setTranslationFromFloats(num x, num y, num z);
  external Matrix addTranslationFromFloats(num x, num y, num z);
  external Matrix setTranslation(Vector3 vector3);
  external Vector3 getTranslation();
  external Matrix getTranslationToRef(Vector3 result);
  external Matrix removeRotationAndScaling();
  external Matrix multiply(Matrix other);
  external Matrix copyFrom(Matrix other);
  external Matrix copyToArray(Object array, [num offset]);
  external Matrix multiplyToRef(Matrix other, Matrix result);
  external Matrix multiplyToArray(Matrix other, Object result, num offset);
  external bool equals(Matrix value);
  external Matrix clone();
  external String getClassName();
  external num getHashCode();
  external bool decomposeToTransformNode(TransformNode node);
  external bool decompose([Vector3 scale, Quaternion rotation, Vector3 translation, TransformNode preserveScalingNode]);
  external Vector4? getRow(num index);
  external Matrix setRow(num index, Vector4 row);
  external Matrix transpose();
  external Matrix transposeToRef(Matrix result);
  external Matrix setRowFromFloats(num index, num x, num y, num z, num w);
  external Matrix scale(num scale);
  external Matrix scaleToRef(num scale, Matrix result);
  external Matrix scaleAndAddToRef(num scale, Matrix result);
  external void toNormalMatrix(Matrix ref);
  external Matrix getRotationMatrix();
  external Matrix getRotationMatrixToRef(Matrix result);
  external void toggleModelMatrixHandInPlace();
  external void toggleProjectionMatrixHandInPlace();
  external static Matrix FromArray(ArrayLike<num> array, [num offset]);
  external static void FromArrayToRef(ArrayLike<num> array, num offset, Matrix result);
  external static void FromFloat32ArrayToRefScaled(Object array, num offset, num scale, Matrix result);
  external static void FromValuesToRef(num initialM11, num initialM12, num initialM13, num initialM14, num initialM21, num initialM22, num initialM23, num initialM24, num initialM31, num initialM32, num initialM33, num initialM34, num initialM41, num initialM42, num initialM43, num initialM44, Matrix result);
  external static Matrix FromValues(num initialM11, num initialM12, num initialM13, num initialM14, num initialM21, num initialM22, num initialM23, num initialM24, num initialM31, num initialM32, num initialM33, num initialM34, num initialM41, num initialM42, num initialM43, num initialM44);
  external static Matrix Compose(Vector3 scale, Quaternion rotation, Vector3 translation);
  external static void ComposeToRef(Vector3 scale, Quaternion rotation, Vector3 translation, Matrix result);
  external static Matrix Identity();
  external static void IdentityToRef(Matrix result);
  external static Matrix Zero();
  external static Matrix RotationX(num angle);
  external static Matrix Invert(Matrix source);
  external static void RotationXToRef(num angle, Matrix result);
  external static Matrix RotationY(num angle);
  external static void RotationYToRef(num angle, Matrix result);
  external static Matrix RotationZ(num angle);
  external static void RotationZToRef(num angle, Matrix result);
  external static Matrix RotationAxis(Vector3 axis, num angle);
  external static void RotationAxisToRef(Vector3 axis, num angle, Matrix result);
  external static void RotationAlignToRef(Vector3 from, Vector3 to, Matrix result);
  external static Matrix RotationYawPitchRoll(num yaw, num pitch, num roll);
  external static void RotationYawPitchRollToRef(num yaw, num pitch, num roll, Matrix result);
  external static Matrix Scaling(num x, num y, num z);
  external static void ScalingToRef(num x, num y, num z, Matrix result);
  external static Matrix Translation(num x, num y, num z);
  external static void TranslationToRef(num x, num y, num z, Matrix result);
  external static Matrix Lerp(Matrix startValue, Matrix endValue, num gradient);
  external static void LerpToRef(Matrix startValue, Matrix endValue, num gradient, Matrix result);
  external static Matrix DecomposeLerp(Matrix startValue, Matrix endValue, num gradient);
  external static void DecomposeLerpToRef(Matrix startValue, Matrix endValue, num gradient, Matrix result);
  external static Matrix LookAtLH(Vector3 eye, Vector3 target, Vector3 up);
  external static void LookAtLHToRef(Vector3 eye, Vector3 target, Vector3 up, Matrix result);
  external static Matrix LookAtRH(Vector3 eye, Vector3 target, Vector3 up);
  external static void LookAtRHToRef(Vector3 eye, Vector3 target, Vector3 up, Matrix result);
  external static Matrix LookDirectionLH(Vector3 forward, Vector3 up);
  external static void LookDirectionLHToRef(Vector3 forward, Vector3 up, Matrix result);
  external static Matrix LookDirectionRH(Vector3 forward, Vector3 up);
  external static void LookDirectionRHToRef(Vector3 forward, Vector3 up, Matrix result);
  external static Matrix OrthoLH(num width, num height, num znear, num zfar, [bool halfZRange]);
  external static void OrthoLHToRef(num width, num height, num znear, num zfar, Matrix result, [bool halfZRange]);
  external static Matrix OrthoOffCenterLH(num left, num right, num bottom, num top, num znear, num zfar, [bool halfZRange]);
  external static void OrthoOffCenterLHToRef(num left, num right, num bottom, num top, num znear, num zfar, Matrix result, [bool halfZRange]);
  external static Matrix OrthoOffCenterRH(num left, num right, num bottom, num top, num znear, num zfar, [bool halfZRange]);
  external static void OrthoOffCenterRHToRef(num left, num right, num bottom, num top, num znear, num zfar, Matrix result, [bool halfZRange]);
  external static Matrix PerspectiveLH(num width, num height, num znear, num zfar, [bool halfZRange, num projectionPlaneTilt]);
  external static Matrix PerspectiveFovLH(num fov, num aspect, num znear, num zfar, [bool halfZRange, num projectionPlaneTilt, bool reverseDepthBufferMode]);
  external static void PerspectiveFovLHToRef(num fov, num aspect, num znear, num zfar, Matrix result, [bool isVerticalFovFixed, bool halfZRange, num projectionPlaneTilt, bool reverseDepthBufferMode]);
  external static void PerspectiveFovReverseLHToRef(num fov, num aspect, num znear, num zfar, Matrix result, [bool isVerticalFovFixed, bool halfZRange, num projectionPlaneTilt]);
  external static Matrix PerspectiveFovRH(num fov, num aspect, num znear, num zfar, [bool halfZRange, num projectionPlaneTilt, bool reverseDepthBufferMode]);
  external static void PerspectiveFovRHToRef(num fov, num aspect, num znear, num zfar, Matrix result, [bool isVerticalFovFixed, bool halfZRange, num projectionPlaneTilt, bool reverseDepthBufferMode]);
  external static void PerspectiveFovReverseRHToRef(num fov, num aspect, num znear, num zfar, Matrix result, [bool isVerticalFovFixed, bool halfZRange, num projectionPlaneTilt]);
  external static void PerspectiveFovWebVRToRef(MatrixPerspectiveFovWebVRToRefFov fov, num znear, num zfar, Matrix result, [bool rightHanded, bool halfZRange, num projectionPlaneTilt]);
  external static Matrix GetFinalMatrix(Viewport viewport, Matrix world, Matrix view, Matrix projection, num zmin, num zmax);
  external static Object GetAsMatrix2x2(Matrix matrix);
  external static Object GetAsMatrix3x3(Matrix matrix);
  external static Matrix Transpose(Matrix matrix);
  external static void TransposeToRef(Matrix matrix, Matrix result);
  external static Matrix Reflection(IPlaneLike plane);
  external static void ReflectionToRef(IPlaneLike plane, Matrix result);
  external static void FromXYZAxesToRef(Vector3 xaxis, Vector3 yaxis, Vector3 zaxis, Matrix result);
  external static void FromQuaternionToRef(Quaternion quat, Matrix result);
}

@JS()
@anonymous
class MatrixPerspectiveFovWebVRToRefFov {
}
