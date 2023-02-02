# Your First Render From Start To Finish

!!!info
    This guide uses the [Stable](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release of Chunky.

## Installation

Please follow the [Installation instructions](../installing_chunky).

## Getting camera position

> This part is for taking an in-game view and rendering it. Feel free to skip this part if you are more confident!

Open Minecraft, and load a world you wish to render. Move your player to the location of what you wish to render, and ensure that you are facing the right direction, too. Record the values of the fields outlined in red (shown in [Figure 1](#figure-1)). You will need these to position the camera correctly in Chunky. Save and quit your world.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: Recording position and direction information in Minecraft</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/minecraft_f3_menu.jpg">
      <img class="figure" src="../../img/getting_started/your_first_render/minecraft_f3_menu.jpg" alt="Minecraft Debug Screen">
    </a>
  </div>
</div>

> In this example, the coordinates and direction values are as follows: X = 32.2 ; Y = 71.7 ; Z = -232.7 ; Yaw = 67.5 ; Pitch = 8.2 (rounded to 1 decimal place).

## Selecting Chunks

If Chunky isn't running yet, then launch it. You should see something like what is shown in [Figure 2](#figure-2).

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Chunky with no world loaded</p>
  <div class="figureimgcontainer">
    <a href="../../img/reference/user_interface/chunky/overview_no_map-stable.png">
      <img class="figure" src="../../img/reference/user_interface/chunky/overview_no_map-stable.png" alt="Chunky with no world loaded">
    </a>
  </div>
</div>

Currently, no world is loaded into Chunky. Click on <samp>Change World</samp>, located in the [<samp>Map View</samp>](../../reference/user_interface/chunky/right_panel_controls/map_view) tab in the right panel to select a world to load. You should be presented with a window like the one shown in [Figure 3](#figure-3).

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: The world selection dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../img/reference/user_interface/chunky/right_panel_controls/map_view/select_world_dialog_box.png">
      <img class="figure" src="../../img/reference/user_interface/chunky/right_panel_controls/map_view/select_world_dialog_box.png" alt="World selection dialog box">
    </a>
  </div>
</div>

Once you have located the world, click on <samp>Load selected world</samp>. The [<samp>Map</samp>](../../reference/user_interface/chunky/map) tab will load an interactive map view of your world, as shown in [Figure 4](#figure-4).

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: The map view of the loaded world</p>
  <div class="figureimgcontainer">
    <a href="../../img/reference/user_interface/chunky/overview-stable.png">
      <img class="figure" src="../../img/reference/user_interface/chunky/overview-stable.png" alt="Map view of the loaded world">
    </a>
  </div>
</div>

Select the dimension of your world that you want to render using the buttons in the right panel found in the <samp>Map View</samp> tab, and then select the chunks you wish to render using the controls listed below in the <samp>Map</samp> tab.

- Left-click a chunk to select or deselect the chunk.

- Hold <kbd>Shift</kbd> and Left-click and drag to select a rectangular area.

- Hold <kbd>Ctrl</kbd> + <kbd>Shift</kbd> and Left-click and drag to deselect a rectangular area.

- Left-click and drag to pan the map view across the world.

- Zoom in and out using the scroll wheel.

- Right-click to access a menu with a few options.

> Selecting fewer chunks can decrease rendering time, but they will be completely missing from the render. Try to only select what the camera can see!

## Setting up your render

> This part of the process is where you can customize settings to your heart's content. The guide will only cover the absolute basics, so it is recommended to experiment.

### Loading Chunks

To load chunks, either right click on the map view located in the center panel and click on <samp>New scene from selection</samp>, or click on <samp>Load selected chunks</samp>, which is found in the [<samp>Scene</samp>](../../reference/user_interface/chunky/render_controls/scene) tab in the left panel, which contains render controls. After loading the selected chunks, the center panel should automatically switch to the [<samp>Render Preview</samp>](../../reference/user_interface/chunky/render_preview) tab, which displays a 3D preview of the chunks selected from your world. The progress bar at the bottom should be filled. The time it takes to load the selected chunks increases with the number of chunks selected.

<div class="figure" id="figure-5">
  <p class="figure">Figure 5: The render preview</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/scene_tab.png">
      <img class="figure" src="../../img/getting_started/your_first_render/scene_tab.png" alt="Render preview">
    </a>
  </div>
</div>

### A few settings to change...

There are a few options inside the <samp>Scene</samp> tab that you may wish to change.

<samp>Canvas size</samp> is the resolution you want the preview and the final render to be. Higher values take longer to render, so using a lower resolution, such as *960x540*, can massively boost preview / test render performance. The <samp>x2</samp> button can quickly double the measures of both dimensions to *1920x1080*.

<samp>Save dump once every X</samp> is effectively an auto-save feature. Every time Chunky reaches an SPP value that is a multiple of *X* that you set, it will save your scene. Chunky will not render while dumping so do not set this too low unless you believe your system is unstable.

If you want to match the Chunky camera position to the player's position in-game, then <samp>Load entities</samp> > <samp>Players</samp> should be disabled.

### Previewing

Pressing <samp>Start</samp> and allowing Chunky to render the scene for a few seconds to get an idea of how the render will look at the end is a good idea. You can always press <samp>Reset</samp> to return to changing settings.

### Camera

Next, open the [<samp>Camera</samp>](../../reference/user_interface/chunky/render_controls/camera) tab.

<div class="figure" id="figure-6">
  <p class="figure">Figure 6: The <samp>Camera</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/camera_tab.png">
      <img class="figure" src="../../img/getting_started/your_first_render/camera_tab.png" alt="Camera tab">
    </a>
  </div> 
</div>

Click the <samp>Position & Orientation</samp> dropdown to expand it. Unfortunately, you cannot simply copy the values taken from the Minecraft debug screen. A few adjustments must be made first, because there are some differences that must be accounted for. Below is a set of conversions:

```
Chunky Camera X = Minecraft X
Chunky Camera Y = Minecraft Y + 1.62
Chunky Camera Z = Minecraft Z

Chunky Camera Yaw = 90 - Minecraft Yaw
Camera Pitch = Minecraft Pitch - 90
```

Using the above conversions with our example results in the following values:

> Chunky Camera X = 32.2 ; Chunky Camera Y = 73.32 ; Z = -232.7 ; Yaw = 22.5 ; Pitch = -81.8

Enter the X-, Y-, and Z-coordinates for the camera into the three input fields on the <samp>Position</samp> row, pressing the <kbd>Enter</kbd> key after each one. Do the same with the Camera pitch and yaw values, but place them into the first two input fields of the <samp>Orientation</samp> row, pressing the <kbd>Enter</kbd> key after each one. If <samp>Load entities</samp> > <samp>Players</samp> in the <samp>Scene</samp> tab was enabled when you clicked <samp>Load selected chunks</samp>, then the camera may clip into the player after you enter the values, as shown in [Figure 7](#figure-7).

<div class="figure" id="figure-7">
  <p class="figure">Figure 7: Camera clipping into player</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/render_preview_player_clipping.png">
      <img class="figure" src="../../img/getting_started/your_first_render/render_preview_player_clipping.png"   alt="Camera clipping into player">
    </a>
  </div>
</div>

To remove the player, open the [<samp>Entities</samp>](../../reference/user_interface/chunky/render_controls/entities) tab, select the player which the camera is clipping into (likely the first and only one on the list), and then press the <samp>-</samp> button.

<div class="figure" id="figure-8">
  <p class="figure">Figure 8: Player removed from the scene</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/render_preview.png">
      <img class="figure" src="../../img/getting_started/your_first_render/render_preview.png" alt="Player removed from the scene">
    </a>
  </div>
</div>

The default Field of View (FoV) for Minecraft is 70 degrees vertical. Assuming a 16:9 aspect ratio for both Minecraft and the Chunky render canvas resolution, the camera view with the default Chunky FoV of 70 degrees and the <samp>Standard</samp> projection mode should match the view in Mincraft.

!!! info "Dynamic FoV"
      If dynamic FoV is enabled in Minecraft, flying in Minecraft will increase the FoV. Disable dynamic FoV in Minecraft by setting <samp style="font-size: 1em;">FOV Effects</samp> in <samp style="font-size: 1em;">Video Settings</samp> to *0%* to get the same FoV as in Chunky, assuming both FoV settings match.

### Lighting

Open the [<samp>Lighting</samp>](../../reference/user_interface/chunky/render_controls/lighting) tab.

<div class="figure" id="figure-9">
  <p class="figure">Figure 9: The <samp>Lighting</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/lighting_tab.png">
      <img class="figure" src="../../img/getting_started/your_first_render/lighting_tab.png" alt="Lighting tab">
    </a>
  </div>
</div>

Here you can adjust the amount of light the Sky, Emitters (torches, glowstone, etc.), and Sun produce. The default values should be perfect for daytime renders. Adjusting the Sun azimuth (yaw / rotation) and altitude (height) can change the lighting of the scene dramatically.

For this example, I will simply set the <samp>Sun altitude</samp> to *25*.

> Emitters can *significantly* increase render times, and often require a much higher SPP to look smooth! Not rendering long enough will leave much noise, or "fireflies".

### Sky and Fog

Open the [<samp>Sky & Fog</samp>](../../reference/user_interface/chunky/render_controls/sky_and_fog) tab.

<div class="figure" id="figure-10">
  <p class="figure">Figure 10: The <samp>Sky & Fog</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/sky_and_fog_tab.png">
      <img class="figure" src="../../img/getting_started/your_first_render/sky_and_fog_tab.png" alt="Sky & Fog tab">
    </a>
  </div>
</div>

There is not too much to explain here. The <samp>Sky mode</samp> setting lets you chose between a simulated sky, solid color, color gradient, and skymaps / skycubes. <samp>Cloud X</samp>, <samp>Cloud Y</samp>, and <samp>Cloud Z</samp> control the location of the clouds, and <samp>Cloud size</samp> controls the size of the clouds, if they are enabled using <samp>Enable clouds</samp>. <samp>Fog density</samp> controls the thickness of the fog; set it to *0* to disable it. There is an example fog density listed as a guide. Fog produces much noise, so expect longer render times.

### Water

Open the [<samp>Water</samp>](../../reference/user_interface/chunky/render_controls/water) tab.

<div class="figure" id="figure-11">
  <p class="figure">Figure 11: The <samp>Water</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/water_tab.png">
      <img class="figure" src="../../img/getting_started/your_first_render/water_tab.png" alt="Water tab">
    </a>
  </div>
</div>

By default, the water will have a slight wave effect applied to it. You can disable it by enabling <samp>Still water</samp>. The <samp>Water visibility</samp> setting affects how far underwater you can see. The <samp>Water opacity</samp> setting controls how transparent the surface of the water is. Setting it to *0* makes the water clear, and setting it to *1* makes the water a solid color. By default, water color is biome-tinted, but you can override this by enabling <samp>Use custom water color</samp>.

### Entities

Open the [<samp>Entities</samp>](../../reference/user_interface/chunky/render_controls/entities) tab.

Adjust whatever you want in the entity tab to your liking. Press <samp>-</samp> to remove the selected entity from the render, and press <samp>+</samp> to add new entities.

> Entities usually have a minimal effect on render times.

### Materials & Postprocessing tabs

These tabs shall not be covered in this guide. Explore and experiment on your own. Read the articles for the [<samp>Materials</samp>](../../reference/user_interface/chunky/render_controls/materials) tab and for the [<samp>Postprocessing</samp>](../../reference/user_interface/chunky/render_controls/postprocessing) tab for more information.

### Advanced

Open the [<samp>Advanced</samp>](../../reference/user_interface/chunky/render_controls/advanced) tab.

<div class="figure" id="figure-12">
  <p class="figure">Figure 12: The <samp>Advanced</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/advanced_tab.png">
      <img class="figure" src="../../img/getting_started/your_first_render/advanced_tab.png" alt="Advanced tab">
    </a>
  </div>
</div>

Adjust the <samp>CPU utilization</samp> and <samp>Render threads</samp> as you see fit. Chunky renders solely using the CPU, though a [GPU rendering plugin](../../plugins/plugin_list#chunkycl-plugin) is in development.

> If you plan to use your PC while it is rendering or have a weaker computer, then reduce the <samp>CPU utilization</samp> or the <samp>Render threads</samp> as you see fit. Typically, reducing the number of threads that Chunky uses provides much more control over actual system usage. Be aware that reduced CPU load and fewer threads can significantly increase render times!

Set <samp>Ray Depth</samp> to whatever you want. A value anywhere from 3 to 8 is usually good enough for most scenes. Increasing ray depth increases render times but improves accuracy and render quality; a balance is required.

Enable <samp>Shutdown computer when render completes</samp> if you want your computer to shut down after the target SPP has been reached.

> If you are using Linux, then this option will have no effect unless you allow the `shutdown` command to run without needing `sudo`, since the `shutdown` command requires sudo permissions by default. For obvious reasons, Chunky won't store your sudo password for when it's time to execute the command. You can find a guide for allowing the shutdown command to run without `sudo` on the internet fairly easily.

You may wish to change the image <samp>Output mode</samp> here too.

## Just before we render

Set the <samp>Target SPP</samp> to whatever you want.

> SPP stands for Samples Per Pixel. Lower target SPP values will be reached sooner, but images rendered to lower SPP values may have more noise / grain / fireflies. A higher target SPP value will take longer to render to, but the image will be less noisy.

Typically, 32-1024 SPP is good for daylight renders without emitters (torches, lava, glowstone, etc.) enabled. For daylight renders with emitters, 4096-16384 SPP is better. For night-time renders or indoor renders with emitters, 16384 SPP or more is required to yield a sufficiently noise-free image.

### Save the scene

<div class="figure" id="figure-13">
  <p class="figure">Figure 13: Scene name, save, and load controls</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/save_load_buttons.png">
      <img class="figure" src="../../img/getting_started/your_first_render/save_load_buttons.png" alt="Scene name, save, and load controls">
    </a>
  </div>
</div>

In the top left of the Chunky window, enter a more reasonable scene name in the <samp>Scene</samp> input field. Then click the Save button, which is marked with a blue disk icon. To load a scene, click on the Load scene button, which is marked with a blue disk icon with a green arrow.

## Render

When you are ready, click <samp>Start</samp>, and wait for your beautiful image to be produced.

> This could take anywhere between two minutes and two years. Sit tight!

Should you need to stop at any point, click <samp>Pause</samp>, wait for CPU usage to dip down to idle, and then click the <samp>Save</samp> button. Wait for Chunky to finish saving the scene. Then it is safe to close Chunky. Failure to do so can lead to loss of render progress if not saving dumps frequently.

## Profit!

You can use either <samp>Save current frame</samp> <!-- Change these upon release of 2.5.0 --> or <samp>Copy current frame</samp> at any point during the render progress to get your render. If the target SPP has been reached, then you can find the finished render in (assuming default locations):

- Windows: "C:\Users\&lt;username&gt;\\.chunky\scenes\&lt;scene_name&gt;\snapshots"

- Linux: "/home/&lt;username&gt;/.chunky/scenes/&lt;scene_name&gt;/snapshots"

Alternatively, on the left control panel, inside the <samp>Scene</samp> tab, click <samp>Open Scene Directory</samp>.

[Figure 14](#figure-14) shows the finished product of this guide with a few minor tweaks to the sky simulation, the addition of fog, changes to the lighting intensities and color, and changes to the water.

<div class="figure" id="figure-14">
  <p class="figure">Figure 14: The finished render</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/your_first_render/final_render.png">
      <img class="figure" src="../../img/getting_started/your_first_render/final_render.png" alt="Finished render">
    </a>
  </div>
</div>

> This guide was adapted and updated from a guide by EmeraldSnorlax.

<!-- EOF -->

--8<-- "includes/abbreviations.md"
