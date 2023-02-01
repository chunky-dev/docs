# Render Controls - Advanced

The <samp>Advanced</samp> tab contains advanced controls for Chunky and the render.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Advanced</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/advanced/advanced_tab-stable.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/advanced/advanced_tab-stable.png" alt="Advanced tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Advanced</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/advanced/advanced_tab-snapshot.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/advanced/advanced_tab-snapshot.png" alt="Advanced tab">
    </a>
  </div>
</div>

{% endif %}

- <samp>Render threads</samp>: Changes the number of threads that Chunky should use for rendering. Chunky must be restarted for changes to take effect.

- <samp>CPU utilization</samp>: Attempts to change the maximum CPU usage of each render thread by adding sleep cycles to the rendering process. It is recommended to use <samp>Render threads</samp> for more predictable CPU usage scaling.

- <samp>Ray depth</samp>: Changes the maximum number of times a ray is allowed to bounce around the scene before being terminated or exiting into the sky. Greater values increase render accuracy and render quality at the cost of rendering performance. Typically, values from *3* to *6* are enough for outdoor scenes, while indoor scenes benefit from greater values, such as *10*.[^1]

- <samp>Merge render dump</samp>: Opens a file explorer dialog box to browse for {% if extra.chunky < 2_05_00 %}a "scene.dump" file {% endif %}{% if extra.chunky >= 2_05_00 %}one or more "scene.dump" files {% endif %}to merge the render progress contained therein with the render progress of the currently-loaded scene, even if there is no progress. The resolution of the render dump must match the resolution of the render canvas of the current scene. This function is useful for multi-PC rendering.[^2]

- <samp>Shutdown computer when render completes</samp>: Changes whether the computer shuts down after the target SPP has been reached and the scene has been saved.[^3]

- <samp>Fast fog</samp>: Changes the formula for fog rendering, which can improve rendering performance at the cost of fog quality. This decrease in fog quality is usually only noticeable when fog is viewed through alpha (transparent) textures.

