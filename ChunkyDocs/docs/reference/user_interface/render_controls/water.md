# Render Controls - Water

---

The `Water` tab, which is the fourth tab in the left control panel, contains controls for the appearance of the water in the scene.

<div class="figure" id="figure-3-2-14-1">
  <p class="figure">
  Figure 3.2.14.1: The Water tab
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/water_tab_2.4.x.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/water_tab_2.4.x.png" alt="Water tab">
  </a>
</div>

---

## Controls

- `Still water`: Changes whether waves are on the surface of the water.

- `Water visibility`: Changes the distance that rays can travel through water before being terminated. Positive values beyond the range of the slider can be entered into the associated input field.

- `Water opacity`: Changes the opacity of the surface of the water.

- `Use custom water color`: Disables biome tinting for water and sets the water color to a custom color.

- `Pick color`: Opens a color selector dialog box to change the color of the water. This control is only effective if `Use custom water color` is enabled.

- `Save as defaults`: Saves the current water settings as the default water settings for new scenes.

---

- `Water world mode`: Changes whether an infinite water plane is present in the scene.

- `Water height`: Changes the altitude of the water in the Y-axis. Values between the [`Y min clip`](../scene#controls) and the [`Y max clip`](../scene#controls) can be entered into the associated input field.

- `Lower water by Minecraft offset`: Changes whether the altitude of the water plane is decreased by the distance between block level and in-game water level.

- `Hide the water plane in loaded chunks`: Changes whether the water plane is visible within loaded chunks.

---

### 2.5.0 Snapshot Controls

The `Water` tab was improved in [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

<div class="figure" id="figure-3-2-14-2">
  <p class="figure">
  Figure 3.2.14.2: The Water tab in Chunky 2.5.0 snapshots
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/water_tab_2.5.0.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/water_tab_2.5.0.png" alt="2.5.0 Snapshot Water tab">
  </a>
</div>

- `Procedural water`: Changes whether configurable simplex noise is used to procedurally shade the water. See [Figure 3.2.14.3](#figure-3-2-14-3) for a comparison between normal water and procedural water.

    - `Iterations`: Changes the number of iterations of noise used. Greater values add more detail to the waves, but decrease the rendering performance. Positive values beyond the range of the slider can be entered into the associated input field.

    - `Frequency`: Changes the frequency of noise used. Greater values shrink the waves horizontally while smaller values stretch the waves horizontally. Positive values beyond the range of the slider can be entered into the associated input field.

    - `Amplitude`: Changes the amplitude of noise used. Greater values stretch the waves vertically, while smaller values shrink the waves vertically. This only changes the apparent height of the waves; the water actually remains flat. Positive values beyond the range of the slider can be entered into the associated input field.

    - `Animation speed`: Changes the water appearance based on the [`Current animation time`](../advanced#controls).

<div class="figure" id="figure-3-2-14-3">
  <p class="figure">
  Figure 3.2.14.3: Comparison between normal water and Procedural water
  </p>
  <hr>
  <a href="../../../../img/examples/render_controls/water/water_comparison.png">
  <img class="figure" src="../../../../img/examples/render_controls/water/water_comparison.png" alt="Comparison between normal water and Procedural water">
  </a>
</div>

---

--8<-- "includes/abbreviations.md"
