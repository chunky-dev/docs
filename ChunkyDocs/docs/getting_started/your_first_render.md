# Your First Render From Start To Finish

---

This guide uses the [Stable](../configuring_chunky_launcher#advanced-settings) release of Chunky.

---

## Installation

Please follow the [Installation instructions](../getting_started/installing_chunky.md).

---

## Chunky Launcher

Start the Chunky Launcher. You should be presented with a window similar to what is shown in [Figure 1.3.1](#figure-1-3-1).

<div class="figure" id="figure-1-3-1">
  <p class="figure">
  Figure 1.3.1: The Chunky Launcher
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/chunky_launcher.png">
      <img class="figure" src="../../img/getting_started/chunky_launcher.png" alt="Chunky Launcher">
    </a>
  </div>
</div>

You might need to change some settings at this point.

- Minecraft directory: If your Minecraft game directory (.minecraft) is located somewhere other than its default location, then you may also need to change this to point to your current Minecraft installation; otherwise, blocks rendered in Chunky will not have proper textures, and your worlds will not be found.

- Memory limit (MiB): Chunky can use much memory depending on a number of factors. Many issues can be caused by Chunky not having enough memory, so raising the `Memory limit (MiB)` can solve these issues. The default of *1024* can be raised based upon how much memory your system has and how much is typically available. For example, if your system has 16 GiB (16384 MiB) of system memory, allocating up to 75% of that, which is 12 GiB (12288 MiB), is typically fine. You can allocate more; however, you may eventually encounter other problems.

You should not need to access `Advanced Settings`.

For now, you can close the Chunky Launcher.

---

## Getting camera position

> This part is for taking an in-game view and rendering it. Feel free to skip this part if you are more confident!

Open Minecraft, and load a world you wish to render. Move your player to the location of what you wish to render, and ensure that you are facing the right direction, too. Record the values of the fields outlined in red (shown in [Figure 1.3.2](#figure-1-3-2)). You will need these to position the camera correctly in Chunky. Save and quit your world.

<div class="figure" id="figure-1-3-2">
  <p class="figure">
  Figure 1.3.2: Recording position and direction information in Minecraft
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/mc_f3_menu.jpg">
      <img class="figure" src="../../img/getting_started/mc_f3_menu.jpg" alt="Minecraft Debug Screen">
    </a>
  </div>
</div>

> In this example, the coordinates and direction values are as follows: X = 32.2 ; Y = 71.7 ; Z = -232.7 ; Yaw = 67.5 ; Pitch = 8.2 (rounded to 1 decimal place).

---

## Selecting Chunks

If Chunky isn't running yet, then launch it. You should see something like what is shown in [Figure 1.3.3](#figure-1-3-3).

<div class="figure" id="figure-1-3-3">
  <p class="figure">
  Figure 1.3.3: Chunky with no world loaded
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/user_interface/overview_no_map.png">
      <img class="figure" src="../../img/user_interface/overview_no_map.png" alt="Chunky with no world loaded">
    </a>
  </div>
</div>

Currently, no world is loaded into Chunky. Click on `Change World`, located in the [`Map View`](../../reference/user_interface/right_panel_controls/map_view) tab in the right panel to select a world to load. You should be presented with a window like the one shown in [Figure 1.3.4](#figure-1-3-4).

<div class="figure" id="figure-1-3-4">
  <p class="figure">
  Figure 1.3.4: The world selection dialog box
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/user_interface/right_panel/select_world.png">
      <img class="figure" src="../../img/user_interface/right_panel/select_world.png" alt="World selection dialog box">
    </a>
  </div>
</div>

Once you have located the world, click on `Load selected world`. The [`Map`](../../reference/user_interface/map) tab will load an interactive map view of your world, as shown in [Figure 1.3.5](#figure-1-3-5).

<div class="figure" id="figure-1-3-5">
  <p class="figure">
  Figure 1.3.5: The map view of the loaded world
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/user_interface/overview.png">
      <img class="figure" src="../../img/user_interface/overview.png" alt="Map view of the loaded world">
    </a>
  </div>
</div>

Select the dimension of your world that you want to render using the buttons in the right panel found in the [`Map View`](../../reference/user_interface/right_panel_controls/map_view) tab, and then select the chunks you wish to render using the controls listed below in the [`Map`](../../reference/user_interface/map) tab.

- Left-click a chunk to select / deselect the chunk.

- Hold `Shift` and left-click + drag to select a rectangular area.

- Hold `Ctrl` + `Shift` and left-click + drag to deselect a rectangular area.

- Left-click and drag to pan the map view across the world.

- Zoom in and out using the scroll wheel.

- Right-click to access a menu with a few options.

> Selecting fewer chunks can decrease rendering time, but they will be completely missing from the render. Try to only select what the camera can see!

---

## Setting up your render

> This part of the process is where you can customize settings to your heart's content. The guide will only cover the absolute basics, so it is recommended to experiment.

### Loading Chunks

To load chunks, either right click on the map view located in the center panel and click on `New scene from selection`, or click on `Load selected chunks`, which is found in the [`Scene`](../../reference/user_interface/render_controls/scene) tab in the left panel, which contains render controls. After loading the selected chunks, the center panel should automatically switch to the [`Render Preview`](../../reference/user_interface/render_preview) tab, which displays a 3D preview of the chunks selected from your world. The progress bar at the bottom should be filled. The time it takes to load the selected chunks increases with the number of chunks selected.

<div class="figure" id="figure-1-3-6">
  <p class="figure">
  Figure 1.3.6: The render preview
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/scene.png">
      <img class="figure" src="../../img/getting_started/render/scene.png" alt="Render preview">
    </a>
  </div>
</div>

---

### A few settings to change...

There are a few options inside the [`Scene`](../../reference/user_interface/render_controls/scene) tab that you may wish to change.

`Canvas size` is the resolution you want the preview and the final render to be. Higher values take longer to render, so using a lower resolution, such as 960x540, can massively boost preview/test render performance. The `x2` button can quickly double the measures of both dimensions to 1920x1080.

`Save dump once every X` is effectively an auto-save feature. Every time Chunky reaches an SPP value that is a multiple of `X` that you set, it will save your scene. Chunky will not render while dumping so do not set this too low unless you believe your system is unstable.

If you want to match the Chunky camera position to the player's position in-game, then `Load entities > Players` should be disabled.

---

### Previewing

Pressing `Start` and allowing Chunky to render the scene for a few seconds to get an idea of how the render will look at the end is a good idea. You can always press `Reset` to return to changing settings.

---

### Camera

Next, open the `Camera` tab.

<div class="figure" id="figure-1-3-7">
  <p class="figure">
  Figure 1.3.7: The Camera tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/camera.png">
      <img class="figure" src="../../img/getting_started/render/camera.png" alt="Camera tab">
    </a>
  </div> 
</div>

Click the `Position & Orientation` dropdown to expand it. Unfortunately, you cannot simply copy the values taken from the Minecraft debug screen. A few adjustments must be made first, because there are some differences that must be accounted for. Below is a set of conversions:

```
Chunky Camera X = Minecraft X
Chunky Camera Y = Minecraft Y + 1.62
Chunky Camera Z = Minecraft Z

Chunky Camera Yaw = 90 - Minecraft Yaw
Camera Pitch = Minecraft Pitch - 90
```

Using the above conversions with our example results in the following values:

> Chunky Camera X = 32.2 ; Chunky Camera Y = 73.32 ; Z = -232.7 ; Yaw = 22.5 ; Pitch = -81.8

Enter the X, Y, and Z coordinates for the camera into the three text boxes on the `Position` row, pressing the Enter key after each one. Do the same with the Camera pitch and yaw values, but place them into the first two text boxes of the `Orientation` row, pressing the Enter key after each one. If `Load entities > Players` in the [`Scene`](../../reference/user_interface/render_controls/scene) tab was enabled when you clicked `Load selected chunks`, then the camera may clip into the player after you enter the values, as shown in [Figure 1.3.8](#figure-1-3-8).

<div class="figure" id="figure-1-3-8">
  <p class="figure">
  Figure 1.3.8: Camera clipping into player
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/camera_ps_imported_player.png">
      <img class="figure" src="../../img/getting_started/render/camera_ps_imported_player.png"   alt="Camera clipping into player">
    </a>
  </div>
</div>

To remove the player, open the [`Entities`](../../reference/user_interface/render_controls/entities) tab, select the player which the camera is clipping into (likely the first and only one on the list), and then press the `-` button.

<div class="figure" id="figure-1-3-9">
  <p class="figure">
  Figure 1.3.9: Player removed from the scene
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/camera_ps_imported.png">
      <img class="figure" src="../../img/getting_started/render/camera_ps_imported.png" alt="Player removed from the scene">
    </a>
  </div>
</div>

The default Field of View (FoV) for Minecraft is 70 degrees vertical. Assuming a 16:9 aspect ratio for both Minecraft and the Chunky render canvas resolution, the camera view with the default Chunky FoV of 70 degrees and the `Standard` projection mode should match the view in Mincraft.

!!! info "Dynamic FoV"
      If dynamic FoV is enabled in Minecraft, flying in Minecraft will increase the FoV. Disable dynamic FoV in Minecraft by setting `FOV Effects` in `Video Settings` to 0% to get the same FoV as in Chunky, assuming both FoV settings match.

---

### Lighting

Open the [`Lighting`](../../reference/user_interface/render_controls/lighting) tab.

<div class="figure" id="figure-1-3-10">
  <p class="figure">
  Figure 1.3.10: The Lighting tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/lighting.png">
      <img class="figure" src="../../img/getting_started/render/lighting.png" alt="Lighting tab">
    </a>
  </div>
</div>

Here you can adjust the amount of light the Sky, Emitters (torches, glowstone, etc.), and Sun produce. The default values should be perfect for daytime renders. Adjusting the Sun azimuth (yaw/rotation) and altitude (height) can change the lighting of the scene dramatically.

For this example, I will simply set the sun altitude to *25*.

> Emitters can *significantly* increase render times, and often require a much higher SPP to look smooth! Not rendering long enough will leave much noise, or "fireflies".

---

### Sky and Fog

Open the [`Sky & Fog`](../../reference/user_interface/render_controls/sky_and_fog) tab.

<div class="figure" id="figure-1-3-11">
  <p class="figure">
  Figure 1.3.11: The Sky & Fog tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/sky_fog.png">
      <img class="figure" src="../../img/getting_started/render/sky_fog.png" alt="Sky & Fog tab">
    </a>
  </div>
</div>

There is not too much to explain here. The `Sky mode` setting lets you chose between a simulated sky, solid color, color gradient, and Skymaps/cubes. `Cloud X, Y, and Z` control the location of the clouds, and `Cloud size` controls the size of the clouds, if they are enabled using `Enable clouds`. `Fog density` controls the thickness of the fog; set it to *0* to disable it. There is an example fog density listed as a guide. Fog produces much noise, so expect longer render times.

---

### Water

Open the [`Water`](../../reference/user_interface/render_controls/water) tab.

<div class="figure" id="figure-1-3-12">
  <p class="figure">
  Figure 1.3.12: The Water tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/water.png">
      <img class="figure" src="../../img/getting_started/render/water.png" alt="Water tab">
    </a>
  </div>
</div>

By default, the water will have a slight wave effect applied to it. You can disable it by enabling `Still water`. The `Water visibility` setting affects how far underwater you can see. The `Water opacity` setting controls how transparent the surface of the water is. Setting it to *0* makes the water clear, and setting it to *1* makes the water a solid color. By default, water color is biome-tinted, but you can override this by enabling `Use custom water color`.

---

### Entities

Adjust whatever you want in the entity tab to your liking. Press `-` to remove the selected entity from the render, and press `+` to add new entities.

> Entities usually have a minimal effect on render times.

---

### Materials & Postprocessing tabs

These tabs shall not be covered in this guide. Explore and experiment on your own.

---

### Advanced

Open the [`Advanced`](../../reference/user_interface/render_controls/advanced) tab.

<div class="figure" id="figure-1-3-13">
  <p class="figure">
  Figure 1.3.13: The Advanced tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/render/advanced.png">
      <img class="figure" src="../../img/getting_started/render/advanced.png" alt="Advanced tab">
    </a>
  </div>
</div>

Adjust the `CPU utilization` and `Render threads` as you see fit. Chunky renders solely using the CPU, though a [GPU rendering plugin](../../plugins/plugin_list#chunkycl-plugin) is in development.

> If you plan to use your PC while it is rendering or have a weaker computer, then reduce the `CPU utilization` or the `Render threads` as you see fit. Typically, reducing the number of threads that Chunky uses provides much more control over actual system usage. Be aware that reduced CPU load and fewer threads can significantly increase render times!

Set `Ray Depth` to whatever you want. A value anywhere from 3 to 8 is usually good enough for most scenes. Increasing ray depth increases render times but improves accuracy and render quality; a balance is required.

Enable `Shutdown computer when render completes` if you want your computer to shut down after the target SPP has been reached.

> If you are using Linux, then this option will have no effect unless you allow the `shutdown` command to run without needing `sudo`, since the `shutdown` command requires `sudo` permissions by default. For obvious reasons, Chunky won't store your sudo password for when it's time to execute the command. You can find a guide for allowing the shutdown command to run without `sudo` on the internet fairly easily.

You may wish to change the image `Output mode` here too.

---

## Just before we render

Set the target SPP to whatever you want.

> SPP stands for Samples Per Pixel. Lower target SPP values will be reached sooner, but images rendered to lower SPP values may have more noise/grain/fireflies. A higher target SPP value will take longer to render to, but the image will be less noisy.

Typically, 32-1024 SPP is good for daylight renders without emitters (torches, lava, glowstone, etc.) enabled. For daylight renders with emitters, 4096-16384 SPP is better. For night-time renders or indoor renders with emitters, 16384 SPP or more is required to yield a sufficiently noise-free image.

### Save the scene

<div class="figure" id="figure-1-3-14">
  <p class="figure">
  Figure 1.3.14: Scene name, save, and load controls
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/user_interface/save_load_buttons.png">
      <img class="figure" src="../../img/user_interface/save_load_buttons.png" alt="Scene name, save,   and load controls">
    </a>
  </div>
</div>

In the top left of the Chunky window, enter a more reasonable scene name in the `Scene` text box. Then click the Save button, which is marked with a blue disk icon. To load a scene, click on the Load scene button, which is marked with a blue disk icon with a green arrow.

---

## Render

When you are ready, click `Start`, and wait for your beautiful image to be produced!

> This could take anywhere between two minutes and two years. Sit tight!

Should you need to stop at any point, click `Pause`, wait for CPU usage to dip down to idle, and then click the `Save` button. Wait for Chunky to finish saving the scene. Then it is safe to close Chunky. Failure to do so can lead to loss of render progress if not saving dumps frequently.

---

## Profit!

You can use either `Save current frame` <!-- Change these upon release of 2.5.0 --> or `Copy current frame` at any point during the render progress to get your render. If the target SPP has been reached, then you can find the finished render in (assuming default locations):

- Windows: `C:\Users\<Your_User_Name>\.chunky\scenes\<scene_name>\snapshots`

- Linux: `~/.chunky/scenes/<scene_name>/snapshots`

Alternatively, on the left control panel, inside the `Scene` tab, click `Open Scene Directory`.

[Figure 1.3.15](#figure-1-3-15) shows the finished product of this guide with a few minor tweaks to the sky simulation, the addition of fog, changes to the lighting intensities and color, and changes to the water.

<div class="figure" id="figure-1-3-15">
  <p class="figure">
  Figure 1.3.15: The finished render
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/first_render.png">
      <img class="figure" src="../../img/getting_started/first_render.png" alt="Finished render">
    </a>
  </div>
</div>


---

> This guide was adapted and updated from a guide by EmeraldSnorlax.

<!-- EOF -->

--8<-- "includes/abbreviations.md"
