part of babylon;

@JS()
@anonymous
class MeshBuilderCreateBoxOptions {
  external factory MeshBuilderCreateBoxOptions({num size, num width, num height, num depth, List<Vector4> faceUV, List<Color4> faceColors, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, bool wrap, num topBaseAt, num bottomBaseAt, bool updatable});
  external num get size;
  external num get width;
  external num get height;
  external num get depth;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external bool get wrap;
  external num get topBaseAt;
  external num get bottomBaseAt;
  external bool get updatable;
}

@JS()
@anonymous
class MeshBuilderCreateTiledBoxOptions {
  external factory MeshBuilderCreateTiledBoxOptions({num pattern, num size, num width, num height, num depth, num tileSize, num tileWidth, num tileHeight, List<Vector4> faceUV, List<Color4> faceColors, num alignHorizontal, num alignVertical, num sideOrientation, bool updatable});
  external num get pattern;
  external num get size;
  external num get width;
  external num get height;
  external num get depth;
  external num get tileSize;
  external num get tileWidth;
  external num get tileHeight;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external num get alignHorizontal;
  external num get alignVertical;
  external num get sideOrientation;
  external bool get updatable;
}

@JS()
@anonymous
class MeshBuilderCreateSphereOptions {
  external factory MeshBuilderCreateSphereOptions({num segments, num diameter, num diameterX, num diameterY, num diameterZ, num arc, num slice, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, bool updatable});
  external num get segments;
  external num get diameter;
  external num get diameterX;
  external num get diameterY;
  external num get diameterZ;
  external num get arc;
  external num get slice;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external bool get updatable;
}

