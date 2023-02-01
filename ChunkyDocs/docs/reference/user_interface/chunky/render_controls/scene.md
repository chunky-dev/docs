---
page_content:
  open_scene_directory: "- <samp>Open Scene Directory</samp>: Opens the directory of the currently-loaded scene, if any, or the directory in which Chunky stores scenes."
  export_settings: "- <samp>Export settings</samp>: Opens the ['Settings Export'](#settings-export) dialog box."
  import_settings: "- <samp>Import settings</samp>: Opens the ['Settings Import'](#settings-import) dialog box."
  restore_default_settings: "- <samp>Restore default settings</samp>: Prompts the user to restore all scene settings to the defaults."
  load_selected_chunks: "- <samp>Load selected chunks</samp>: Loads chunks selected in the map view."
  reload_chunks: "- <samp>Reload chunks</samp>: Reloads the chunks that are currently loaded."
  section_load_entities:
    load_entities: "- <samp>Load entities</samp>: Collapsible panel that contains controls to select which types of entities are loaded upon scene creation."
    players: "    - <samp>Players</samp>: Deselecting this option does not cause any currently-loaded entities of this type to be unloaded when <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is next used. Such entities must be removed from the scene through use of the controls in the [<samp>Entities</samp>](../entities) tab."
    armor_stands: "    - <samp>Armor stands</samp>: Deselecting this option does not cause any currently-loaded entities of this type to be unloaded when <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is next used. Such entities must be removed from the scene through use of the controls in the [<samp>Entities</samp>](../entities) tab."
    books: "    - <samp>Books</samp>: Deselecting this option does not cause any currently-loaded entities of this type to be unloaded when <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is next used. Such entities must be removed from the scene through use of the controls in the [<samp>Entities</samp>](../entities) tab."
    paintings: "    - <samp>Paintings</samp>: Deselecting this option causes any currently-loaded entities of this type to be unloaded when <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is next used."
    other: "    - <samp>Other</samp>: \"Entities\" such as candle flames and campfires fall under this type. Deselecting this option causes any currently-loaded entities of this type to be unloaded when <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is next used."
    select_all: "- <samp>Select All</samp>: Selects all items in the list."
    deselect_all: "- <samp>Deselect All</samp>: Deselects all items in the list."
  scene_y_clip:
    min_y_level_content: "Changes the minimum Y level of blocks to be loaded whenever <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is used. Values beyond the range of the slider can be entered into the associated input field."
    max_y_level_content: "Changes the maximum Y level of blocks to be loaded whenever <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is used. Values beyond the range of the slider can be entered into the associated input field."
  autosave_frequency_content: "Input field for number of SPP a multiple of which must be rendered to before the scene and a render dump of the scene should be saved. Alternatively, select one of six preset values from the dropdown menu, which is accessed by clicking the button immediately to the right of the input field."
---

# Render Controls - Scene

The <samp>Scene</samp> tab contains general controls for Chunky and the scene.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Scene</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/scene/scene_tab-stable.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/scene/scene_tab-stable.png" alt="Scene tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Scene</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/scene/scene_tab-snapshot.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/scene/scene_tab-snapshot.png" alt="Scene tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky < 2_05_00 %}

{{ page.meta.page_content.open_scene_directory }}

{{ page.meta.page_content.export_settings }}

{{ page.meta.page_content.import_settings }}

{{ page.meta.page_content.restore_default_settings }}

{{ page.meta.page_content.load_selected_chunks }}

{{ page.meta.page_content.reload_chunks }}

## Canvas Controls

- <samp>Canvas size</samp>: Input field for the resolution of the render canvas, measured in pixels. Alternatively, select one of four resolution presets from the dropdown menu, which is accessed by clicking the button immediately to the right of the input field.

    - <samp>400x400</samp>

    - <samp>1024x768</samp>: XGA

    - <samp>960x540</samp>: qHD

    - <samp>1920x1080</samp>: Full HD

- <samp>Apply</samp>: Applies the resolution specified in the input field to the render canvas. Alternatively, press <kbd>Enter</kbd> while the input field is in focus.

- <samp>Set default</samp>: Sets the resolution specified in the input field as the default resolution for new scenes.

- <samp>x0.5</samp>: Multiplies each dimension of the resolution specified in the input field by *0.5*.

