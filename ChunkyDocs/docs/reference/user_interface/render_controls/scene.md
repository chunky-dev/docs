# Render Controls - Scene

---

The `Scene` tab, which is the first tab in the left control panel, contains general controls for Chunky and the scene.

<div class="figure" id="figure-3-2-11-1">
  <p class="figure">
  Figure 3.2.11.1: The Scene tab
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/scene_tab_2.4.x.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/scene_tab_2.4.x.png" alt="Scene tab">
  </a>
</div>

---

## Controls

- `Open Scene Directory`: Opens the directory of the currently-loaded scene, if any, or the directory in which Chunky stores scenes.

- `Export settings`: Opens the [`Settings Export`](#settings-export) dialog box.

- `Import settings`: Opens the [`Settings Import`](#settings-import) dialog box.

- `Restore default settings`: Prompts the user to restore all scene settings to the defaults.

- `Load selected chunks`: Loads chunks selected in the map view.

- `Reload chunks`: Reloads the chunks that are currently loaded. Succeeds only if the world from which the chunks were originally selected is loaded.

---

- `Canvas size`: Input field for the resolution of the render canvas. Alternatively, select one of four resolution presets from the dropdown menu, which is accessed by clicking the button immediately to the right of the input field.

    - `400x400`

    - `1024x768`: XGA

    - `960x540`: qHD

    - `1920x1080`: Full HD

- `Apply`: Applies the resolution specified in the input field to the render canvas. Alternatively, press [Enter] while the input field is in focus.

- `Set default`: Sets the resolution specified in the input field as the default resolution for new scenes.

- `x0.5`: Multiplies each dimension of the resolution specified in the input field by `0.5`.

- `x1.5`: Multiplies each dimension of the resolution specified in the input field by `1.5`.

- `x2`: Multiplies each dimension of the resolution specified in the input field by `2`.

---

- `Load entities`: Collapsible panel that contains controls to select which types of entities are loaded upon scene creation.

    - `Players`: Deselecting this option does not cause any currently-loaded entities of this type to be unloaded when `Load selected chunks` or `Reload chunks` is next used. Such entities must be removed from the scene through use of the controls in the [`Entities`](../entities) tab.

    - `Armor stands`: Deselecting this option does not cause any currently-loaded entities of this type to be unloaded when `Load selected chunks` or `Reload chunks` is next used. Such entities must be removed from the scene through use of the controls in the [`Entities`](../entities) tab.

    - `Books`: Deselecting this option does not cause any currently-loaded entities of this type to be unloaded when `Load selected chunks` or `Reload chunks` is next used. Such entities must be removed from the scene through use of the controls in the [`Entities`](../entities) tab.

    - `Paintings`: Deselecting this option causes any currently-loaded entities of this type to be unloaded when `Load selected chunks` or `Reload chunks` is next used.

    - `Other`: "Entities" such as candle flames and campfires fall under this type.  Deselecting this option causes any currently-loaded entities of this type to be unloaded when `Load selected chunks` or `Reload chunks` is next used.

- `Select All`: Selects all items in the list.

- `Deselect All`: Deselects all items in the list.

---

- `Enable biome colors`: Changes whether foliage as rendered in Chunky is tinted according to in-game biome foliage coloring.

- `Save dump once every...`: Changes whether Chunky saves the scene and saves a render dump of the current progress whenever a multiple of the specified number of SPP has passed since the render started.

- <img src="../../../../img/user_interface/render_controls/save_dump_SPP.png" alt="Render dump SPP">: Input field for number of SPP a multiple of which must be rendered to before a render dump should be saved. Alternatively, select one of six preset values from the dropdown menu, which is accessed by clicking the button immediately to the right of the input field.

    - `50` SPP: Sets Chunky to save the scene and a render dump of the scene once every 50 SPP.

    - `100` SPP: Sets Chunky to save the scene and a render dump of the scene once every 100 SPP.

    - `500` SPP: Sets Chunky to save the scene and a render dump of the scene once every 500 SPP.

    - `1000` SPP: Sets Chunky to save the scene and a render dump of the scene once every 1000 SPP.

    - `2500` SPP: Sets Chunky to save the scene and a render dump of the scene once every 2500 SPP.

    - `5000` SPP: Sets Chunky to save the scene and a render dump of the scene once every 5000 SPP.

- `Save snapshot for every dump`: Changes whether Chunky saves a snapshot of the render progress at the time a dump is saved when a dump is saved.

- `Y min clip`: Changes the minimum Y level of blocks to be loaded whenever `Load selected chunks` or `Reload chunks` is used. Values beyond the range of the slider can be entered into the associated input field.

- `Y max clip`: Changes the maximum Y level of blocks to be loaded whenever `Load selected chunks` or `Reload chunks` is used. Values beyond the range of the slider can be entered into the associated input field.

---

### 2.5.0 Snapshot Controls

The `Scene` tab was improved in [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

<div class="figure" id="figure-3-2-11-2">
  <p class="figure">
  Figure 3.2.11.2: The Scene tab in Chunky 2.5.0 snapshots
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/scene_tab_2.5.0.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/scene_tab_2.5.0.png" alt="2.5.0 Snapshot Scene tab">
  </a>
</div>

- `Canvas size`: Input fields for the resolution of the render canvas.

    - `Width`: Input field for the horizontal dimension of the render canvas.

    - `Height`: Input field for the vertical dimension of the render canvas.

- <img src="../../../../img/user_interface/render_controls/aspect_ratio_unlocked.png"> / <img src="../../../../img/user_interface/render_controls/aspect_ratio_locked.png"> `Lock aspect ratio`: Changes whether the aspect ratio of the render canvas is locked <img src="../../../../img/user_interface/render_controls/aspect_ratio_locked.png"> or unlocked <img src="../../../../img/user_interface/render_controls/aspect_ratio_unlocked.png">. If the aspect ratio of the render canvas is locked, then changing one dimension of the resolution causes the other dimension to change proportionally to the other.

The resolution and aspect ratio of the render canvas are displayed directly below the input fields.

- `Apply`: Applies the resolution specified in the input fields to the render canvas. Alternatively, press [Enter] while either input field is in focus.

- `Set default`: Sets the resolution specified in the input fields as the default resolution for new scenes.

- `Flip axes`: Inverts the dimensions of the render canvas, such that the measurement of the width of the render canvas becomes the measurement of the height of the render canvas, and the measurement of the height of the render canvas becomes the measurement of the width of the render canvas. This control is usable only if the aspect ratio of the render canvas is not 1:1.

- `x0.5`: Multiplies each dimension of the resolution specified in the input fields by `0.5`.

- `x1.5`: Multiplies each dimension of the resolution specified in the input fields by `1.5`.

- `x2`: Multiplies each dimension of the resolution specified in the input fields by `2`.

<br>

- `Enable biome colors`: This control was relocated to the [`Textures & Resource Packs` tab](../textures_and_resource_packs#250-snapshot-controls).

---

### Settings Export

The `Settings Export` dialog box, shown in [Figure 3.2.11.3](#figure-3-2-11-3), allows information describing a choice of the currently-set Chunky settings to be exported as a JSON-formatted string of text.

<div class="figure" id="figure-3-2-11-3">
  <p class="figure">
  Figure 3.2.11.3: Settings Export dialog box
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/settings_export.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/settings_export.png" alt="Settings Export dialog box">
  </a>
</div>

- `Settings to export`: A list of settings which can be selected to be exported in the JSON string.

- `Settings JSON`: Output field for the JSON-formatted string of text, the contents of which can be copied and saved for later.

- `Done`: Closes the `Settings Export` dialog box.

---

### Settings Import

The `Settings Import` dialog box, shown in [Figure 3.2.11.4](#figure-3-2-11-4), allows a JSON-formatted string of text that contains information describing Chunky settings, usually one exported from the [`Settings Export`](#settings-export) dialog box, to be imported to immediately change all settings described in the JSON string to the values corresponding to each setting described in the JSON string.

<div class="figure" id="figure-3-2-11-4">
  <p class="figure">
  Figure 3.2.11.4: Settings Import dialog box
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/settings_import.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/settings_import.png" alt="Settings Import dialog box">
  </a>
</div>

- `Settings JSON`: Input field for a JSON-formatted string of text that describes Chunky settings and their corresponding values.

- `OK`: Applies the settings specified in the JSON string, if any, and closes the `Settings Import` dialog box.

- `Cancel`: Closes the `Settings Import` dialog box without changing any settings.

---

--8<-- "includes/abbreviations.md"
