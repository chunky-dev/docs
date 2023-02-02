# Frequently Asked Questions

If your question is not answered here, then please ask it on either our <a href="https://discord.gg/VqcHpsF" target="_blank">Discord server</a> or our <a href="https://www.reddit.com/r/chunky/" target="_blank">Reddit community</a>.

## Why is there noise / grain / random bright dots in the render?

This is not a bug, but an unfortunate effect of the rendering algorithm that Chunky uses. Torches and other small light sources create very noisy illumination and much time is required to render such lighting nicely. For more information, please read the [Samples and Noise](../../user_guides/introduction/samples_and_noise) article. You can disable emitters in the [<samp>Lighting</samp>](../../reference/user_interface/chunky/render_controls/lighting) tab in the left control panel (render controls) to remove most of the random bright dots. Other light sources are typically larger and noise in the lighting from those light sources typically clears up more quickly. However, HDRi skymaps can cause very noisy lighting. Note that rendering for a longer time will eventually clear up the noise, though it may require a very long time.
  
There are techniques and [plugins](../../plugins/chunky_plugins) which can help reduce noise. For more information, please read the [Denoising](../../user_guides/denoising) article and <a href="https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/denoising.html" target="_blank">jackjt8's Guide to Chunky - Denoising</a>.


## How long does it take to render an image?