- <samp>x1.5</samp>: Multiplies each dimension of the resolution specified in the input field by *1.5*.

- <samp>x2</samp>: Multiplies each dimension of the resolution specified in the input field by *2*.

## Entity Loading Controls

{{ page.meta.page_content.section_load_entities.load_entities }}

{{ page.meta.page_content.section_load_entities.players }}

{{ page.meta.page_content.section_load_entities.armor_stands }}

{{ page.meta.page_content.section_load_entities.books }}

{{ page.meta.page_content.section_load_entities.paintings }}

{{ page.meta.page_content.section_load_entities.other }}

{{ page.meta.page_content.section_load_entities.select_all }}

{{ page.meta.page_content.section_load_entities.deselect_all }}

---

- <samp>Enable biome colors</samp>: Changes whether foliage as rendered in Chunky is tinted according to in-game biome foliage coloring.

## Autosave Controls

- <samp>Save dump once every...</samp>: Changes whether Chunky saves the scene and saves a render dump of the current render progress whenever a multiple of the specified number of SPP has passed since the render started.

- <samp>..."X" frames</samp>: {{ page.meta.page_content.autosave_frequency_content }}

    - <samp>50</samp> SPP

    - <samp>100</samp> SPP

    - <samp>500</samp> SPP

    - <samp>1000</samp> SPP

    - <samp>2500</samp> SPP

    - <samp>5000</samp> SPP

- <samp>Save snapshot for every dump</samp>: Changes whether Chunky saves a snapshot of the render progress at the time a dump is saved when a dump is saved.

---

- <samp>Y min clip</samp>: {{ page.meta.page_content.scene_y_clip.min_y_level_content }}

- <samp>Y max clip</samp>: {{ page.meta.page_content.scene_y_clip.max_y_level_content }}

{% endif %}

{% if extra.chunky >= 2_05_00 %}

{{ page.meta.page_content.open_scene_directory }}

## Canvas Controls

- <samp>Canvas size</samp>: Input fields for the resolution of the render canvas.

    - <samp>Width</samp>: Input field for the horizontal dimension of the render canvas, measured in pixels.

    - <samp>Height</samp>: Input field for the vertical dimension of the render canvas, measured in pixels.

- <img src="../../../../../img/reference/user_interface/chunky/render_controls/scene/aspect_ratio_unlocked_icon.png" style="vertical-align: middle;"> / <img src="../../../../../img/reference/user_interface/chunky/render_controls/scene/aspect_ratio_locked_icon.png" style="vertical-align: middle;"> <samp>Lock aspect ratio</samp>: Changes whether the aspect ratio of the render canvas is locked <img src="../../../../../img/reference/user_interface/chunky/render_controls/scene/aspect_ratio_locked_icon.png" style="vertical-align: middle;"> or unlocked <img src="../../../../../img/reference/user_interface/chunky/render_controls/scene/aspect_ratio_unlocked_icon.png" style="vertical-align: middle;">. If the aspect ratio of the render canvas is locked, then changing one dimension of the resolution causes the other dimension to change proportionally to the other.

The resolution and aspect ratio of the render canvas are displayed directly below the input fields.

- <samp>Apply</samp>: Applies the resolution specified in the input fields to the render canvas. Alternatively, press <kbd>Enter</kbd> while either input field is in focus.

- <samp>Set default</samp>: Sets the resolution specified in the input fields as the default resolution for new scenes.

- <samp>Flip axes</samp>: Inverts the dimensions of the render canvas, such that the measurement of the width of the render canvas becomes the measurement of the height of the render canvas, and the measurement of the height of the render canvas becomes the measurement of the width of the render canvas. This control is usable only if the aspect ratio of the render canvas is not 1:1.

- <samp>x0.5</samp>: Multiplies each dimension of the resolution specified in the input fields by *0.5*.

- <samp>x1.5</samp>: Multiplies each dimension of the resolution specified in the input fields by *1.5*.

- <samp>x2</samp>: Multiplies each dimension of the resolution specified in the input fields by *2*.

### Render Region Controls

- <samp>Render Region</samp>: Sets Chunky to render a region of the main render canvas, defined by the <samp>Width</samp>, <samp>Height</samp>, <samp>X Offset</samp>, and <samp>Y Offset</samp> controls.

