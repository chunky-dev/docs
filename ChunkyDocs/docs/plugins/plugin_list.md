# Plugin List

Below is a list of known plugins. If a plugin is missing, feel free to add it to this page by submitting a pull request with all of the required information.


## Animation Plugin

<a href="https://github.com/ThatRedox" target="_blank">:material-account: ThatRedox</a> &middot; <a href="https://github.com/ThatRedox/ChunkyAnimation" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/ThatRedox/ChunkyAnimation/releases" target="_blank">:material-tag: Releases</a>

This plugin adds functionality to render an animation without completely reloading the scene on every frame. It adds a <samp>Keyframe Editor</samp> tab, which allows creation and editing keyframes and an option to load JSON files from a folder.

The current release of the plugin functions normally when used with the [Stable](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release or the [Stable snapshot](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release of Chunky; however, there are glitches that occur when it is used with the [Snapshot](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release of Chunky.


## AOV Plugin

<a href="https://github.com/ThatRedox" target="_blank">:material-account: ThatRedox</a> &middot; <a href="https://github.com/chunky-dev/chunky-aov" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/chunky-dev/chunky-aov/releases" target="_blank">:material-tag: Releases</a>

This plugin adds Arbitrary Output Variable renderers to Chunky. The renderers added are listed below.

- Albedo

- Normal

- Ambient Occlusion

- Depth Buffer


## Bloom Plugin

<a href="https://github.com/aTom3333" target="_blank">:material-account: aTom3333</a> &middot; <a href="https://github.com/aTom3333/chunky-bloom-plugin" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/aTom3333/chunky-bloom-plugin/releases" target="_blank">:material-tag: Releases</a>

This plugin adds a bloom post-processing filter to Chunky.

**Installation**

The 0.2.1 release of the plugin requires the [Stable](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release or the [Stable snapshot](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release of Chunky, while the 0.3.0 release of the plugin requires the [Snapshot](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release of Chunky.


## BVH Plugin

<a href="https://github.com/aTom3333" target="_blank">:material-account: aTom3333</a> &middot; <a href="https://github.com/aTom3333/chunky-bvh-plugin" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/aTom3333/chunky-bvh-plugin/releases" target="_blank">:material-tag: Releases</a>

This plugin adds an additional BVH to Chunky.

- PACKED_SAH_MA: This BVH implementation is based on the SAH_MA implementation, and uses three to four times less memory than SAH_MA does, while also being slightly faster. 


## ChunkyCL Plugin

<a href="https://github.com/ThatRedox" target="_blank">:material-account: ThatRedox</a> &middot; <a href="https://github.com/ThatRedox/ChunkyClPlugin" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/ThatRedox/ChunkyClPlugin#downloads" target="_blank">:material-tag: Releases</a>

This plugin adds a work-in-progress OpenCL ray tracer to Chunky. Not all blocks and features are supported.

!!! warning "Experimental"
    This plugin is in early beta state and does not support all Chunky features yet. Additionally, while this plugin is still available for download, as of now, it is not being actively supported or developed.

!!! info "Renderer switching in Chunky 2.4.0 or later"
    As of Chunky 2.4.0, renderer switching is supported. The <samp style="font-size: 1em;">ChunkyCLRenderer</samp> of the ChunkyCL plugin cannot yet be used in conjunction with the Denoising Plugin, although loading both plugins concurrently does not cause an exception anymore.

    Plugins which have not yet been updated to support the new `addRenderer` API feature (such as the <a href="https://github.com/llbit/Chunky-AOPlugin" target="_blank">Ambient Occlusion Plugin</a> and <a href="https://github.com/llbit/Chunky-DepthPlugin" target="_blank">Depth Buffer Plugin</a>) are still supported and are added with the name of <samp style="font-size: 1em;">PluginRenderer</samp>.

## Debug Plugin

<a href="https://github.com/ThatRedox" target="_blank">:material-account: ThatRedox</a> &middot; <a href="https://github.com/ThatRedox/chunky-debug" target="_blank">:material-github: GitHub Repository</a>

!!! warning "WIP"
    This plugin has no releases and must be built from source.
	
This plugin adds tools to help developers debug Chunky.

## Denoising Plugin

<a href="https://github.com/leMaik" target="_blank">:material-account: leMaik</a> &middot; <a href="https://github.com/chunky-dev/chunky-denoiser" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/chunky-dev/chunky-denoiser/releases" target="_blank">:material-tag: Releases</a>

This plugin adds AI denoiser functionality using Intel Open Image Denoise. It is very effective at reducing noise and can be used to effectively cut render times greatly.

**Installation**

- Step 1: Download the correct release of the plugin from the GitHub repository for the version of Chunky on which you want the denoiser to run, and install it according to the plugin [installation instructions](../chunky_plugins#installation).

| Version        | Plugin Release | Plugin File                   |
| -------------- | -------------- | ----------------------------- |
| Chunky 2.4+    | v0.4.0         | `chunky-denoiser.jar`         |
| Chunky 2.0-2.3 | v0.3.2         | `chunky-denoiser-chunky2.jar` |
| Chunky 1       | v0.3.2         | `chunky-denoiser-chunky1.jar` |

- Step 2: Download the <a href="https://www.openimagedenoise.org/downloads.html" target="_blank">Precompiled Intel Open Image Denoise Binary Packages</a> for your OS. (for example, on Windows, it would be "oidn-1.4.3.x64.vc14.windows.zip".)

- Step 3: Extract the OIDN ZIP file to a location on your computer, such as "C:\Program Files\oidn-1.4.3.x64.vc14.windows". Alternatively, you may optionally only extract "oidnDenoise.exe", "OpenImageDenoise.dll", and "tbb12.dll" to a choisen directory. These are the minimum required files at the time of writing.

- Step 4: Launch Chunky.

- Step 5: Open the <samp>Denoiser</samp> tab in the left control panel.

- Step 6: Click the <samp>...</samp> button, and then browse for "oidnDenoise.exe", which is typically located in the "bin" folder of the extracted OIDN ZIP file.


## Discord Rich Presence

<a href="https://github.com/leMaik" target="_blank">:material-account: leMaik</a> &middot; <a href="https://github.com/leMaik/chunky-discord" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/leMaik/chunky-discord/releases" target="_blank">:material-tag: Releases</a>

This plugin adds Discord rich presence integration to Chunky.

**Installation**

- Step 1: Download the correct release of the plugin from the GitHub repository for the version of Chunky on which you want the plugin to run, and install it according to the plugin [installation instructions](../chunky_plugins#installation). Make sure that the plugin is last in the list of plugins selected to be loaded to avoid problems.

| Version        | Plugin Release |
| -------------- | -------------- |
| Chunky 2.4+    | v1.1.0         |
| Chunky 2.0-2.3 | v1.0.0         |

- Step 2: Launch Chunky and render normally.

## Editor Plugin

<a href="https://github.com/NotStirred" target="_blank">:material-account: NotStirred</a> &middot; <a href="https://github.com/chunky-dev/chunky-editor" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/chunky-dev/chunky-editor/releases" target="_blank">:material-tag: Releases</a>

This plugin adds world editing functionality that is intended to replace the current editing functionality that is native to Chunky.


## Excel Plugin

<a href="https://github.com/aTom3333" target="_blank">:material-account: aTom3333</a> &middot; <a href="https://github.com/aTom3333/chunky-excel-plugin" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/aTom3333/chunky-excel-plugin/releases" target="_blank">:material-tag: Releases</a>

This plugin adds an ODS <samp>Output mode</samp> to Chunky so that an "image viewer" like Excel can view the render.


## JPEGXL Plugin

<a href="https://github.com/aTom3333" target="_blank">:material-account: aTom3333</a> &middot; <a href="https://github.com/aTom3333/chunky-jpegxl-plugin" target="_blank">:material-github: GitHub Repository</a>

This plugin adds a JPEG-XL <samp>Output mode</samp> to Chunky.

**Installation**

This plugin does not have any releases, and must be built from source. Follow the instructions on the <a href="https://github.com/aTom3333/chunky-jpegxl-plugin" target="_blank">GitHub repository</a>.


## Magick Export Plugin

<a href="https://github.com/ShirleyNekoDev" target="_blank">:material-account: ShirleyNekoDev</a> &middot; <a href="https://github.com/ShirleyNekoDev/Chunky-MagickExportPlugin" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/ShirleyNekoDev/Chunky-MagickExportPlugin/releases" target="_blank">:material-tag: Releases</a>

This plugin is a work-in-progress plugin that adds more render <samp>Output modes</samp>, such as OpenEXR and PNG16, using ImageMagick or GraphicsMagick.


## Octree Plugin

<a href="https://github.com/aTom3333" target="_blank">:material-account: aTom3333</a> &middot; <a href="https://github.com/aTom3333/chunky-octree-plugin" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/aTom3333/chunky-octree-plugin/releases" target="_blank">:material-tag: Releases</a>

This plugin adds more octree implementations with a range of uses and benefits. See the GitHub repository for more information and on the different octree implementations and their uses. Notable implementations include those listed below.

- Disk Implementation: This implementation caches the octree to disk. It is extremely slow compared to other octree implementations, but it bypasses memory limits when loading large chunk selections.

- Garbage-collected Implementation: This implementation is generally faster during octree creation and octree loading. The peak memory usage of this implementation is higher, however.

- Dictionary Implementation: This implementation uses less memory than PACKED does. It is slightly slower while rendering and loading, however.

- Small DAG Implementation: This implementation uses even less memory than DICTIONARY does. It is slightly slower while rendering and loading, however.

One more option is available but is not listed here. Further information is located in the <a href="https://github.com/aTom3333/chunky-octree-plugin" target="_blank">GitHub repository</a>.


## Schematics Plugin

<a href="https://github.com/ShirleyNekoDev" target="_blank">:material-account: ShirleyNekoDev</a> &middot; <a href="https://github.com/ShirleyNekoDev/Chunky-SchematicsPlugin" target="_blank">:material-github: GitHub Repository</a> &middot; <a href="https://github.com/ShirleyNekoDev/Chunky-SchematicsPlugin/releases" target="_blank">:material-tag: Releases</a>

This plugin allows loading of Minecraft schematic files as scenes. Schematic formats supported by the plugin include MCEdit Schematics ("Alpha" / legacy world format); and Sponge Schematics.

!!! warning "Experimental"
    This plugin is still in alpha stage, and there are several known issues. See the GitHub repository for more information.

**Installation**

This plugin only works with the [Snapshot](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release of Chunky.

- Step 1: Download the plugin from the GitHub repository and install it according to the plugin [installation instructions](../chunky_plugins#installation).

--8<-- "includes/abbreviations.md"