- <samp>Sky cache resolution</samp>: Changes the resolution of the simulated sky, when the <samp>Sky mode</samp> in the [<samp>Sky & Fog</samp>](../sky_and_fog#sky-mode-settings) tab is set to <samp>Simulated</samp>. Larger values increase the accuracy of the simulation at the cost of render performance.

- <samp>Current animation time</samp>: Changes the virtual time, measured in seconds, in the scene, which causes animated textures to change according to its value. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Output mode</samp>: Dropdown menu to select the image format in which Chunky should save the render once the target SPP is reached.

    - <samp>PFM</samp>: Sets Chunky to save the render in PFM (Portable FloatMap) format. This format is a *RAW* format, with 96 bits per pixel (HDR). It is mainly used in conjunction with the [Denoiser plugin](../../../../../plugins/plugin_list#denoising-plugin) and OIDN.
    
    - <samp>PNG</samp>: Sets Chunky to save the render in PNG (Portable Network Graphics) format. This format is a lossless format, with 24 bits per pixel (SDR). It often maintains original quality with relatively small file size and is often used on websites.

    - <samp>TIFF_32</samp>: Sets Chunky to save the render in TIFF_32 format. This format is a *RAW* format, with 96 bits per pixel (HDR).

Other output formats can be added to Chunky using [plugins](../../../../../plugins/chunky_plugins).

{% if extra.chunky >= 2_05_00 %}

- <samp>Hide unknown blocks</samp>: Changes whether the question marks that represent blocks unknown to Chunky are visible.

{% endif %}

- <samp>Octree implementation</samp>: Dropdown menu to select the type of [octree](../../../../technical/scene_format#octree) used to store world block data for the scene. Chunks must be reloaded for changes to take effect.

    - <samp>BIGPACKED</samp>: Sets Chunky to use a BIGPACKED octree to store world block data for the scene. BIGPACKED is not as memory-efficient as PACKED, requiring twice as much memory as PACKED, but there is no limitation on its size.

    - <samp>NODE</samp>: Sets Chunky to use a NODE octree to store world block data for the scene. NODE is the legacy octree implementation; it is not memory-efficient, but there is no limitation on its size.

    - <samp>PACKED</samp>: Sets Chunky to use a PACKED octree to store world block data for the scene. PACKED is the default octree implementation; it is more memory-efficient than both NODE and BIGPACKED, but it is limited to a maximum octree size of 2<sup>31</sup> nodes, or about 400,000 chunks.

Other octree implementations can be added to Chunky using [plugins](../../../../../plugins/chunky_plugins).

- <samp>BVH build method</samp>: Dropdown menu to select the method used to build the [BVH](../../../../introduction/path_tracing#bounding-volume-hierarchy-bvh) of the scene, which contains the "entities" in the scene. Chunks must be reloaded for changes to take effect.

    - <samp>SAH_MA</samp>: Sets Chunky to use the SAH_MA method to build the BVH of the scene. SAH_MA is the default BVH build method; it is fast and nearly optimal.

    - <samp>SAH</samp>: Sets Chunky to use the SAH method to build the BVH of the scene. SAH is a slow and non-optimal build method, as well as a bugged one.

    - <samp>MIDPOINT</samp>: Sets Chunky to use the MIDPOINT method to build the BVH of the scene. MIDPOINT is a fast but not optimal build method.

Other BVH build methods can be added to Chunky using [plugins](../../../../../plugins/chunky_plugins).

{% if extra.chunky >= 2_05_00 %}

- <samp>BiomeStructure Implementation</samp>: Dropdown menu to select the type of BiomeStructure implementation used to store world biome data for the scene.

    - <samp>TRIVIAL_3D</samp>: Sets Chunky to use the TRIVIAL_3D implementation to store world biome data for the scene. TRIVIAL_3D is a 3D biome format that uses a packed float array to store the biomes. Note that if biome blending is enabled, chunk loading will require much more time to complete if this implementation is used.

    - <samp>WORLD_TEXTURE_2D</samp>: Sets Chunky to use the WORLD_TEXTURE_2D implementation to store world biome data for the scene. WORLD_TEXTURE_2D is a 2D biome format that uses de-duplicated bitmaps for each chunk.

    - <samp>TRIVIAL_2D</samp>: Sets Chunky to use the TRIVIAL_2D implementation to store world bime data for the scene. TRIVIAL_2D is a 2D biome format that uses a packed float array to store the biomes.

{% endif %}

- <samp>Emitter grid size</samp>: Changes the size of the cells of the [emittergrid](../../../../introduction/next_event_estimation#emitter-sampling-strategy-ess), measured in meters (blocks), when [Emitter Sampling Strategy](../lighting#emitter-controls) is enabled. Smaller values can increase rendering performance, but can lead to light cut-off.

If <samp>Emitter Sampling Strategy</samp> is enabled for the currently-loaded scene when the <samp>Emitter grid size</samp> is changed, then the chunks must be reloaded for changes to take effect.

- <samp>Prevent normal emitter when using emitter sampling</samp>: Disables lighting contribution from emitters via random sampling when <samp>Emitter Sampling Strategy</samp> is enabled. This can further reduce noise when ESS is enabled. However, reflections of emitters are not rendered properly. These effects are shown in [Figure 2](#figure-2).

- <samp>Renderer</samp>: Dropdown menu to select the renderer that Chunky should use to render the scene when the <samp>Start</samp> control is used.

    - <samp>PathTracingRenderer</samp>: Sets Chunky to use the [path tracing renderer](../../../../introduction/path_tracing), which uses [random sampling](../../../../introduction/samples_and_noise) to render the scene.

Other renderers can be added to Chunky using [plugins](../../../../../plugins/chunky_plugins).

- <samp>Preview Renderer</samp>: Dropdown menu to select the renderer that Chunky should use to render the preview of the scene before the <samp>Start</samp> control is used.

    - <samp>PreviewRenderer</samp>: Sets Chunky to use the preview renderer, which renders a basic preview of the scene.

Other preview renderers can be added to Chunky using [plugins](../../../../../plugins/chunky_plugins).

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Effect of the <samp>Prevent normal emitter when using emitter sampling</samp> control</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/advanced/examples/prevent_normal_emitter_when_using_emitter_sampling.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/advanced/examples/prevent_normal_emitter_when_using_emitter_sampling.png" alt="Effect of the 'Prevent normal emitter when using emitter sampling' control">
    </a>
  </div>
</div>

[^1]: It should be noted that some features break at different ray depths. `minecraft:light` does not emit light below <samp style="font-size: 1em;">Ray depth</samp>: *5* (issue #1477). <samp style="font-size: 1em;">ESS: NONE</samp> does not function below <samp  style="font-size: 1em;">Ray depth</samp>: *3* (although blocks will still glow at <samp style="font-size: 1em;">Ray depth</samp>: *2*). Sunlight (<samp style="font-size: 1em;">Sun Sampling Strategy: OFF</samp>, <samp style="font-size: 1em;">FAST</samp>, and <samp style="font-size: 1em;">HIGH_QUALITY</samp>), sky light, and <samp style="font-size: 1em;">Emitter Sampling Strategy</samp>: (<samp style="font-size: 1em;">ONE</samp>, <samp style="font-size: 1em;">ONE_BLOCK</samp>, and <samp style="font-size: 1em;">ALL</samp>) do not function below <samp style="font-size: 1em;">Ray depth</samp>: *2*, although the sky texture is still visible at <samp style="font-size: 1em;">Ray depth</samp>: *1*.

[^2]: The value of the <samp>Target SPP</samp> should be greater than the sum of the current SPP of the currently-loaded scene and the current SPP of the render dump to be merged to prevent unexpected behavior.

[^3]: On Linux, this control will have no effect unless the `shutdown` command, which, by default, requires `sudo` to be run, is allowed to be run without `sudo`.

--8<-- "includes/abbreviations.md"