- <samp>Width</samp>: Input field for the width of the region to be rendered, measured in pixels.

- <samp>Height</samp>: Input field for the height of the region to be rendered, measured in pixels.

- <samp>X Offset</samp>: Input field for the horizontal offset of the region to be rendered from the left edge of the main render canvas, measured in pixels.

- <samp>Y Offset</samp>: Input field for the vertical offset of the region to be rendered from the top edge of the main render canvas, measured in pixels.

## World Loading Controls

{{ page.meta.page_content.load_selected_chunks }}

{{ page.meta.page_content.reload_chunks }}

- <samp>Scene Y clip</samp>: Only blocks within the range specified by <samp>Min Y level</samp> and <samp>Max Y level</samp> will be loaded whenever <samp>Load selected chunks</samp> or <samp>Reload chunks</samp> is used.

    - <samp>Min Y level</samp>: {{ page.meta.page_content.scene_y_clip.min_y_level_content }}

    - <samp>Max Y level</samp>: {{ page.meta.page_content.scene_y_clip.max_y_level_content }}

### Entity Loading Controls

{{ page.meta.page_content.section_load_entities.load_entities }}

{{ page.meta.page_content.section_load_entities.players }}

{{ page.meta.page_content.section_load_entities.armor_stands }}

{{ page.meta.page_content.section_load_entities.books }}

{{ page.meta.page_content.section_load_entities.paintings }}

{{ page.meta.page_content.section_load_entities.other }}

{{ page.meta.page_content.section_load_entities.select_all }}

{{ page.meta.page_content.section_load_entities.deselect_all }}

---

{{ page.meta.page_content.export_settings }}

{{ page.meta.page_content.import_settings }}

{{ page.meta.page_content.restore_default_settings }}

## Autosave Settings

- <samp>Enable autosave</samp>: Changes whether Chunky periodically saves the scene and saves a render dump of the current render progress.

- <samp>Autosave frequency</samp>: {{ page.meta.page_content.autosave_frequency_content }}

    - <samp>50</samp> SPP

    - <samp>100</samp> SPP

    - <samp>500</samp> SPP

    - <samp>1000</samp> SPP

    - <samp>2500</samp> SPP

    - <samp>5000</samp> SPP

- <samp>Save snapshot on each autosave</samp>: Changes whether Chunky saves a snapshot of the render progress on each autosave.

{% endif %}

---

## Settings Export

The 'Settings Export' dialog box, shown in [Figure 2](#figure-2), allows information describing a choice of the currently-set Chunky settings to be exported as a JSON-formatted string of text.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Settings Export' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/scene/settings_export_dialog_box-stable.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/scene/settings_export_dialog_box-stable.png" alt="'Settings Export' dialog box">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Settings Export' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/scene/settings_export_dialog_box-snapshot.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/scene/settings_export_dialog_box-snapshot.png" alt="'Settings Export' dialog box">
    </a>
  </div>
</div>

{% endif %}

- <samp>Settings to export</samp>: A list of settings which can be selected to be exported in the JSON string.

- <samp>Settings JSON</samp>: Output field for the JSON-formatted string of text, the contents of which can be copied and saved for later.

{% if extra.chunky >= 2_05_00 %}

- <samp>Select All</samp>: Selects all settings in the <samp>Settings to export</samp> list.

{% endif %}

- <samp>Done</samp>: Closes the 'Settings Export' dialog box.

---

## Settings Import

The 'Settings Import' dialog box, shown in [Figure 3](#figure-3), allows a JSON-formatted string of text that contains information describing Chunky settings, usually one exported from the ['Settings Export'](#settings-export) dialog box, to be imported to immediately change all settings described in the JSON string to the values corresponding to each setting described in the JSON string.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: 'Settings Import' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/scene/settings_import_dialog_box.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/scene/settings_import_dialog_box.png" alt="'Settings Import' dialog box">
    </a>
  </div>
</div>

- <samp>Settings JSON</samp>: Input field for a JSON-formatted string of text that describes Chunky settings and their corresponding values.

- <samp>OK</samp>: Applies the settings specified in the JSON string, if any, and closes the 'Settings Import' dialog box.

- <samp>Cancel</samp>: Closes the 'Settings Import' dialog box without changing any settings.

--8<-- "includes/abbreviations.md"