There is no definite answer to this question. Render time is mainly dependent on the speed of your CPU, the size of the render canvas, and the lighting conditions of the scene that is being rendered. It can take anywhere from a few minutes to several days to render a nice image. You can reduce the size of the canvas, disable emitters, enable [Emitter Sampling Strategy](../../reference/introduction/next_event_estimation#emitter-sampling-strategy-ess), or use a denoising technique to speed up the convergence rate. Please read the [Samples and Noise](../../user_guides/introduction/samples_and_noise) article, the [Denoising](../../user_guides/denoising) article, and <a href="https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/denoising.html" target="_blank">jackjt8's Guide to Chunky - Denoising</a> for more details.


## Is GPU rendering supported?

Limited GPU rendering support is currently available in the form of an OpenCL 1.2 renderer plugin. This renderer is still work-in-progress, but is currently not undergoing any active support or development. Many features of the CPU renderer are not yet supported. For more information, visit the <a href="https://github.com/ThatRedox/ChunkyClPlugin" target="_blank">OpenCL plugin GitHub repository</a>.


## How do I pin Chunky to the taskbar / Create shortcuts?

If JAR files are properly set to be opened with Java, then you can simply double-click the Chunky Launcher to open it. Shortcuts can be made from that file; they can be double-clicked and pinned to the Start menu. However, shortcuts to JAR files cannot be pinned to the taskbar.

If Java is not installed, or JAR files are not set to be opened with Java, then you can create a shortcut or a batch file to make the process of starting of the Chunky Launcher easier. To do so, right click in a file explorer window and create a new shortcut. In the input field for the location of the file, enter the following text:

```
"<path\to\java 17\java.exe>" -jar "<path\to\ChunkyLauncher.jar>"
```

*Replace the text within the angle brackets `< >` with the actual path to the files on your computer, and do not include the angle brackets in the actual command.*

Then click <samp>Next</samp>, and then name the shortcut whatever you want. This shortcut can be double-clicked to start the Chunky Launcher, and can be pinned to the Start menu and the taskbar. If you do not want a terminal window to open every time the shortcut is used, then replace the `java.exe` with `javaw.exe`.

However, if the startup command is very long, then the limit to the number of characters that can be entered into the file location field of a shortcut can be exceeded. This can be caused by long file paths or several Java arguments in the command. If that is the case, then a batch file can be used instead.

To create one, open Notepad or another text editor. Then enter the following text, along with any arguments required:

```
"<path\to\java 17\java.exe>" -jar "<path\to\ChunkyLauncher.jar>"
```

*As before, replace the text within the angle brackets `< >` with the actual path to the files on your computer, and do not include the angle brackets in the actual command.*

Then use <samp>File</samp> > <samp>Save As...</samp>. Navigate to the folder in which you wish to save the batch file. Change the <samp>Save as type</samp> to <samp>All files (*.*)</samp>. Enter whatever name you wish for the file, and append `.bat` to the end as the file extension. Then click <samp>Save</samp>. This batch file can be double-clicked to start the Chunky Launcher. Shortcuts to the batch file can be pinned to the Start menu, but not to the taskbar. To pin Chunky to the taskbar, a different shortcut must be used. To do so, right-click in a file explorer window and create a new shortcut. In the input field for the location of the file, enter the following text:

```
cmd /c "<path\to\the\batch file.bat>"
```

*As before, replace the text within the angle brackets `< >` with the actual path to the file on your computer, and do not include the angle brackets in the actual command.*

Then click <samp>Next</samp>, and then name the shortcut whatever you want. This shortcut can be double-clicked to start the Chunky Launcher, and can be pinned to the Start menu and the taskbar. If you do not want a terminal window to open every time the batch file or the shortcut is used, then use the following text in the batch file instead, along with any arguments required:

```
start "" "<path\to\java 17\javaw.exe>" -jar "<path\to\ChunkyLauncher.jar>"
```

*As before, replace the text within the angle brackets `< >` with the actual path to the files on your computer, and do not include the angle brackets in the actual command.*

Note that `java.exe` has been replaced with `javaw.exe`.


## Why are mobs not rendered?

Chunky currently cannot render most entities. Entities are objects that are separate from the blocks that make up the Minecraft worlds, such as mobs, minecarts, projectiles, etc. Future support for rendering entities is planned, but there is no deadline for this feature yet, so stay tuned! For a list of what Minecraft features are supported by Chunky, please view the [Minecraft Compatibility](../minecraft_compatibility) article.


## Can Chunky render custom block models and mod blocks?

Chunky currently does not support custom JSON-defined block models and mod blocks; however, support for them is in development and is planned to be released in Chunky 2.5.0, or as a plugin. For more information on blocks and features currently supported by Chunky, please view the [Minecraft Compatibility](../minecraft_compatibility) article.


## Why does the sky look bad?

This can be caused by the use of an incorrect skymap format, incorrect skymap settings, or a skymap with too low resolution. Chunky supports equirectangular skymaps, both in 360x180 degrees format and in 360x90 degrees format; angular skymaps; and skyboxes / skycubes. Verify that you are using the correct skymap settings for the type of skymap that you have loaded. If your skymap is an equirectangular skymap, then set the [<samp>Vertical resolution</samp>](../../reference/user_interface/chunky/render_controls/sky_and_fog#sky-mode-settings) according to the vertical resolution of your skymap. Set it to <samp>Full</samp> if the skymap is in 360x180 degrees format, and set it to <samp>Half (mirrored)</samp> if the skymap is in 360x90 degrees format. If the skymap resolution is too low, then it will appear pixelated in the render. Use a higher resolution skymap to solve the problem. For more information about skymaps, please read the [Skymaps](../../user_guides/skymaps) article.


## Where can I find Skymaps?

The [Skymaps](../../user_guides/skymaps#obtaining-skymaps) article has some useful links for obtaining high quality skymaps.


## How do I correctly add resource packs?

To correctly add resource packs, follow the instructions below.

- Step 1: Open the {% if extra.chunky < 2_05_00 %}[<samp>Options</samp>](../../reference/user_interface/chunky/right_panel_controls/options){% endif %}{% if extra.chunky >= 2_05_00 %}[<samp>Textures & Resource Packs</samp>](../../reference/user_interface/chunky/render_controls/textures_and_resource_packs){% endif %} tab.

- Step 2: Click <samp>Edit resource packs</samp> to open the {% if extra.chunky < 2_05_00 %}['Resource packs'](../../reference/user_interface/chunky/right_panel_controls/options#resource-packs){% endif %}{% if extra.chunky >= 2_05_00 %}['Select Resource packs'](../../reference/user_interface/chunky/render_controls/textures_and_resource_packs#select-resource-packs){% endif %} dialog box.

- Step 3: Click {% if extra.chunky < 2_05_00 %}<samp>Add</samp>{% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Browse</samp>{% endif %}.

- Step 4: Browse for a "pack.mcmeta" file, a resource pack ZIP archive, or a Minecraft "version.jar".

- Step 5: Repeat Steps 3 and 4 for all other resource packs that you wish to add.

- Step 6: Left-click a resource pack in the list and use the {% if extra.chunky < 2_05_00 %}<samp>Up</samp> and <samp>Down</samp>{% endif %}{% if extra.chunky >= 2_05_00 %}up- and down- arrow{% endif %} controls to change the order of the resource packs. Textures in resource packs that are higher in the list override textures in resource packs that are lower in the list, including the default Minecraft "version.jar", unless it is disabled using the [<samp>Disable default textures (needs restart)</samp>]{% if extra.chunky < 2_05_00 %}(../../reference/user_interface/chunky/right_panel_controls/options){% endif %}{% if extra.chunky >= 2_05_00 %}(../../reference/user_interface/chunky/render_controls/textures_and_resource_packs#select-resource-packs){% endif %} control.

- Step 7: Click {% if extra.chunky < 2_05_00 %}<samp>Apply</samp>{% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Apply as default</samp>{% endif %} to use the new resource pack configuration and close the {% if extra.chunky < 2_05_00 %}'Resource Packs'{% endif %}{% if extra.chunky >= 2_05_00 %}'Select Resource Packs'{% endif %} dialog box.

The resource pack configuration should be automatically applied in the render preview, but the <samp>Reload</samp> button in the {% if extra.chunky < 2_05_00 %}[<samp>Map View</samp>](../../reference/user_interface/chunky/right_panel_controls/map_view){% endif %}{% if extra.chunky >= 2_05_00 %}[<samp>Map</samp>](../../reference/user_interface/chunky/map){% endif %} tab must be clicked to apply the resource pack configuration in the map view.


## What about the third-party server plugin?

The Chunky Pre-generator, found on <a href="https://www.spigotmc.org/resources/chunky.81534/" target="_blank">SpigotMC</a> and <a href="https://papermc.io/forums/t/1-13-2-1-18-1-chunky-pregenerator/4850" target="_blank">PaperMC</a>, is an unrelated project that has caused an unfortunate name collision. (Chunky was created by llbit in 2010, but the pre-generator was created in 2020.) The server plugin is used to quickly pre-generate world chunks.

--8<-- "includes/abbreviations.md"
