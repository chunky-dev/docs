# Render Controls - Advanced

---

The `Advanced` tab, which is the ninth tab in the left control panel in the [Chunky Stable release](../../../../getting_started/configuring_chunky_launcher#advanced-settings), and the tenth tab in the [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings), contains advanced controls for Chunky and the render.

<div class="figure" id="figure-3-2-20-1">
  <p class="figure">
  Figure 3.2.20.1: The Advanced tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/advanced_tab_2.4.x.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/advanced_tab_2.4.x.png" alt="Advanced tab">
    </a>
  </div>
</div>

---

## Controls

- `Render threads`: Changes the number of threads that Chunky should use for rendering. Chunky must be restarted for changes to take effect.

- `CPU utilization`: Attempts to change the maximum CPU usage of each render thread by adding sleep cycles to the rendering process. It is recommended to use `Render threads` for more predictable CPU usage scaling.

- `Ray depth`: Changes the maximum number of times a ray is allowed to bounce around the scene before being terminated or exiting into the sky. Greater values increase render accuracy and render quality at the cost of rendering performance. Typically, values from *3* to *6* are enough for outdoor scenes, while indoor scenes benefit from greater values, such as *10*.

- `Merge render dump`: Opens a file explorer dialog box to browse for a scene.dump file to merge the render progress contained therein with the render progress of the currently-loaded scene, even if there is no progress. The resolution of the render dump must match the resolution of the render canvas of the current scene. Useful for multi-PC rendering.[^1]

- `Shutdown computer when render completes`: Changes whether the computer shuts down after the target SPP has been reached and the scene has been saved.[^2]

- `Fast fog`: Changes the formula for fog rendering, which can improve rendering performance at the cost of fog quality. This decrease in fog quality is usually only noticeable when fog is viewed through alpha (transparent) textures.

- `Sky cache resolution`: Changes the resolution of the simulated sky, when `Sky mode` in the [`Sky & Fog`](../sky_and_fog#sky-mode-settings) tab is set to `Simulated`. Larger values increase the accuracy of the simulation at the cost of render performance.

- `Current animation time`: Changes the virtual time, measured in seconds, in the scene, which causes animated textures to change according to its value. Positive values beyond the range of the slider can be entered into the associated input field.

- `Output mode`: Dropdown menu to select the image format in which Chunky should save the render once the target SPP is reached.

    - `PFM`: Sets Chunky to save the render in PFM (Portable FloatMap) format. This format is a "RAW" format, with 96 bits per pixel (HDR). It is mainly used in conjunction with the [Denoiser plugin](../../../../plugins/plugin_list#denoising-plugin) and OIDN.
    
    - `PNG`: Sets Chunky to save the render in PNG (Portable Network Graphics) format. This format is a lossless format, with 24 bits per pixel (SDR). It often maintains original quality with relatively small file size and is often used on websites.

    - `TIFF_32`: Sets Chunky to save the render in TIFF_32 format. This format is a "RAW" format, with 96 bits per pixel (HDR).

Other output formats can be added to Chunky using [plugins](../../../../plugins/chunky_plugins).

- `Octree implementation`: Dropdown menu to select the type of [octree](../../../technical/scene_format#octree) used to store world block data for the scene. Chunks must be reloaded for changes to take effect.

    - `BIGPACKED`: Sets Chunky to use a BIGPACKED octree to store world block data for the scene. `BIGPACKED` is not as memory-efficient as `PACKED`, requiring twice as much memory as `PACKED`, but there is no limitation on its size.

    - `NODE`: Sets Chunky to use a NODE octree to store world block data for the scene. `NODE` is the legacy octree implementation; it is not memory-efficient, but there is no limitation on its size.

    - `PACKED`: Sets Chunky to use a PACKED octree to store world block data for the scene. `PACKED` is the default octree implementation; it is more memory-efficient than both `NODE` and `BIGPACKED`, but it is limited to a maximum octree size of 2^31 nodes, or about 400,000 chunks.

Other octree implementations can be added to Chunky using [plugins](../../../../plugins/chunky_plugins).

- `BVH build method`: Dropdown menu to select the method used to build the [BVH](../../../technical/scene_format#octree) of the scene, which contains the "entities" in the scene. Chunks must be reloaded for changes to take effect.

    - `SAH_MA`: Sets Chunky to use the SAH_MA method to build the BVH of the scene. `SAH_MA` is the default BVH build method; it is fast and nearly optimal.

    - `SAH`: Sets Chunky to use the SAH method to build the BVH of the scene. `SAH` is a slow and non-optimal build method, as well as a bugged one.

    - `MIDPOINT`: Sets Chunky to use the `MIDPOINT` method to build the BVH of the scene. `MIDPOINT` is a fast but not optimal build method.

Other BVH build methods can be added to Chunky using [plugins](../../../../plugins/chunky_plugins).

- `Emitter grid size`: Changes the size of the cells of the [emittergrid](../../../introduction/next_event_estimation#emitter-sampling-strategy-ess), measured in meters (blocks), when [Emitter Sampling Strategy](../lighting#controls) is enabled. Smaller values can increase rendering performance, but can lead to light cut-off.

If `Emitter Sampling Strategy` is enabled for the currently-loaded scene when the `Emitter grid size` is changed, then the chunks must be reloaded for changes to take effect.

- `Prevent normal emitter when using emitter sampling`: Disables lighting contribution from emitters via random sampling when `Emitter Sampling Strategy` is enabled. This can further reduce noise when ESS is enabled. However, reflections of emitters are not rendered properly. These effects are shown in [Figure 3.2.20.2](#figure-3-2-20-2).

- `Renderer`: Dropdown menu to select the renderer that Chunky should use to render the scene when the `Start` control is used.

    - `PathTracingRenderer`: Sets Chunky to use the [path tracing renderer](../../../introduction/path_tracing), which uses [random sampling](../../../introduction/samples_and_noise) to render the scene.

Other renderers can be added to Chunky using [plugins](../../../../plugins/chunky_plugins).

- `Preview Renderer`: Dropdown menu to select the renderer that Chunky should use to render the preview of the scene before the `Start` control is used.

    - `Preview Renderer`: Sets Chunky to use the preview renderer, which renders a basic preview of the scene to 2 SPP.

Other preview renderers can be added to Chunky using [plugins](../../../../plugins/chunky_plugins).

<div class="figure" id="figure-3-2-20-2">
  <p class="figure">
  Figure 3.2.20.2: Effect of the 'Prevent normal emitter when using emitter sampling' control
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/advanced/prevent_normal_emitter.png">
      <img class="figure" src="../../../../img/examples/render_controls/advanced/prevent_normal_emitter.png" alt="Effect of the 'Prevent normal emitter when using emitter sampling' control">
    </a>
  </div>
</div>

---

### 2.5.0 Snapshot Controls

The `Advanced` tab was improved in [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

<div class="figure" id="figure-3-2-20-3">
  <p class="figure">
  Figure 3.2.20.3: The Advanced tab in Chunky 2.5.0 snapshots
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/advanced_tab_2.5.0.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/advanced_tab_2.5.0.png" alt="Advanced tab in Chunky 2.5.0 snapshots">
    </a>
  </div>
</div>

- `Hide unknown blocks`:Changes whether the question marks that represent blocks unknown to Chunky are visible.

- `BiomeStructure Implementation`: Dropdown menu to select the type of BiomeStructure implementation used to store world biome data for the scene.

    - `TRIVIAL_3D`: Sets Chunky to use the TRIVIAL_3D implementation to store world biome data for the scene. `TRIVIAL_3D` is a 3D biome format that uses a packed float array to store the biomes. Note that if biome blending is enabled, chunk loading will require much more time to complete if this implementation is used.

    - `WORLD_TEXTURE_2D`: Sets Chunky to use the WORLD_TEXTURE_2D implementation to store world biome data for the scene. `WORLD_TEXTURE_2D` is a 2D biome format that uses de-duplicated bitmaps for each chunk.

    - `TRIVIAL_2D`: Sets Chunky to use the TRIVIAL_2D implementation to store world bime data for the scene. `TRIVIAL_2D` is a 2D biome format that uses a packed float array to store the biomes.

- `Show launcher when starting Chunky`: Changes whether the Chunky launcher is shown when starting Chunky. It is recommended that this remain enabled.

[^1]: The value of the `Target SPP` should be greater than the sum of the current SPP of the currently-loaded scene and the current SPP of the render dump to be merged to prevent unexpected behavior.

[^2]: On Linux, this control will have no effect unless the `shutdown` command, which, by default, requires `sudo` to be run, is allowed to be run without `sudo`.

--8<-- "includes/abbreviations.md"
