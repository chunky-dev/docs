# Render Controls - Lighting

---

The `Lighting` tab, which is the second tab in the left control panel, contains controls for the lighting in the scene.

<div class="figure" id="figure-3-2-12-1">
  <p class="figure">
  Figure 3.2.12.1: The Lighting tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/lighting_tab_2.4.x.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/lighting_tab_2.4.x.png" alt="Lighting tab">
    </a>
  </div>
</div>

---

## Controls

- `Sky light`: Changes the intensity of the light emitted from the sky. Positive values beyond the range of the slider can be entered into the associated input field.

- `Enable emitters`: Changes whether emitters (blocks that are set to emit light; by default, these will be most blocks that already emit light in Minecraft, such as torches, glowstone, etc., but this can be changed in the [`Materials`](../materials) tab) are enabled. When enabled, these blocks will contribute lighting to the scene. When disabled, these blocks will behave like all other blocks.

<div class="figure" id="figure-3-2-12-2">
  <p class="figure">
  Figure 3.2.12.2: Enabling emitters enables the emittance of light from set blocks
  </p>
  <div class="figuregridcontainer">
    <a href="../../../../img/examples/render_controls/lighting/emitters_disabled.png">
      <img class="figure" src="../../../../img/examples/render_controls/lighting/emitters_disabled.png" alt="Emitters disabled">
    </a>
    <a href="../../../../img/examples/render_controls/lighting/emitters_enabled.png">
      <img class="figure" src="../../../../img/examples/render_controls/lighting/emitters_enabled.png" alt="Emitters enabled">
    </a>
  </div>
</div>

- `Emitter intensity`: Changes the intensity of the light emitted from emitters, if they are enabled. This setting applies to all materials, and is a multiplier of the base emittance value of each material, which can be changed in the [`Materials`](../materials) tab. Positive values beyond the range of the slider can be entered into the associated input field.

- `Emitter Sampling Strategy`: Dropdown menu to select the [Emitter Sampling Strategy](../../../introduction/next_event_estimation#emitter-sampling-strategy-ess) method to be used while rendering. ESS is only effective when emitters are enabled.

    - `NONE`: Disables Emitter Sampling Strategy.

    - `ONE`: Samples one randomly-selected emitter within the cell of intersection and its adjacent cells per ray intersection.

    - `ALL`: Samples every emitter within the cell of intersection and its adjacent cells per ray intersection.

If `Emitter Sampling Strategy` is enabled when it was previously disabled for the currently-loaded scene, then the chunks must be reloaded for changes to take effect.

- `Enable sunlight`: Changes whether the sun in Chunky emits light.

- `Draw sun`: Changes whether the texture of the sun in Chunky is drawn onto the sky.

- `Sun intensity`: Changes the intensity of the light emitted from the sun. This setting is only effective when sunlight is enabled. Positive values beyond the range of the slider can be entered into the associated input field.

- `Sun azimuth`: Changes the horizontal direction of the sun in the sky from a reference direction of East (positive X).

- `Sun altitude`: Changes the vertical direction of the sun in the sky from a reference altitude of the horizon.

- `Sun color`: Opens a color selector dialog box to change the color of the light emitted from the sun. This does not change the color of the texture of the sun.

---

### 2.5.0 Snapshot Controls

The `Lighting` tab was improved in [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

<div class="figure" id="figure-3-2-12-3">
  <p class="figure">
  Figure 3.2.12.3: The Lighting tab in Chunky 2.5.0 snapshots
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/lighting_tab_2.5.0.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/lighting_tab_2.5.0.png" alt="2.5.0 Snapshot Lighting tab">
    </a>
  </div>
</div>

- `Emitter Sampling Strategy`: Dropdown menu to select the [Emitter Sampling Strategy](../../../introduction/next_event_estimation#emitter-sampling-strategy-ess) method to be used while rendering. ESS is only effective when emitters are enabled.

    - `NONE`: Disables Emitter Sampling Strategy.

    - `ONE`: Samples one randomly-selected emitter within the cell of intersection and its adjacent cells per ray intersection.

    - `ONE_BLOCK`: Samples every face of one randomly-selected emitter within the cell of intersection and its adjacent cells per ray intersection.

    - `ALL`: Samples every emitter within the cell of intersection and its adjacent cells per ray intersection.

- `Enable sunlight`: This control was renamed to `Sun Sampling Strategy: NON_LUMINOUS`.

- `Draw sun`: Changes whether the texture of the sun in Chunky is drawn onto the sky, and whether the sun emits light.

- `Sunlight Sampling Strategy`: Dropdown menu to select the [Sun Sampling Strategy](../../../introduction/next_event_estimation#sunlight-sampling) (SSS) method to be used while rendering.

    - `OFF`: Disables Sun Sampling Strategy. The sun must be directly hit to contribute lighting to the scene.

    - `NON_LUMINOUS`: Disables Sun Sampling Strategy and lighting from the sun entirely.

    - `FAST`: Samples the sun with every ray intersection. This functionality is identical to Sunlight sampling in the [Stable](../../../../getting_started/configuring_chunky_launcher#advanced-settings) release.

    - `HIGH_QUALITY`: Combines the functionality of `SSS: OFF` and `SSS: FAST`, such that the sun contributes lighting to the scene both through sunlight sampling and through being directly intersected.

- `Sun intensity`: Changes the modifier of the intensity of the sunlight with `SSS: OFF` and `SSS: HIGH_QUALITY`, and changes the base intensity of the sun when using `SSS: FAST`. Positive values beyond the range of the slider can be entered into the associated input field.

- `Sun luminosity`: Changes the absolute brightness of the texture of the sun, and therefore the intensity of the sunlight. This control is only effective when `SSS` is set to `OFF` or `HIGH_QUALITY`. 

- `Sun color`: Opens a color selector dialog box to change the base color of the sunlight if `SSS` is set to `FAST` and to change the sunlight color modifier it `SSS` is set to `OFF` or `HIGH_QUALITY`.

When `SSS` is set to `OFF` or `HIGH_QUALITY`, the color of the sunlight will be based off the colors of the texture of the sun, and the `Sun color` will act as a modifier of the base color that is the colors of the texture of the sun. This is because the sun must be directly intersected to contribute lighting to the scene.

---

--8<-- "includes/abbreviations.md"
