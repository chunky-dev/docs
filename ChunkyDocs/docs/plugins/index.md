# Chunky Plugins

### General Note
As of Chunky 2.4.0 renderer switching is supported. ChunkyClPlugin’s `ChunkyCLRenderer` cannot yet be selected to be
used in conjunction with the Denoising Plugin though they won’t cause an exception anymore.
Plugins which have not yet been updated to support the new `addRenderer` API feature (Ambient Occlusion Plugin 
and Depth Buffer Plugin) are still supported and are added with the name of PluginRenderer. 
At the time of writing, the Discord Rich Presence plugin does not work with Chunky 2.4.

### Installation
Clicking `Manage Plugins` within the [Chunky Launcher](../getting_started/installing.md) will open the `Plugin Manager`.
Plugins, which are `.jar` files, can be added by clicking the `Add` button.
!!! note "Setup"
    Some plugins may require additional setup.
![Plugin Manager](../img/chunky_plugin_manager.png)

---

## Plugins

### Denoising Plugin
created by leMaik

An AI denoiser using Intel Open Image Denoise.

** Installation **

1. Download the (pre-)release denoiser `.jar` from the Github Repo.

    |    Version     |         Plugin File           |
    |----------------|-------------------------------|
    | Chunky 2.4+    | `chunky-denoiser.jar`         |
    | Chunky 2.0-2.3 | `chunky-denoiser-chunky2.jar` |
    | Chunky 1       | `chunky-denoiser-chunky1.jar` |
    
2. Download the [Precompiled Intel Open Image Denoise Binary Packages](https://www.openimagedenoise.org/downloads.html)
   for your OS. (ie for Windows it would be `oidn-1.4.1.x64.vc14.windows.zip`)
3. Extract the oidn `.zip` file to a chosen location. (ie `C:\Program Files\oidn-1.4.1.x64.vc14.windows\...`)
4. Add and enable the denoising plugin `.jar` in Chunky.
5. After launching Chunky, a new Denoiser tab will be found among the render controls. Expand this tab, next to the 
   Denoiser there will be a button `...` clicking this will open a file selector. Navigate to the install location and
   then into bin and select `oidnDenoise.exe`. The full path to the Denoiser would be displayed in the text field. 
   For this example it would be: `C:\Program Files\oidn-1.4.1.x64.vc14.windows\bin\oidnDenoise.exe`
6. Render normally! Profit! The Denoising Plugin with render the Normal and Albedo Map before the Noisy image.
   Once the Target SPP is reached the image will be denoised and saved into snapshots with the extension `*.denoised.*`.
   You can also find the original .pfm files in the scenes directory should you wish to use these for anything.


[Github Repository](https://github.com/chunky-dev/chunky-denoiser)

[Plugin Releases](https://github.com/chunky-dev/chunky-denoiser/releases)

### Octree Plugin
created by aTom3333

This is a plugin for Chunky that adds more octree implementations with a range of uses and benefits. See the GitHub
repository for more information and use. Notable implementations:

* Disk Implementation - Caches octree to disk. Extremely slow compared to other octree implementations but bypasses
  memory limits when loading large worlds.
* Garbage-collected Implementation - Generally faster octree creation / loading times. Higher peak memory usages.
* Dictionary Implementation - Lower memory usage than `PACKED`. Slightly slower while rendering and loading.
* Small DAG Implementation - Even lower memory usage than `DICTIONARY`. Slightly slower while rendering and loading.

[Github Repository](https://github.com/aTom3333/chunky-octree-plugin)

[Plugin Releases](https://github.com/aTom3333/chunky-octree-plugin/releases)

### OpenCL Plugin
created by Redox

A WIP OpenCL raytracer for Chunky. Requires Chunky 2.4.0.

[Github Repository](https://github.com/ThatRedox/ChunkyClPlugin)

### Bloom Plugin
created by aTom3333

Adds a bloom post processing effect.

[Github Repository](https://github.com/aTom3333/chunky-bloom-plugin)

[Plugin Releases](https://github.com/aTom3333/chunky-bloom-plugin/releases)

### JPEGXL Plugin
created by aTom3333

Adds option to export the render as a JPEG-XL image.

[Github Repository](https://github.com/aTom3333/chunky-jpegxl-plugin)

### Magick Export Plugin
created by ShirleyNeko

A WIP plugin that adds more export options (EXR, PNG16, etc.) using ImageMagick.

[Github Repository](https://github.com/ShirleyNekoDev/Chunky-MagickExportPlugin)

[Plugin Releases](https://github.com/ShirleyNekoDev/Chunky-MagickExportPlugin/releases)

### Discord Rich Presence
created by leMaik

Adds Discord rich presence integration to Chunky. Make sure this plugin is loaded after other plugins that
change the render manager. **Chunky 2.4** is not supported yet.

[Github Repository](https://github.com/leMaik/chunky-discord)

[Plugin Releases](https://github.com/leMaik/chunky-discord/releases)

### Excel Plugin
created by aTom3333

Exports renders as ODS such that an image viewer like Excel can render it.

[Github Repository](https://github.com/aTom3333/chunky-excel-plugin)

[Plugin Releases](https://github.com/aTom3333/chunky-excel-plugin/releases)

### Demo Plugins
created by llbit

Plugin demos for developers.

* [Ambient Occlusion Plugin](https://github.com/llbit/Chunky-AOPlugin)
* [Depth Buffer Plugin](https://github.com/llbit/Chunky-DepthPlugin)
* [Block Plugin Template](https://github.com/llbit/Chunky-BlockMod)
* [Tab Plugin Template](https://github.com/llbit/Chunky-TabMod)
