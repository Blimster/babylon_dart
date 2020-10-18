part of babylon;

@JS()
@anonymous
class VertexDataCreateRibbonOptions {
  external factory VertexDataCreateRibbonOptions({List<Vector3> pathArray, bool closeArray, bool closePath, num offset, num sideOrientation, Vector4 frontUVs, Vector4 backUVs, bool invertUV, List<Vector2> uvs, List<Color4> colors});
  external List<Vector3> get pathArray;
  external bool get closeArray;
  external bool get closePath;
  external num get offset;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
  external bool get invertUV;
  external List<Vector2> get uvs;
  external List<Color4> get colors;
}

@JS()
@anonymous
class VertexDataCreateBoxOptions {
  external factory VertexDataCreateBoxOptions({num size, num width, num height, num depth, List<Vector4> faceUV, List<Color4> faceColors, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get size;
  external num get width;
  external num get height;
  external num get depth;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataCreateTiledBoxOptions {
  external factory VertexDataCreateTiledBoxOptions({num pattern, num width, num height, num depth, num tileSize, num tileWidth, num tileHeight, num alignHorizontal, num alignVertical, List<Vector4> faceUV, List<Color4> faceColors, num sideOrientation});
  external num get pattern;
  external num get width;
  external num get height;
  external num get depth;
  external num get tileSize;
  external num get tileWidth;
  external num get tileHeight;
  external num get alignHorizontal;
  external num get alignVertical;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external num get sideOrientation;
}

@JS()
@anonymous
class VertexDataCreateTiledPlaneOptions {
  external factory VertexDataCreateTiledPlaneOptions({num pattern, num tileSize, num tileWidth, num tileHeight, num size, num width, num height, num alignHorizontal, num alignVertical, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
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
}

@JS()
@anonymous
class VertexDataCreateSphereOptions {
  external factory VertexDataCreateSphereOptions({num segments, num diameter, num diameterX, num diameterY, num diameterZ, num arc, num slice, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
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
}

@JS()
@anonymous
class VertexDataCreateCylinderOptions {
  external factory VertexDataCreateCylinderOptions({num height, num diameterTop, num diameterBottom, num diameter, num tessellation, num subdivisions, num arc, List<Color4> faceColors, List<Vector4> faceUV, bool hasRings, bool enclose, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get height;
  external num get diameterTop;
  external num get diameterBottom;
  external num get diameter;
  external num get tessellation;
  external num get subdivisions;
  external num get arc;
  external List<Color4> get faceColors;
  external List<Vector4> get faceUV;
  external bool get hasRings;
  external bool get enclose;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataCreateTorusOptions {
  external factory VertexDataCreateTorusOptions({num diameter, num thickness, num tessellation, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get diameter;
  external num get thickness;
  external num get tessellation;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataCreateLineSystemOptions {
  external factory VertexDataCreateLineSystemOptions({List<Vector3> lines, List<Color4> colors});
  external List<Vector3> get lines;
  external List<Color4> get colors;
}

@JS()
@anonymous
class VertexDataCreateDashedLinesOptions {
  external factory VertexDataCreateDashedLinesOptions({List<Vector3> points, num dashSize, num gapSize, num dashNb});
  external List<Vector3> get points;
  external num get dashSize;
  external num get gapSize;
  external num get dashNb;
}

@JS()
@anonymous
class VertexDataCreateGroundOptions {
  external factory VertexDataCreateGroundOptions({num width, num height, num subdivisions, num subdivisionsX, num subdivisionsY});
  external num get width;
  external num get height;
  external num get subdivisions;
  external num get subdivisionsX;
  external num get subdivisionsY;
}

@JS()
@anonymous
class VertexDataCreateTiledGroundOptions {
  external factory VertexDataCreateTiledGroundOptions({num xmin, num zmin, num xmax, num zmax, VertexDataCreateTiledGroundOptions subdivisions, VertexDataCreateTiledGroundOptions precision});
  external num get xmin;
  external num get zmin;
  external num get xmax;
  external num get zmax;
  external VertexDataCreateTiledGroundOptionsSubdivisions get subdivisions;
  external VertexDataCreateTiledGroundOptionsPrecision get precision;
}

@JS()
@anonymous
class VertexDataCreateTiledGroundOptionsSubdivisions {
  external factory VertexDataCreateTiledGroundOptionsSubdivisions({num w, num h});
  external num get w;
  external num get h;
}

@JS()
@anonymous
class VertexDataCreateTiledGroundOptionsPrecision {
  external factory VertexDataCreateTiledGroundOptionsPrecision({num w, num h});
  external num get w;
  external num get h;
}

@JS()
@anonymous
class VertexDataCreateGroundFromHeightMapOptions {
  external factory VertexDataCreateGroundFromHeightMapOptions({num width, num height, num subdivisions, num minHeight, num maxHeight, Color3 colorFilter, Uint8List buffer, num bufferWidth, num bufferHeight, num alphaFilter});
  external num get width;
  external num get height;
  external num get subdivisions;
  external num get minHeight;
  external num get maxHeight;
  external Color3 get colorFilter;
  external Uint8List get buffer;
  external num get bufferWidth;
  external num get bufferHeight;
  external num get alphaFilter;
}

@JS()
@anonymous
class VertexDataCreatePlaneOptions {
  external factory VertexDataCreatePlaneOptions({num size, num width, num height, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get size;
  external num get width;
  external num get height;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataCreateDiscOptions {
  external factory VertexDataCreateDiscOptions({num radius, num tessellation, num arc, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get radius;
  external num get tessellation;
  external num get arc;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataCreateIcoSphereOptions {
  external factory VertexDataCreateIcoSphereOptions({num radius, num radiusX, num radiusY, num radiusZ, bool flat, num subdivisions, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get radius;
  external num get radiusX;
  external num get radiusY;
  external num get radiusZ;
  external bool get flat;
  external num get subdivisions;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataCreatePolyhedronOptions {
  external factory VertexDataCreatePolyhedronOptions({num type, num size, num sizeX, num sizeY, num sizeZ, dynamic custom, List<Vector4> faceUV, List<Color4> faceColors, bool flat, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get type;
  external num get size;
  external num get sizeX;
  external num get sizeY;
  external num get sizeZ;
  external dynamic get custom;
  external List<Vector4> get faceUV;
  external List<Color4> get faceColors;
  external bool get flat;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataCreateTorusKnotOptions {
  external factory VertexDataCreateTorusKnotOptions({num radius, num tube, num radialSegments, num tubularSegments, num p, num q, num sideOrientation, Vector4 frontUVs, Vector4 backUVs});
  external num get radius;
  external num get tube;
  external num get radialSegments;
  external num get tubularSegments;
  external num get p;
  external num get q;
  external num get sideOrientation;
  external Vector4 get frontUVs;
  external Vector4 get backUVs;
}

@JS()
@anonymous
class VertexDataComputeNormalsOptions {
  external factory VertexDataComputeNormalsOptions({dynamic facetNormals, dynamic facetPositions, dynamic facetPartitioning, num ratio, dynamic bInfo, Vector3 bbSize, dynamic subDiv, bool useRightHandedSystem, bool depthSort, Vector3 distanceTo, dynamic depthSortedFacets});
  external dynamic get facetNormals;
  external dynamic get facetPositions;
  external dynamic get facetPartitioning;
  external num get ratio;
  external dynamic get bInfo;
  external Vector3 get bbSize;
  external dynamic get subDiv;
  external bool get useRightHandedSystem;
  external bool get depthSort;
  external Vector3 get distanceTo;
  external dynamic get depthSortedFacets;
}

/// class VertexData
@JS()
class VertexData {
  external static num get FRONTSIDE;
  external static num get BACKSIDE;
  external static num get DOUBLESIDE;
  external static num get DEFAULTSIDE;
  external Float32List get positions;
  external Float32List get normals;
  external Float32List get tangents;
  external Float32List get uvs;
  external Float32List get uvs2;
  external Float32List get uvs3;
  external Float32List get uvs4;
  external Float32List get uvs5;
  external Float32List get uvs6;
  external Float32List get colors;
  external Float32List get matricesIndices;
  external Float32List get matricesWeights;
  external Float32List get matricesIndicesExtra;
  external Float32List get matricesWeightsExtra;
  external Int32List get indices;
  external set positions(Float32List positions);
  external set normals(Float32List normals);
  external set tangents(Float32List tangents);
  external set uvs(Float32List uvs);
  external set uvs2(Float32List uvs2);
  external set uvs3(Float32List uvs3);
  external set uvs4(Float32List uvs4);
  external set uvs5(Float32List uvs5);
  external set uvs6(Float32List uvs6);
  external set colors(Float32List colors);
  external set matricesIndices(Float32List matricesIndices);
  external set matricesWeights(Float32List matricesWeights);
  external set matricesIndicesExtra(Float32List matricesIndicesExtra);
  external set matricesWeightsExtra(Float32List matricesWeightsExtra);
  external set indices(Int32List indices);
  external void set(Float32List data, String kind);
  external VertexData applyToMesh(Mesh mesh, [bool updatable]);
  external VertexData applyToGeometry(Geometry geometry, [bool updatable]);
  external VertexData updateMesh(Mesh mesh);
  external VertexData updateGeometry(Geometry geometry);
  external VertexData transform(Matrix matrix);
  external VertexData merge(VertexData other, [bool use32BitsIndices]);
  external dynamic serialize();
  external static VertexData ExtractFromMesh(Mesh mesh, [bool copyWhenShared, bool forceCopy]);
  external static VertexData ExtractFromGeometry(Geometry geometry, [bool copyWhenShared, bool forceCopy]);
  external static VertexData CreateRibbon(VertexDataCreateRibbonOptions options);
  external static VertexData CreateBox(VertexDataCreateBoxOptions options);
  external static VertexData CreateTiledBox(VertexDataCreateTiledBoxOptions options);
  external static VertexData CreateTiledPlane(VertexDataCreateTiledPlaneOptions options);
  external static VertexData CreateSphere(VertexDataCreateSphereOptions options);
  external static VertexData CreateCylinder(VertexDataCreateCylinderOptions options);
  external static VertexData CreateTorus(VertexDataCreateTorusOptions options);
  external static VertexData CreateLineSystem(VertexDataCreateLineSystemOptions options);
  external static VertexData CreateDashedLines(VertexDataCreateDashedLinesOptions options);
  external static VertexData CreateGround(VertexDataCreateGroundOptions options);
  external static VertexData CreateTiledGround(VertexDataCreateTiledGroundOptions options);
  external static VertexData CreateGroundFromHeightMap(VertexDataCreateGroundFromHeightMapOptions options);
  external static VertexData CreatePlane(VertexDataCreatePlaneOptions options);
  external static VertexData CreateDisc(VertexDataCreateDiscOptions options);
  external static VertexData CreatePolygon(Mesh polygon, num sideOrientation, [List<Vector4> fUV, List<Color4> fColors, Vector4 frontUVs, Vector4 backUVs]);
  external static VertexData CreateIcoSphere(VertexDataCreateIcoSphereOptions options);
  external static VertexData CreatePolyhedron(VertexDataCreatePolyhedronOptions options);
  external static VertexData CreateTorusKnot(VertexDataCreateTorusKnotOptions options);
  external static void ComputeNormals(dynamic positions, dynamic indices, dynamic normals, [VertexDataComputeNormalsOptions options]);
  external static void ImportVertexData(dynamic parsedVertexData, Geometry geometry);
}
