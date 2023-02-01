---
page_content:
  sky_light_intensity_modifier_content: "Changes the intensity of the light emitted from the sky. Positive values beyond the range of the slider can be entered into the associated input field."
  enable_emitters: "- <samp>Enable emitters</samp>: Changes whether emitters (blocks that are set to emit light; by default, these will be most blocks that already emit light in Minecraft, such as torches, glowstone, etc., but this can be changed in the [<samp>Materials</samp>](../materials) tab) are enabled. When enabled, these blocks will contribute lighting to the scene. When disabled, these blocks will behave like all other blocks."
  figure_2: "<div class=\"figure\" id=\"figure-2\">
  <p class=\"figure\">Figure 2: Enabling emitters enables the emittance of light from set blocks</p>
  <div class=\"figuregridcontainer\">
    <a href=\"../../../../../img/reference/user_interface/chunky/render_controls/lighting/examples/emitters_disabled.png\">
      <img class=\"figure\" src=\"../../../../../img/reference/user_interface/chunky/render_controls/lighting/examples/emitters_disabled.png\" alt=\"Emitters disabled\">
    </a>
    <a href=\"../../../../../img/reference/user_interface/chunky/render_controls/lighting/examples/emitters_enabled.png\">
      <img class=\"figure\" src=\"../../../../../img/reference/user_interface/chunky/render_controls/lighting/examples/emitters_enabled.png\" alt=\"Emitters enabled\">
    </a>
  </div>
</div>"
  emitter_intensity: "- <samp>Emitter intensity</samp>: Changes the intensity of the light emitted from emitters, if they are enabled. This setting applies to all materials, and is a multiplier of the base emittance value of each material, which can be changed in the [<samp>Materials</samp>](../materials) tab. Positive values beyond the range of the slider can be entered into the associated input field."
  emitter_sampling_strategy: "- <samp>Emitter Sampling Strategy</samp>: Dropdown menu to select the [Emitter Sampling Strategy](../../../../introduction/next_event_estimation#emitter-sampling-strategy-ess) method to be used while rendering. ESS is only effective when emitters are enabled."
  emitter_sampling_strategy_none: "    - <samp>NONE</samp>: Disables Emitter Sampling Strategy."
  emitter_sampling_strategy_one: "    - <samp>ONE</samp>: Samples one randomly-selected emitter within the cell of intersection and its adjacent cells per ray intersection."
  emitter_sampling_strategy_one_block: "    - <samp>ONE_BLOCK</samp>: Samples every face of one randomly-selected emitter within the cell of intersection and its adjacent cells per ray intersection."
  emitter_sampling_strategy_all: "    - <samp>ALL</samp>: Samples every emitter within the cell of intersection and its adjacent cells per ray intersection."
  emitter_sampling_strategy_chunk_reload_required: "If <samp>Emitter Sampling Strategy</samp> is enabled when it was previously disabled for the currently-loaded scene, then the chunks must be reloaded for changes to take effect."
  draw_sun: "- <samp>Draw sun</samp>: Changes whether the texture of the sun in Chunky is drawn onto the sky."
  sun_azimuth: "- <samp>Sun azimuth</samp>: Changes the horizontal direction of the sun in the sky from a reference direction of East (positive X)."
  sun_altitude: "- <samp>Sun altitude</samp>: Changes the vertical direction of the sun in the sky from a reference altitude of the horizon."
  sunlight_color_content: "Opens a color selector dialog box to change the color of the light emitted from the sun. This does not change the color of the texture of the sun."
---

# Render Controls - Lighting

The <samp>Lighting</samp> tab contains controls for the lighting in the scene.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Lighting</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/lighting/lighting_tab-stable.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/lighting/lighting_tab-stable.png" alt="Lighting tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Lighting</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/lighting/lighting_tab-snapshot.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/lighting/lighting_tab-snapshot.png" alt="Lighting tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky < 2_05_00 %}

## Sky Light Controls

- <samp>Sky light</samp>: {{ page.meta.page_content.sky_light_intensity_modifier_content }}

## Emitter Controls

{{ page.meta.page_content.enable_emitters }}

{{ page.meta.page_content.figure_2 }}

{{ page.meta.page_content.emitter_intensity }}

{{ page.meta.page_content.emitter_sampling_strategy }}

{{ page.meta.page_content.emitter_sampling_strategy_none }}

