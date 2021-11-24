# Scene Format

## Dump

The `.dump` file stores a header containing width, height, spp, render time, and the actual dump which is three "doubles" per pixel. Doubles are Double-precision floating-point format (sometimes called FP64 or float64).


### Old Dump Format

GZIP stream of header + dump stored in column major order


### New Dump Format


`0x44 0x55 0x4D 0x50 <1 as int> <header> <dump compressed with fpc magic> `


#### Header

`<width int> <height int> <spp int> <render time in millis long>`


---

## Octree

The octree file is GZIP compressed and contains a version integer, block palette, world octree, water octree, grass tinting, foliage tinting, and water tinting data. The first 4 bytes are a version number and currently must be between v3 and v6. v3-v4 octrees are currently converted to v5 for loading as data nodes (only used for water and lava) were replaced by new per-variant types.


### Octree Format

`<version int> <block palette data> <world octree data> <water octree data> <grass tinting data> <foliage tinting data> <water tinting data if version >= 4>`

[The section of code](https://github.com/chunky-dev/chunky/blob/master/chunky/src/java/se/llbit/chunky/resources/OctreeFileFormat.java#L50).


#### Block Palette Data

Stores NBT tags for each block.

`<version int == 4> <number of block types> <Serialized NBT tags for each block in order>`


#### World and water Octree Data

"octree is pretty complex lol"

"The octree itself is something like storing it depth first with 0xFFFF FFFF as a node and the type if its a leaf."


#### World/Tint Textures

Stores tint colors for grass, foliage, and water as WorldTexture.

`<number of tiles (chunks)> for each tile: <chunk x coordinate int> <chunk y coordinate int> <chunk texture in x major order, rgb as floats in linear color space>`


---

## Emittergrid

The .emittergrid is only generated if Emitter Sampling Strategy is set to One or All. Is also GZIP compressed.

* Version 0 - `<version as int> <grid size as int> <cell size as int> for each emitter position <positions as ints, -x, -y, -z corner, +0.5 to get center> for each grid <number of emitters in grid, index of emitters in positions array>`

* Version 1 -`<version as int> <cell size as int> <grid offset x> <grid size x> <grid offset y> ...`

* Version 2 - `<x,y,z center float, radius as float> for emitter position`


---

## Scene Description Format (SDF)

Most of the settings in Chunky scenes are stored in Scene Description files using a `JSON`-based file format. This page documents the SDF file format. The documentation is currently incomplete, and may lag behind the current Chunky version as new versions are released. Check the version history at the end of this page to see the latest updates made to the SDF documentation.

SDF JSON files are stored in the scene directory and the filename is based on the scene name with `.json` appended. For example, the JSON file for a scene named `MyScene` would be `MyScene.json`.


### Structure

#### General

| Key | Value range | Default value | Description |
|---|---|---|---|
| sdfVersion | Integer | 9 | Scene Description Format (SDF) version |
| name | String |  | Scene name |
| width | Integer | 400 | Canvas width |
| height | Integer | 400 | Canvas height |
| yClipMin | Integer |  | Clipping world when loading into scene |
| yClipMax | Integer |  | Clipping world when loading into scene |
| yMin | Integer |  | Slicing map view (impacts octree offset) |
| yMax | Integer |  | Slicing map view (impacts octree offset) |
| exposure | Number | 1 | Camera exposure |
| postprocess | `{"NONE", “TONEMAP2”, "GAMMA", "TONEMAP3", "TONEMAP1"}` | “GAMMA” | Tonemapping operator |
| outputMode | `{"PNG", "TIFF_32", “PFM”}` | “PNG” | Image output mode |
| renderTime | Number |  | Current cumulative rendering time |
| spp | Integer |  | Current samples per pixel (SPP) |
| sppTarget | Integer | 1000 | Render SPP target |
| rayDepth | Integer | 5 | Ray recursion depth |
| pathTrace | Boolean | false | Rendering mode (true = path tracing, false = preview) |
| dumpFrequency | Integer | 500 | How often the current render state is saved (samples per state save) |
| saveSnapshots | Boolean | false | Whether a snapshot image is saved for each render dump |
| emittersEnabled | Boolean | false | Whether emitters should emit light or not |
| emitterIntensity | Number | 13.0 | Controls intensity of emitters |
| sunEnabled | Boolean | true | Whether the sun should emit light or not |
| stillWater | Boolean | false | Whether water should be still or wavy |
| waterOpacity | Number `{0 to 1}` | 0.42 | Opacity of water |
| waterVisibility | Number | 9.0 | Distance rays can travel in water in blocks |
| useCustomWaterColor | Boolean | false | Toggle between biome tinted water and custom water color |
| waterColor | RGB Object |  | See below |
| fogColor | RGB Object |  | See below |
| fastFog | Boolean | true | Faster fog algorithm |
| biomeColorsEnabled | Boolean | true | Enable biome tint |
| transparentSky | Boolean | false | Treat sky as transparent |
| fogDensity | Number | 0.0 | Fog density |
| skyFogDensity | Number `{0 to 1}` | 1.0 | Controls the amount fog blends into the sky |
| waterWorldEnabled | Boolean | false | Enable water world |
| waterWorldHeight | Number | 63.0 | Controls height of water world |
| waterWorldHeightOffsetEnabled | Boolean | true | Applies Minecraft water offset |
| waterWorldClipEnabled | Boolean | true |  |
| renderActors | Boolean | true |  |
| world | World Object |  | See below |
| camera | Camera Object |  | See below |
| sun | Sun Object |  | See below |
| sky | Sky Object |  | See below |
| cameraPresets | Array of Camera Preset Objects |  | See below |
| materials | Material Array Object |  | See below |
| chunkList | Array of integer arrays |  | Chunks in the scene |
| entities | Array of Entity Objects |  | Static entities in the scene, e.g. paintings |
| actors | Array of Actor Objects |  | Posable entities such as players. |
| entityLoadingPreferences | entityLoadingPreferences Object |  | See below |
| octreeImplementation | `{“PACKED”, “NODE”, “BIGPACKED”}` | “PACKED” | Octree implementation to use |
| bvhImplementation | `{“SAH_MA”, “SAH”, “MIDPOINT”}` | “SAH_MA” | BVH implementation to use |
| emitterSamplingStrategy | `{“NONE”, “ONE”, “ALL”}` | “NONE” | Enables NEE for emitters for one or all per bounce |
| preventNormalEmitterWithSampling | Boolean | true | Attempts to prevent normal emitters and just use NEE |
| animationTime | Number | 0.0 |  |
| renderer | `{“PathTracingRenderer”}` | “PathTracingRenderer” | Change renderer used for path tracing |
| previewRenderer | `{“PreviewRenderer”}` | “PreviewRenderer” | Change renderer used for previews |
| additionalData | {} | {} | Unknown |                                                           |

#### RGB Object

| Key | Value range |
|---|---|
| red | Number `{0 to 1}` |
| green | Number `{0 to 1}` |
| blue | Number `{0 to 1}` |


#### World Object

| Key | Value range |
|---|---|
| path | String |
| dimension | Integer `{0 to 2}` |


#### Camera Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| name | String | “camera 1” |  |
| position | XYZ Object |  | See below |
| orientation | Direction Object |  | See below |
| projectionMode | `{"PINHOLE", "PARALLEL", "FISHEYE", "STEREOGRAPHIC", "PANORAMIC", "PANORAMIC_SLOT", “ODS_LEFT”, “ODS_RIGHT”}` | “PINHOLE” | Camera projection mode |
| fov | Number | 70.0 | Field of View |
| dof | Number | "Infinity" | Depth of Field |
| focalOffset | Number | 2.0 | Distance to target |
| shift | XY Object |  | See XYZ object |


#### XYZ Object

Note - XY Object is a XYZ Object just without the Z component.

| Key | Value range |
|---|---|
| x | Number |
| y | Number |
| z | Number |


#### Direction Object

| Key | Value range |
|---|---|
| roll | Number |
| pitch | Number |
| yaw | Number |


#### Sun Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| altitude | Number `{0 to PI/2}` | 1.0471975511965976 | The direction to the sun above the horizon (60 degrees in radians) |
| azimuth | Number `{0 to 2PI}` | 1.2566370614359172 | The direction to the sun measured from north (-72 degrees in radians) |
| intensity | Number | 1.25 | Sunlight scaling factor |
| color | RGB Object |  | See above |
| drawTexture | boolean | true | Whether to draw the resource pack texture for the sun or not |


#### Sky Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| skyYaw | Number `{0 to 2PI}` | 0.0 | Offset angle for the sky map |
| skyMirrored | Boolean | true | Enables mirroring of the skymap at the horizon (use when the vertical skymap angle is 90 degrees) |
| skyLight | Number | 1.0 | Sky light scaling factor |
| mode | `{"SIMULATED", "SOLID_COLOR", “GRADIENT”, “SKYMAP_PANORAMIC”, “SKYMAP_SPHERICAL”, “SKYBOX”, “BLACK”}` | "SIMULATED" | Sky rendering mode |
| horizonOffset | Number | 0.0 | Offset the horizon to simulate a curved earth. This helps hiding the horizon below distant objects. |
| cloudsEnabled | Boolean | false | Enable clouds |
| cloudSize | Number | 64.0 | Scale cloud map |
| cloudOffset | XYZ Object |  | See above |
| gradient | Array of Gradient Objects |  | See below |
| color | “RGB” Object |  | Not really an RGB object.. but kinda? |
| simulatedSky | `{"Preetham", “Nishita”}` | "Preetham" | Select method of rendering a simulated sky |
| skyCacheResolution | Integer | 128 | Internal resolution to be used for simulated sky, is interpolated |
| skymap | String |  | Path to skymap |
| skybox | Array of six Strings |  | Array of six paths to skybox images |


#### Gradient Object

| Key | Value range |
|---|---|
| rgb | String (RGB HEX) |
| pos | Number |


#### Camera Preset Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| "camera object: name" | Camera Object |  | "camera name" is the value of the `name` field |


#### Material Array Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| "block/entity name" | Material Object |  | Ie `"minecraft:acacia_log": {...}` |


#### Material Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| emittance | Number `{0+}` |  | How much light the material emits |
| specular | Number `{0 to 1}` |  | Specular reflection coefficient |
| roughness | Number `{0 to 1}` |  | Blurriness of reflection |
| ior | Number |  | Index of refraction |
| metalness | Number `{0 to 1}` |  | Percentage of rays tinted by material color (complex fresnel)  |


#### Entity Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| kind | String |  | Minecraft entity name |
| position | XYZ Object |  | See above |
| rotation | Integer |  | Entity rotation |
| design | Banner Design Object |  | See below |
| text | Array of four Text Objects |  | See below |
| direction | Integer |  | Entity rotation |
| material | `{“oak”, "dark_oak"}` TODO |  | Sign Material |
| art | String |  | Minecraft art ID |
| angle | Number |  | art angle? Legit just at n90 degrees. |
| placement | Integer |  | Head placement? |
| skin | String |  | Head texture URL |


#### Banner Design Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| base | Integer |  | Banner base |
| patterns | Arrange of Patterns Object |  | See below |


#### Patterns Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| pattern | `{"b", "bs", "ts", "ls", "rs", "cs", "ms", "drs", "dls", "ss", "cr", "sc", "ld", "rud", "lud", "rd", "vh", "vhr", "hh", "hhb", "bl", "br", "tl", "tr", "bt", "tt", "bts", "tts", "mc", "mr", "bo", "cbo", "bri", "gra", "gru", "cre", "sku", "flo", "moj", "glb", "pig"}` |  | Banner pattern code |
| color | Integer |  |  |


#### Text Object

| Key | Value range |
|---|---|
| text | String |
| color | Integer |


#### Actor Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| kind | String |  | Minecraft posable name |
| position | XYZ Object |  | See above |
| scale | Number |  | Scale actor |
| headScale | Number |  | Scale actor head |
| showArms | Boolean |  | Hide/show actor arms |
| gear | Array of Gear Objects |  | See below |
| pose | Pose Object |  | See below |
| invisible | Boolean |  | If actor is invisible |
| noBasePlate | Boolean |  | If armour_stand base plate is visible |


#### Gear Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| head | ID_Skin Object |  | “head” |
| OR |  |  |  |
| `{“feet”, “legs”, “chest”}` | “id”: “...” |  | Minecraft item ID |


#### ID_Skin Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| id | String | “minecraft:player_head” |  |
| skin | String |  | URL for skin texture |


#### Pose Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| all | Array of three Numbers |  | Array of parts Roll, Pitch, and Yaw |
| head | Array of three Numbers |  | Array of parts Roll, Pitch, and Yaw |
| chest | Array of three Numbers |  | Array of parts Roll, Pitch, and Yaw |
| leftArm | Array of three Numbers |  | Array of parts Roll, Pitch, and Yaw |
| rightArm | Array of three Numbers |  | Array of parts Roll, Pitch, and Yaw |
| leftLeg | Array of three Numbers |  | Array of parts Roll, Pitch, and Yaw |
| rightLeg | Array of three Numbers |  | Array of parts Roll, Pitch, and Yaw |


#### entityLoadingPreferences Object

| Key | Value range | Default value | Description |
|---|---|---|---|
| se.llbit.chunky.entity.Book |  | true | Whether to load book entities |
| se.llbit.chunky.entity.ArmorStand |  | true | Whether to load armor stand entities |
| se.llbit.chunky.entity.PaintingEntity |  | true | Whether to load painting entities |
| se.llbit.chunky.entity.PlayerEntity |  | true | Whether to load player entites |
| other |  | true | Whether to load “other” entities |



---

## Scripting

A simple way to process scene files is by using a scripting language like Python. For example, here is a Python script that generates individual scenes for each chunk in a square grid of chunks. The script uses an original scene as template for the new scenes.


    import json
    import os.path

    original_scene = 'D:\Users\Jesper\.chunky\scenes\shore-sun.json'
    scene_dir = os.path.abspath(os.path.join(original_scene, os.pardir))

    with open(original_scene, 'r') as f:
    	scene = json.load(f)

    for x in range(-10, 1):
    	for z in range(110, 119):
    		scene_name = 'chunk_%dx_%dz' % (x, z)
    		scene['name'] = scene_name
    		scene['chunkList'] = [ [ x, z ] ]
    		scene['spp'] = 0
    		scene['renderTime'] = 0
    		new_scene = os.path.join(scene_dir, scene_name + '.json')
    		print('Writing scene file %s' % new_scene)
    		with open(new_scene, 'w') as f:
    			json.dump(scene, f)



---


## Version History

* **Version 2** (Chunky 1.2.0 to 1.2.3)
* **Version 3** (Chunky 1.3-alpha1 to 1.3.3)
* **Version 4** (Chunky 1.3.4)
    * removed clearWater (Boolean)
    * added waterOpacity (Number)
    * added waterVisibility (Number)
    * added waterColor (RGB Object)
    * added useCustomWaterColor (Boolean)
* **Version 5** (Chunky 1.3.5-alpha5)
    * removed atmosphereEnabled (Boolean)
    * removed volumetricFogEnabled (Boolean)
    * added fogDensity (Number)
    * added fogColor (RGB Object)
    * added fastFog (Boolean)
* **Version 6** (Chunky 1.3.5-alpha5)
    * Changed postprocess from Integer to Enum
    * Added outputMode (Enum)
* **Version 7** (Chunky 1.3.8)
    * Added renderActors (Boolean)
    * Added actors (Array of Entity Objects)
* **Version 8** (Chunky 1.4.3)
    * Added materials (material properties)
* **Version 9** (Chunky 1.4.4)
    * Changed entity pose format.
    * Added entity armor items.

--8<-- "includes/abbreviations.md"