@JS()
@anonymous
class MeshBuilderCreateDiscOptions {
  external factory MeshBuilderCreateDiscOptions({num radius, num tessellation, num arc, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get radius;
  external num get tessellation;
  external num get arc;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class MeshBuilderCreateIcoSphereOptions {
  external factory MeshBuilderCreateIcoSphereOptions({num radius, num radiusX, num radiusY, num radiusZ, bool flat, num subdivisions, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, bool updatable});
  external num get radius;
  external num get radiusX;
  external num get radiusY;
  external num get radiusZ;
  external bool get flat;
  external num get subdivisions;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external bool get updatable;
}

@JS()
@anonymous
class MeshBuilderCreateRibbonOptions {
  external factory MeshBuilderCreateRibbonOptions({List<Vector3> pathArray, bool closeArray, bool closePath, num offset, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, Mesh instance, bool invertUV, List<Vector2> uvs, List<Color4> colors});
  external List<Vector3> get pathArray;
  external bool get closeArray;
  external bool get closePath;
  external num get offset;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external Mesh get instance;
  external bool get invertUV;
  external List<Vector2> get uvs;
  external List<Color4> get colors;
}

@JS()
@anonymous
class MeshBuilderCreateCylinderOptions {
  external factory MeshBuilderCreateCylinderOptions({num height, num diameterTop, num diameterBottom, num diameter, num tessellation, num subdivisions, num arc, List<Color4> faceColors, List<Vector4> faceUV, bool updatable, bool hasRings, bool enclose, num cap, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get height;
  external num get diameterTop;
  external num get diameterBottom;
  external num get diameter;
  external num get tessellation;
  external num get subdivisions;
  external num get arc;
  external List<Color4> get faceColors;
  external List<Vector4> get faceUV;
  external bool get updatable;
  external bool get hasRings;
  external bool get enclose;
  external num get cap;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class MeshBuilderCreateTorusOptions {
  external factory MeshBuilderCreateTorusOptions({num diameter, num thickness, num tessellation, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get diameter;
  external num get thickness;
  external num get tessellation;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class MeshBuilderCreateTorusKnotOptions {
  external factory MeshBuilderCreateTorusKnotOptions({num radius, num tube, num radialSegments, num tubularSegments, num p, num q, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get radius;
  external num get tube;
  external num get radialSegments;
  external num get tubularSegments;
  external num get p;
  external num get q;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class MeshBuilderCreateLineSystemOptions {
  external factory MeshBuilderCreateLineSystemOptions({List<Vector3> lines, bool updatable, LinesMesh instance, List<Color4> colors, bool useVertexAlpha});
  external List<Vector3> get lines;
  external bool get updatable;
  external LinesMesh get instance;
  external List<Color4> get colors;
  external bool get useVertexAlpha;
}

@JS()
@anonymous
class MeshBuilderCreateLinesOptions {
  external factory MeshBuilderCreateLinesOptions({List<Vector3> points, bool updatable, LinesMesh instance, List<Color4> colors, bool useVertexAlpha});
  external List<Vector3> get points;
  external bool get updatable;
  external LinesMesh get instance;
  external List<Color4> get colors;
  external bool get useVertexAlpha;
}

@JS()
@anonymous
class MeshBuilderCreateDashedLinesOptions {
  external factory MeshBuilderCreateDashedLinesOptions({List<Vector3> points, num dashSize, num gapSize, num dashNb, bool updatable, LinesMesh instance});
  external List<Vector3> get points;
  external num get dashSize;
  external num get gapSize;
  external num get dashNb;
  external bool get updatable;
  external LinesMesh get instance;
}

@JS()
@anonymous
class MeshBuilderExtrudeShapeOptions {
  external factory MeshBuilderExtrudeShapeOptions({List<Vector3> shape, List<Vector3> path, num scale, num rotation, num cap, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, Mesh instance, bool invertUV});
  external List<Vector3> get shape;
  external List<Vector3> get path;
  external num get scale;
  external num get rotation;
  external num get cap;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external Mesh get instance;
  external bool get invertUV;
}

@JS()
@anonymous
class MeshBuilderExtrudeShapeCustomOptions {
  external factory MeshBuilderExtrudeShapeCustomOptions({List<Vector3> shape, List<Vector3> path, dynamic scaleFunction, dynamic rotationFunction, bool ribbonCloseArray, bool ribbonClosePath, num cap, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, Mesh instance, bool invertUV});
  external List<Vector3> get shape;
  external List<Vector3> get path;
  external dynamic get scaleFunction;
  external dynamic get rotationFunction;
  external bool get ribbonCloseArray;
  external bool get ribbonClosePath;
  external num get cap;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external Mesh get instance;
  external bool get invertUV;
}

@JS()
@anonymous
class MeshBuilderCreateLatheOptions {
  external factory MeshBuilderCreateLatheOptions({List<Vector3> shape, num radius, num tessellation, num clip, num arc, bool closed, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, num cap, bool invertUV});
  external List<Vector3> get shape;
  external num get radius;
  external num get tessellation;
  external num get clip;
  external num get arc;
  external bool get closed;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external num get cap;
  external bool get invertUV;
}

@JS()
@anonymous
class MeshBuilderCreateTiledPlaneOptions {
  external factory MeshBuilderCreateTiledPlaneOptions({num pattern, num tileSize, num tileWidth, num tileHeight, num size, num width, num height, num alignHorizontal, num alignVertical, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, bool updatable});
  external num get pattern;
  external num get tileSize;
  external num get tileWidth;
  external num get tileHeight;
  external num get size;
  external num get width;
  external num get height;
  external num get alignHorizontal;
  external num get alignVertical;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external bool get updatable;
}

@JS()
@anonymous
class MeshBuilderCreatePlaneOptions {
  external factory MeshBuilderCreatePlaneOptions({num size, num width, num height, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, bool updatable, Plane sourcePlane});
  external num get size;
  external num get width;
  external num get height;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external bool get updatable;
  external Plane get sourcePlane;
}

@JS()
@anonymous
class MeshBuilderCreateGroundOptions {
  external factory MeshBuilderCreateGroundOptions({num width, num height, num subdivisions, num subdivisionsX, num subdivisionsY, bool updatable});
  external num get width;
  external num get height;
  external num get subdivisions;
  external num get subdivisionsX;
  external num get subdivisionsY;
  external bool get updatable;
}

@JS()
@anonymous
class MeshBuilderCreateTiledGroundOptions {
  external factory MeshBuilderCreateTiledGroundOptions({num xmin, num zmin, num xmax, num zmax, MeshBuilderCreateTiledGroundOptions subdivisions, MeshBuilderCreateTiledGroundOptions precision, bool updatable});
  external num get xmin;
  external num get zmin;
  external num get xmax;
  external num get zmax;
  external MeshBuilderCreateTiledGroundOptionsSubdivisions get subdivisions;
  external MeshBuilderCreateTiledGroundOptionsPrecision get precision;
  external bool get updatable;
}

@JS()
@anonymous
class MeshBuilderCreateTiledGroundOptionsSubdivisions {
  external factory MeshBuilderCreateTiledGroundOptionsSubdivisions({num w, num h});
  external num get w;
  external num get h;
}

@JS()
@anonymous
class MeshBuilderCreateTiledGroundOptionsPrecision {
  external factory MeshBuilderCreateTiledGroundOptionsPrecision({num w, num h});
  external num get w;
  external num get h;
}

@JS()
@anonymous
class MeshBuilderCreateGroundFromHeightMapOptions {
  external factory MeshBuilderCreateGroundFromHeightMapOptions({num width, num height, num subdivisions, num minHeight, num maxHeight, Color3 colorFilter, num alphaFilter, bool updatable, void Function(GroundMesh mesh) onReady});
  external num get width;
  external num get height;
  external num get subdivisions;
  external num get minHeight;
  external num get maxHeight;
  external Color3 get colorFilter;
  external num get alphaFilter;
  external bool get updatable;
  external void Function(GroundMesh mesh) get onReady;
}

@JS()
@anonymous
class MeshBuilderCreatePolygonOptions {
  external factory MeshBuilderCreatePolygonOptions({List<Vector3> shape, List<Vector3> holes, num depth, List<Vector4> faceUV, List<Color4> faceColors, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external List<Vector3> get shape;
  external List<Vector3> get holes;
  external num get depth;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class MeshBuilderExtrudePolygonOptions {
  external factory MeshBuilderExtrudePolygonOptions({List<Vector3> shape, List<Vector3> holes, num depth, List<Vector4> faceUV, List<Color4> faceColors, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, bool wrap});
  external List<Vector3> get shape;
  external List<Vector3> get holes;
  external num get depth;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external bool get wrap;
}

@JS()
@anonymous
class MeshBuilderCreateTubeOptions {
  external factory MeshBuilderCreateTubeOptions({List<Vector3> path, num radius, num tessellation, num Function(num i, num distance) radiusFunction, num cap, num arc, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, Mesh instance, bool invertUV});
  external List<Vector3> get path;
  external num get radius;
  external num get tessellation;
  external num Function(num i, num distance) get radiusFunction;
  external num get cap;
  external num get arc;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external Mesh get instance;
  external bool get invertUV;
}

@JS()
@anonymous
class MeshBuilderCreatePolyhedronOptions {
  external factory MeshBuilderCreatePolyhedronOptions({num type, num size, num sizeX, num sizeY, num sizeZ, dynamic custom, List<Vector4> faceUV, List<Color4> faceColors, bool flat, bool updatable, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get type;
  external num get size;
  external num get sizeX;
  external num get sizeY;
  external num get sizeZ;
  external dynamic get custom;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external bool get flat;
  external bool get updatable;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class MeshBuilderCreateDecalOptions {
  external factory MeshBuilderCreateDecalOptions({Vector3 position, Vector3 normal, Vector3 size, num angle});
  external Vector3 get position;
  external Vector3 get normal;
  external Vector3 get size;
  external num get angle;
}

/// class MeshBuilder
@JS()
class MeshBuilder {
  external static Mesh CreateBox(String name, MeshBuilderCreateBoxOptions options, [Scene scene]);
  external static Mesh CreateTiledBox(String name, MeshBuilderCreateTiledBoxOptions options, [Scene scene]);
  external static Mesh CreateSphere(String name, MeshBuilderCreateSphereOptions options, [Scene scene]);
  external static Mesh CreateDisc(String name, MeshBuilderCreateDiscOptions options, [Scene scene]);
  external static Mesh CreateIcoSphere(String name, MeshBuilderCreateIcoSphereOptions options, [Scene scene]);
  external static Mesh CreateRibbon(String name, MeshBuilderCreateRibbonOptions options, [Scene scene]);
  external static Mesh CreateCylinder(String name, MeshBuilderCreateCylinderOptions options, [Scene scene]);
  external static Mesh CreateTorus(String name, MeshBuilderCreateTorusOptions options, [Scene scene]);
  external static Mesh CreateTorusKnot(String name, MeshBuilderCreateTorusKnotOptions options, [Scene scene]);
  external static LinesMesh CreateLineSystem(String name, MeshBuilderCreateLineSystemOptions options, Scene scene);
  external static LinesMesh CreateLines(String name, MeshBuilderCreateLinesOptions options, [Scene scene]);
  external static LinesMesh CreateDashedLines(String name, MeshBuilderCreateDashedLinesOptions options, [Scene scene]);
  external static Mesh ExtrudeShape(String name, MeshBuilderExtrudeShapeOptions options, [Scene scene]);
  external static Mesh ExtrudeShapeCustom(String name, MeshBuilderExtrudeShapeCustomOptions options, [Scene scene]);
  external static Mesh CreateLathe(String name, MeshBuilderCreateLatheOptions options, [Scene scene]);
  external static Mesh CreateTiledPlane(String name, MeshBuilderCreateTiledPlaneOptions options, [Scene scene]);
  external static Mesh CreatePlane(String name, MeshBuilderCreatePlaneOptions options, [Scene scene]);
  external static Mesh CreateGround(String name, MeshBuilderCreateGroundOptions options, [Scene scene]);
  external static Mesh CreateTiledGround(String name, MeshBuilderCreateTiledGroundOptions options, [Scene scene]);
  external static GroundMesh CreateGroundFromHeightMap(String name, String url, MeshBuilderCreateGroundFromHeightMapOptions options, [Scene scene]);
  external static Mesh CreatePolygon(String name, MeshBuilderCreatePolygonOptions options, [Scene scene, dynamic earcutInjection]);
  external static Mesh ExtrudePolygon(String name, MeshBuilderExtrudePolygonOptions options, [Scene scene, dynamic earcutInjection]);
  external static Mesh CreateTube(String name, MeshBuilderCreateTubeOptions options, [Scene scene]);
  external static Mesh CreatePolyhedron(String name, MeshBuilderCreatePolyhedronOptions options, [Scene scene]);
  external static Mesh CreateDecal(String name, AbstractMesh sourceMesh, MeshBuilderCreateDecalOptions options);
  external static Mesh CreateCapsule(String name, [ICreateCapsuleOptions options, Scene scene]);
}
