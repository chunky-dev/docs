# Render Controls - Water

The <sampe>Water</samp> tab contains controls for the appearance of the water in the scene.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Water</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/water/water_tab-stable.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/water/water_tab-stable.png" alt="Water tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Water</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/water/water_tab-snapshot.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/water/water_tab-snapshot.png" alt="Water tab">
    </a>
  </div>
</div>

{% endif %}

- <samp>Still water</samp>: Changes whether waves are on the surface of the water.

- <samp>Water visibility</samp>: Changes the distance that rays can travel through water before being terminated. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Water opacity</samp>: Changes the opacity of the surface of the water.

- <samp>Use custom water color</samp>: Disables biome tinting for water and sets the water color to a custom color.

- <samp>Pick color</samp>: Opens a color selector dialog box to change the color of the water. This control is only effective if <samp>Use custom water color</samp> is enabled.

- <samp>Save as defaults</samp>: Saves the current water settings as the default water settings for new scenes.

## Water World Mode Controls

- <samp>Water world mode</samp>: Changes whether an infinite water plane is present in the scene.

- <samp>Water height</samp>: Changes the altitude of the water in the Y-axis. {% if extra.chunky < 2_05_00 %}Values between the [<samp>Y min clip</samp>](../scene) and the [<samp>Y max clip</samp>](../scene) can be entered into the associated input field.{% endif %}{% if extra.chunky >= 2_05_00 %}Values beyond the range of the slider can be entered into the associated input field.{% endif %}

- <samp>Lower water by Minecraft offset</samp>: Changes whether the altitude of the water plane is decreased by the distance between block level and in-game water level.

- <samp>Hide the water plane in loaded chunks</samp>: Changes whether the water plane is visible within loaded chunks.

{% if extra.chunky >= 2_05_00 %}

## Procedural Water Controls

- <samp>Procedural water</samp>: Changes whether configurable simplex noise is used to procedurally shade the water. See [Figure 2](#figure-2) for a comparison between normal water and procedural water.

    - <samp>Iterations</samp>: Changes the number of iterations of noise used. Greater values add more detail to the waves, but decrease the rendering performance. Positive values beyond the range of the slider can be entered into the associated input field.

    - <samp>Frequency</samp>: Changes the frequency of noise used. Greater values shrink the waves horizontally while smaller values stretch the waves horizontally. Positive values beyond the range of the slider can be entered into the associated input field.

    - <samp>Amplitude</samp>: Changes the amplitude of noise used. Greater values stretch the waves vertically, while smaller values shrink the waves vertically. This only changes the apparent height of the waves; the water actually remains flat. Positive values beyond the range of the slider can be entered into the associated input field.

    - <samp>Animation speed</samp>: Changes the water appearance based on the [<samp>Current animation time</samp>](../advanced).

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Comparison between normal water and Procedural water</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/water/examples/water_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/water/examples/water_comparison.png" alt="Comparison between normal water and Procedural water">
    </a>
  </div>
</div>

{% endif %}

--8<-- "includes/abbreviations.md"