{{ page.meta.page_content.emitter_sampling_strategy_one }}

{{ page.meta.page_content.emitter_sampling_strategy_all }}

{{ page.meta.page_content.emitter_sampling_strategy_chunk_reload_required }}

## Sunlight Controls

- <samp>Enable sunlight</samp>: Changes whether the sun in Chunky emits light.

{{ page.meta.page_content.draw_sun }}

- <samp>Sun intensity</samp>: Changes the intensity of the light emitted from the sun. This setting is effective only when sunlight is enabled. Positive values beyond the range of the slider can be entered into the associated input field.

{{ page.meta.page_content.sun_azimuth }}

{{ page.meta.page_content.sun_altitude }}

- <samp>Sun color</samp>: {{ page.meta.page_content.sunlight_color_content }}

{% endif %}

{% if extra.chunky >= 2_05_00 %}

## Sky Light Controls

- <samp>Sky exposure</samp>: Changes both the intensity of the light emitted from the sky and the apparent brightness of the sky simultaneously. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Sky light intensity modifier</samp>: {{ page.meta.page_content.sky_light_intensity_modifier_content }}

- <samp>Apparent sky brightness modifier</samp>: Changes the apparent brightness of the sky. Positive values beyond the range of the slider can be entered into the associated input field.

## Emitter Controls

{{ page.meta.page_content.enable_emitters }}

{{ page.meta.page_content.figure_2 }}

{{ page.meta.page_content.emitter_intensity }}

{{ page.meta.page_content.emitter_sampling_strategy }}

{{ page.meta.page_content.emitter_sampling_strategy_none }}

{{ page.meta.page_content.emitter_sampling_strategy_one }}

{{ page.meta.page_content.emitter_sampling_strategy_one_block }}

{{ page.meta.page_content.emitter_sampling_strategy_all }}

{{ page.meta.page_content.emitter_sampling_strategy_chunk_reload_required }}

## Sun Controls

{{ page.meta.page_content.draw_sun }}

- <samp>Sun Sampling Strategy</samp>: Dropdown menu to select the [Sun Sampling Strategy](../../../../introduction/next_event_estimation#sunlight-sampling) (SSS) method to be used while rendering.

    - <samp>OFF</samp>: Disables Sun Sampling Strategy. The sun must be directly hit to contribute lighting to the scene.

    - <samp>NON_LUMINOUS</samp>: Disables Sun Sampling Strategy and lighting from the sun entirely.

    - <samp>FAST</samp>: Samples the sun with every ray intersection.

    - <samp>HIGH_QUALITY</samp>: Combines the functionality of <samp>SSS: OFF</samp> and <samp>SSS: FAST</samp>, such that the sun contributes lighting to the scene both through sunlight sampling and through being directly intersected.

- <samp>Sunlight intensity</samp>: Changes the intensity of the sampled light emitted from the sun. This setting is effective only when <samp>Sun Sampling Strategy</samp> is set to <samp>OFF</samp> or <samp>HIGH_QUALITY</samp>. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Sun luminosity</samp>: Changes the absolute brightness of the texture of the sun, and therefore the intensity of the sunlight. This setting is only effective when <samp>Sun Sampling Strategy</samp> is set to <samp>OFF</samp> or <samp>HIGH_QUALITY</samp>.

- <samp>Apparent sun brightness</samp>: Changes the apparent brightness of the texture of the sun. This setting is effective only when <samp>Draw sun</samp> is enabled.

- <samp>Sun size</samp>: Changes the size of the sun, measured in degrees. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Sunlight color</samp>: {{ page.meta.page_content.sunlight_color_content }}

When <samp>Sunlight Sampling Strategy</samp> is set to <samp>OFF</samp> or <samp>HIGH_QUALITY</samp>, the color of the sunlight will be based off the colors of the texture of the sun, and the <samp>Sunlight color</samp> will act as a modifier of the base color that is the colors of the texture of the sun. This is because the sun must be directly intersected to contribute lighting to the scene.

- <samp>Modify sun texture by color</samp>: Changes whether the color of the sun texture is modified by the color value of <samp>Apparent sun color</samp>.

- <samp>Apparent sun color</samp>: Opens a color selector dialog box to change the color by which the color of the sun texture is modified.

{{ page.meta.page_content.sun_azimuth }}

{{ page.meta.page_content.sun_altitude }}

{% endif %}

--8<-- "includes/abbreviations.md"
