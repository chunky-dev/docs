# Next Event Estimation (NEE)

<!-- TODO: Explain how NEE works -->

## Sunlight Sampling

Scenes rendered with sunlight enabled do not typically require to be rendered to a high SPP count to yield a nice image. This is due to Sunlight sampling, otherwise known by its more technical name, Next Event Estimation (NEE), which is enabled by default. With every ray intersection, the sun is sampled, due to NEE adding its contribution to the ray without the need for it to be hit directly as in random sampling. [Figure 1](#figure-1) shows the effect that sun sampling has on convergence speed for sunlit scenes.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: Sun sampling reduces noise in much fewer samples than if it were disabled</p>
  <div class="figuregridcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/spp_comparison_sss_fast.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/spp_comparison_sss_fast.png" alt="Sunlight sampling enabled">
    </a>
    <a href="../../../img/reference/introduction/next_event_estimation/spp_comparison_sss_off.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/spp_comparison_sss_off.png" alt="Sunlight sampling disabled">
    </a>
  </div>
</div>

However, Sunlight sampling has the drawback of being unable to produce certain visual effects, caustics and reflections under and above water being some of them. [Figure 2](#figure-2) shows the effect that disabling Sunlight sampling has on water.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Disabling Sunlight sampling allows rendering of certain visual effects, such as caustics.</p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/no_caustics.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/no_caustics.png" alt="No caustics with Sunlight sampling enabled">
    </a>
    <hr>
    <a href="../../../img/reference/introduction/next_event_estimation/caustics.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/caustics.png" alt="Caustics with Sunlight sampling disabled">
    </a>
  </div>
</div>

Sunlight sampling can be disabled in part or in whole by using [2.5.0 snapshots](../../user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) and setting [<samp>Sun Sampling Strategy</samp>]{% if extra.chunky < 2_05_00 %}(../../../snapshot/reference/user_interface/chunky/render_controls/lighting#sun-controls){% endif %}{% if extra.chunky >= 2_05_00 %}(../../user_interface/chunky/render_controls/lighting#sun-controls){% endif %} to <samp>HIGH_QUALITY</samp> or <samp>OFF</samp>, respectively. However, as previously stated, disabling Sunlight sampling in sunlit scenes will require very many more samples to converge than sunlit scenes rendered with Sunlight sampling enabled.

## Emitter Sampling Strategy (ESS)

Scenes lit by emitters (torches, lava, glowstone, etc.) require many more samples to converge than scenes lit by the sun and sky do, since NEE is not enabled for emitters by default, due to reasons explained in the paragraphs following. Instead, the ray must intersect the emitter directly for it to contribute lighting to the scene, which has a lower probability of occurring, especially with smaller emitters, such as torches.

Emitter Sampling Strategy (ESS) enables an "optimized" NEE, similar to the sampling which the sun uses, and, in theory, should lead to faster convergence.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: Scenes rendered with ESS converge in fewer samples</p>
  <div class="figuregridcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/spp_comparison_ess_none.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/spp_comparison_ess_none.png" alt="ESS: Off">
    </a>
    <a href="../../../img/reference/introduction/next_event_estimation/spp_comparison_ess_all.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/spp_comparison_ess_all.png" alt="ESS: On">
    </a>
  </div>
</div>

Whereas there is only a single sun present in the scene, there can be multiple emitters, some of which at distances where they will not contribute much to the pixel being sampled. Sampling every emitter in the scene would require much more computing power, so to counter that, Chunky uses the emittergrid, which divides the world into an array of cubic sections, called cells. The emittergrid records to each cell the locations of every emitter within that cell and the cells adjacent, and saves them to that cell's entry in the emittergrid file. The reason Chunky records emitter location data of emitters in adjacent cells is that an emitter near the edge of a cell will be able to cast noticeably-bright light into the adjacent cell.

When a ray intersects the scene, Chunky reads from the emittergrid the emitter location data for the entry of the cell in which the ray intersected the scene, and samples the emitters recorded for that cell. Every emitter at cellSize ([<samp>Emitter grid size</samp>](../../user_interface/chunky/render_controls/advanced)) or fewer blocks away from the ray intersection point will always be sampled. The maximum distance an emitter can be sampled from is `2 * cellSize - 1` blocks away from the intersection point, which happens if the ray intersects the scene near the edge of a cell. This way, the cost of processing the additional samples is minimized compared to if Chunky sampled every emitter.

[Figure 4](#figure-4) shows a simplified diagram of how ESS works. The white dot is the point where the ray intersected the scene. Only emitters within the green cell, in which the ray intersected the scene, and the blue cells, which are the adjacent cells, are sampled. The emitters within the red cells are "too far away" to contribute much lighting, and are not sampled.

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: Emittergrid diagram</p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_diagram.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_diagram.png" alt="Emittergrid diagram">
    </a>
  </div>
</div>

Chunky has {% if extra.chunky < 2_05_00 %}three{% endif %}{% if extra.chunky >= 2_05_00 %}four{% endif %} [ESS settings](../../user_interface/chunky/render_controls/lighting#emitter-controls). These are <samp>NONE</samp>, <samp>ONE</samp>, {% if extra.chunky >= 2_05_00 %}<samp>ONE_BLOCK</samp>,{% endif %} and <samp>ALL</samp>. With <samp>ESS: NONE</samp>, ESS is disabled. With <samp>ESS: ONE</samp>, only a single randomly-selected emitter within the cell of intersection and its adjacent cells is sampled per ray intersection. {% if extra.chunky >= 2_05_00 %}With <samp>ESS: ONE_BLOCK</samp>, every face of a randomly-selected emitter within the cell of intersection and its adjacent cells is sampled per ray intersection. {% endif %}With <samp>ESS: ALL</samp>, every emitter within the cell of intersection and its adjacent cells is sampled per ray intersection. Sampling emitters increases the computing cost per sample, but can reduce the total number of SPP required to converge. Render speeds vary from scene to scene, but generally, <samp>ESS: ONE</samp> is slightly slower per sample than <samp>ESS: NONE</samp>, but potentially faster to converge. {% if extra.chunky >= 2_05_00 %}<samp>ESS:ONE_BLOCK</samp> is even slower per sample than <samp>ESS: NONE</samp>, but potentially even faster to converge. {% endif %}<samp>ESS: ALL</samp> is the slowest per sample, but potentially fastest to converge.

The following renders demonstrate the effects of ESS. Each was rendered for approximately the same amount of time. {% if extra.chunky >= 2_05_00 %}[<samp>Prevent normal emitter when using emitter sampling</samp>](../../user_interface/chunky/render_controls/advanced) was enabled to make the effects of ESS more apparent.{% endif %}

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-5">
  <p class="figure">Figure 5: Scene lit by emitters rendered to 610 SPP with <samp>ESS: NONE</samp></p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_none-stable.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_none-stable.png" alt="Scene with ESS: NONE">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-6">
  <p class="figure">Figure 6: Scene lit by emitters rendered to 460 SPP with <samp>ESS: ONE</samp></p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_one-stable.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_one-stable.png" alt="Scene with ESS: ONE">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-7">
  <p class="figure">Figure 7: Scene lit by emitters rendered to 45 SPP with <samp>ESS: ALL</samp></p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_all-stable.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_all-stable.png" alt="Scene with ESS: ALL">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-5">
  <p class="figure">Figure 9: Scene lit by emitters rendered to 64 SPP with <samp>ESS: NONE</samp></p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_none-snapshot.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_none-snapshot.png" alt="Scene with ESS: NONE in 2.5.0">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-6">
  <p class="figure">Figure 10: Scene lit by emitters rendered to 42 SPP with <samp>ESS: ONE</samp></p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_one-snapshot.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_one-snapshot.png" alt="Scene with ESS: ONE in 2.5.0">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-7">
  <p class="figure">Figure 11: Scene lit by emitters rendered to 18 SPP with <samp>ESS: ONE_BLOCK</samp></p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_one_block-snapshot.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_one_block-snapshot.png" alt="Scene with ESS: ONE_BLOCK in 2.5.0">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-8">
  <p class="figure">Figure 12: Scene lit by emitters rendered to 6 SPP with <samp>ESS: ALL</samp></p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_all-snapshot.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_all-snapshot.png" alt="Scene with ESS: ALL in 2.5.0">
    </a>
  </div>
</div>

{% endif %}

<samp>ESS: NONE</samp> is the quickest to render, but has the most noise. <samp>ESS: ONE</samp> is somewhat slower, but noise is reduced. {% if extra.chunky >= 2_05_00 %}<samp>ESS: ONE_BLOCK</samp> is even slower, but noise is further reduced. {% endif %}<samp>ESS: ALL</samp> is by far the slowest to render, but it results in the least noise.

### ESS Bugs

{% if extra.chunky < 2_05_00 %}

When ESS is enabled, it can increase the brightness of emitter lighting. This is apparent to a lesser extent when using <samp>ESS: ONE</samp>, as shown in [Figure 6](#figure-6), and can be very apparent when using <samp>ESS: ALL</samp>, as shown in [Figure 7](#figure-7). Reduce either the [<samp>Emitter intensity</samp>](../../user_interface/chunky/render_controls/lighting), the [<samp>Exposure</samp>](../../user_interface/chunky/render_controls/postprocessing), or material [<samp>Emittance</samp>](../../user_interface/chunky/render_controls/materials) levels to compensate. This is a known bug, and was fixed in the [2.5.0 snapshots](../../user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings).

ESS also has the unfortunate problem of projecting the lighting as a ghost image of the texture of the emitter onto other surfaces. This is due to a bug, and it was fixed in the 2.5.0 snapshots.

<div class="figure" id="figure-8">
  <p class="figure">Figure 8: ESS ghost image lighting</p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/next_event_estimation/ess_ghost.png">
      <img class="figure" src="../../../img/reference/introduction/next_event_estimation/ess_ghost.png" alt="ESS ghost image lighting">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

ESS was improved in the 2.5.0 snapshots; however, it is still imperfect, so bugs still exist. When ESS is enabled, the lighting from the emitters is somewhat unrealistically projected compared to if it is disabled. Disabling [<samp>Prevent normal emitter when using emitter sampling</samp>](../../user_interface/chunky/render_controls/advanced#controls) can make the lighting more realistic, but the scene must be rendered for a longer period of time to reduce noise.

{% endif %}

--8<-- "includes/abbreviations.md"
