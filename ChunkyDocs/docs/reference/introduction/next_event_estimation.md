# Next Event Estimation (NEE)

---

<!-- TODO: Explain how NEE works -->

## Sunlight Sampling

Scenes rendered with sunlight enabled do not typically require to be rendered to a high SPP count to yield a nice image. This is due to Sunlight sampling, otherwise known by its more technical name, Next Event Estimation (NEE), which is enabled by default. With every ray intersection, the sun is sampled, due to NEE adding its contribution to the ray without the need for it to be hit directly as in random sampling. [Figure 3.1.3.1](#figure-3-1-3-1) shows the effect that sun sampling has on convergence speed for sunlit scenes.

<div class="figure" id="figure-3-1-3-1">
  <p class="figure">
  Figure 3.1.3.1: Sun sampling reduces noise in much fewer samples than if it were disabled
  </p>
  <div class="figuregridcontainer">
    <a href="../../../img/examples/introduction/spp_comparison_sss_fast.png">
      <img class="figure" src="../../../img/examples/introduction/spp_comparison_sss_fast.png" alt="Sunlight sampling enabled">
    </a>
    <a href="../../../img/examples/introduction/spp_comparison_sss_off.png">
      <img class="figure" src="../../../img/examples/introduction/spp_comparison_sss_off.png" alt="Sunlight sampling disabled">
    </a>
  </div>
</div>

However, Sunlight sampling has the drawback of being unable to produce certain visual effects, caustics and reflections under and above water being some of them. [Figure 3.1.3.2](#figure-3-1-3-2) shows the effect that disabling Sunlight sampling has on water.

<div class="figure" id="figure-3-1-3-2">
  <p class="figure">
  Figure 3.1.3.2: Disabling Sunlight sampling allows rendering of certain visual effects, such as caustics.
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/no_caustics.png">
      <img class="figure" src="../../../img/examples/introduction/no_caustics.png" alt="No caustics with Sunlight sampling enabled">
    </a>
    <hr>
    <a href="../../../img/examples/introduction/caustics.png">
      <img class="figure" src="../../../img/examples/introduction/caustics.png" alt="Caustics with Sunlight sampling disabled">
    </a>
  </div>
</div>

Sunlight sampling can be disabled in part or in whole by using [2.5.0 snapshots](../../../getting_started/configuring_chunky_launcher#advanced-settings) and setting [`Sunlight Sampling Strategy`](../../user_interface/render_controls/lighting#250-snapshot-controls) to `HIGH_QUALITY` or `OFF`, respectively. However, as previously stated, disabling Sunlight sampling in sunlit scenes will require very many more samples to converge than sunlit scenes rendered with Sunlight sampling enabled.

---

## Emitter Sampling Strategy (ESS)

Scenes lit by emitters (torches, lava, glowstone, etc.) require many more samples to converge than scenes lit by the sun and sky do, since NEE is not enabled for emitters by default, due to reasons explained in the paragraphs following. Instead, the ray must intersect the emitter directly for it to contribute lighting to the scene, which has a lower probability of occurring, especially with smaller emitters, such as torches.

Emitter Sampling Strategy (ESS) enables an "optimized" NEE, similar to the sampling which the sun uses, and, in theory, should lead to faster convergence.

<div class="figure" id="figure-3-1-3-3">
  <p class="figure">
  Figure 3.1.3.3: Scenes rendered with ESS converge in fewer samples
  </p>
  <div class="figuregridcontainer">
    <a href="../../../img/examples/introduction/spp_comparison_ess_none.png">
      <img class="figure" src="../../../img/examples/introduction/spp_comparison_ess_none.png" alt="ESS: Off">
    </a>
    <a href="../../../img/examples/introduction/spp_comparison_ess_all.png">
      <img class="figure" src="../../../img/examples/introduction/spp_comparison_ess_all.png" alt="ESS: On">
    </a>
  </div>
</div>

Whereas there is only a single sun present in the scene, there can be multiple emitters, some of which at distances where they will not contribute much to the pixel being sampled. Sampling every emitter in the scene would require much more computing power, so to counter that, Chunky uses the emittergrid, which divides the world into an array of cubic sections, called cells. The emittergrid records to each cell the locations of every emitter within that cell and the cells adjacent, and saves them to that cell's entry in the emittergrid file. The reason Chunky records emitter location data of emitters in adjacent cells is that an emitter near the edge of a cell will be able to cast noticeably-bright light into the adjacent cell.

When a ray intersects the scene, Chunky reads from the emittergrid the emitter location data for the entry of the cell in which the ray intersected the scene, and samples the emitters recorded for that cell. Every emitter at [cellSize](../../user_interface/render_controls/advanced#controls) or fewer blocks away from the ray intersection point will always be sampled. The maximum distance an emitter can be sampled from is `2 * cellSize - 1` blocks away from the intersection point, which happens if the ray intersects the scene near the edge of a cell. This way, the cost of processing the additional samples is minimized compared to if Chunky sampled every emitter.

[Figure 3.1.3.4](#figure-3-1-3-4) shows a diagram of how ESS works. The white dot is the point where the ray intersected the scene. Only emitters within the green cell, in which the ray intersected the scene, and the blue cells, which are the adjacent cells, are sampled. The emitters within the red cells are "too far away" to contribute much lighting, and are not sampled.

<div class="figure" id="figure-3-1-3-4">
  <p class="figure">
  Figure 3.1.3.4: Emittergrid diagram
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_diagram.png">
      <img class="figure" src="../../../img/examples/introduction/ess_diagram.png" alt="Emittergrid diagram">
    </a>
  </div>
</div>

---

Chunky has three [ESS settings](../../user_interface/render_controls/lighting#controls). These are `NONE`, `ONE`, and `ALL`. With `ESS: NONE`, ESS is disabled. With `ESS: ONE`, only a single randomly-selected emitter within the cell of intersection and its adjacent cells is sampled per ray intersection. With `ESS: ALL`, every emitter within the cell of intersection and its adjacent cells is sampled per ray intersection. Sampling emitters increases the computing cost per sample, but can reduce the total number of SPP required to converge. Render speeds vary from scene to scene, but generally, `ESS: ONE` is slightly slower per sample than `ESS: NONE`, but potentially faster to converge. `ESS: ALL` is the slowest per sample, but potentially fastest to converge.

The following renders demonstrate the effects of ESS. Each was rendered for approximately the same amount of time.

<div class="figure" id="figure-3-1-3-5">
  <p class="figure">
  Figure 3.1.3.5: Scene lit by emitters rendered to 610 SPP with ESS: NONE
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_none.png">
      <img class="figure" src="../../../img/examples/introduction/ess_none.png" alt="Scene with ESS: NONE">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-1-3-6">
  <p class="figure">
  Figure 3.1.3.6: Scene lit by emitters rendered to 460 SPP with ESS: ONE
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_one.png">
      <img class="figure" src="../../../img/examples/introduction/ess_one.png" alt="Scene with ESS: ONE">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-1-3-7">
  <p class="figure">
  Figure 3.1.3.7: Scene lit by emitters rendered to 45 SPP with ESS: ALL
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_all.png">
      <img class="figure" src="../../../img/examples/introduction/ess_all.png" alt="Scene with ESS: ALL">
    </a>
  </div>
</div>

`ESS: NONE` is the quickest to render, but has the most noise. `ESS: ONE` is somewhat slower, but noise is reduced. `ESS: ALL` is by far the slowest to render, but it produces the least noise.

---

<h3>
ESS Bugs
</h3>

When ESS is enabled, it can increase the brightness of emitter lighting. This is apparent to a lesser extent when using `ESS: ONE`, as shown in [Figure 3.1.3.6](#figure-3-1-3-6), and can be very apparent when using `ESS: ALL`, as shown in [Figure 3.1.3.7](#figure-3-1-3-7). Reduce either the [`Emitter intensity`](../../user_interface/render_controls/lighting#controls), the [`Exposure`](../../user_interface/render_controls/postprocessing#controls), or material [emittance](../../user_interface/render_controls/materials#controls) levels to compensate. This is a known bug, and we need to fix some maths to solve it.

ESS also has the unfortunate problem of projecting the lighting as a ghost image of the texture of the emitter onto other surfaces. This is due to a bug, and it will be fixed in a future release.

<div class="figure" id="figure-3-1-3-8">
  <p class="figure">
  Figure 3.1.3.8: ESS ghost image lighting
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_ghost.png">
      <img class="figure" src="../../../img/examples/introduction/ess_ghost.png" alt="ESS ghost image lighting">
    </a>
  </div>
</div>

---

### 2.5.0 Snapshots

Emitter Sampling Strategy was improved in the [2.5.0 snapshots](../../../getting_started/configuring_chunky_launcher#advanced-settings), specifically in #1109. ESS no longer causes abnormally bright lighting on ESS: ONE or ESS: ALL, and ESS no longer projects the emitter lighting as a ghost image of the texture of the emitter onto other surfaces. Additionally, a new ESS method, called `ONE_BLOCK` was added. With `ESS: ONE_BLOCK`, every face of a randomly-selected emitter within the cell of intersection and its adjacent cells is sampled per ray intersection.

The following renders display the new effects of ESS. Each was rendered for approximately the same amount of time. Additionally, [`Prevent normal emitter when using emitter sampling`](../../user_interface/render_controls/advanced#controls) was enabled to make the effects of ESS more apparent.

<div class="figure" id="figure-3-1-3-9">
  <p class="figure">
  Figure 3.1.3.9: Scene lit by emitters rendered to 64 SPP with ESS: NONE
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_none_2.5.0.png">
      <img class="figure" src="../../../img/examples/introduction/ess_none_2.5.0.png" alt="Scene with ESS: NONE in 2.5.0">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-1-3-10">
  <p class="figure">
  Figure 3.1.3.10: Scene lit by emitters rendered to 42 SPP with ESS: ONE
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_one_2.5.0.png">
      <img class="figure" src="../../../img/examples/introduction/ess_one_2.5.0.png" alt="Scene with ESS: ONE in 2.5.0">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-1-3-11">
  <p class="figure">
  Figure 3.1.3.11: Scene lit by emitters rendered to 18 SPP with ESS: ONE_BLOCK
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_one_block_2.5.0.png">
      <img class="figure" src="../../../img/examples/introduction/ess_one_block_2.5.0.png" alt="Scene with ESS: ONE_BLOCK in 2.5.0">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-1-3-12">
  <p class="figure">
  Figure 3.1.3.12: Scene lit by emitters rendered to 6 SPP with ESS: ALL
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/introduction/ess_all_2.5.0.png">
      <img class="figure" src="../../../img/examples/introduction/ess_all_2.5.0.png" alt="Scene with ESS: ALL in 2.5.0">
    </a>
  </div>
</div>

Just as in the [Stable](../../../getting_started/configuring_chunky_launcher#advanced-settings) release, `ESS: NONE` is the quickest to render, but has the most noise. `ESS: ONE` is somewhat slower, and contains somewhat less noise. `ESS: ONE_BLOCK` is even slower to render, but contains even less noise. `ESS: All` is by far the slowest to render, but contains the least noise.

---

<h3>
ESS Bugs
</h3>

ESS is still imperfect, so there will still be bugs. When ESS is enabled, the lighting from the emitters is somewhat unrealistically projected compared to if it is disabled. Disabling [`Prevent normal emitter when using emitter sampling`](../../user_interface/render_controls/advanced#controls) can make the lighting more realistic, but the scene must be rendered for a longer period of time to reduce noise.

---

--8<-- "includes/abbreviations.md"
