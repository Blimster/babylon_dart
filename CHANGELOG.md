# Changelog

## v1.1.2

- Added `Scene.pick()` and `Scene.pickWithRay()`

## v1.1.1

- Updated to BabylonJS 4.2.1 (see https://forum.babylonjs.com/t/broken-shadows-after-recent-chrome-update-in-4-2/26479)

## v1.1.0

- BREAKING CHANGE: Requires Dart SDK 2.14.0
- Added binding for Angle and Gizmos

## v1.0.0

- Stable null safety release.

## v1.0.0-nullsafety.2

- Added bindings for `RecastJSPlugin`.

## v1.0.0-nullsafety.1

- BREAKING CHANGE: The constructor with parameters of class Engine is now a named constructor 'args'
- Added bindings for NullEngine.

## v1.0.0-nullsafety.0

- First null safe version.

## v0.8.0

- BREAKING CHANGE: The constructor with parameters of class Engine is now a named constructor 'args'
- Added bindings for NullEngine.

## v0.7.4

- Added biindings for physically based rendering.

## v0.7.3

- Added classes GLTF2Export, IExportOptions and GLTFData.

## v0.7.2

- Added class CSG.

## v0.7.1

- Added basics for Solid Particle System (simple example with some animation works).

## v0.7.0

- BREAKING CHANGE: IInspectorOptions is now handled as object literal.

## v0.6.1

- Added scripts to run BabylonJS inspector.

## v0.6.0+1

- Little changes in README.md and added some comments to the examplle.

## v0.6.0

- BREAKING CHANGE: BabylonJS 4.2

## v0.5.1

- Added binding for DirectionalLight

## v0.5.0

- More bindings (including classes for TypeScript enums)
- BREAKING CHANGE: Enusure a no arg contructor for extended classes. If such a class have already a constructor with args, it will be named 'args'.

## v0.4.0

- Much more bindings
- BREAKING CHANGE: 2.10.0 as minimum SDK constaint

## v0.3.0

- Much more bindings
- All bindings are generated now
- Bugifxes
- BREAKING CHANGES: because all code is generated now and bugs were fixed, there are breaking changes in the API.

## v0.2.0

-   Added support for optional parameters
-   Added support for type parameters on classes
-   Added `Promise` type
-   Added support for abstract classes and methods

## v0.1.1+1

-   Fixed spelling in README.md

## v0.1.1

-   added ShadowLight

## v0.1.0

-   Initial version
