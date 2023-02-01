# Map

The <samp>Map</samp> tab is the default view when Chunky is launched. It displays a 2D overhead view of the currently-loaded world. From this tab, chunk selections are made before being loaded.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The Map view</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/map-stable.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map-stable.png" alt="Map View">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The Map view</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/map-snapshot.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map-snapshot.png" alt="Map View">
    </a>
  </div>
</div>

{% endif %}

The map will display one of two display modes, depending on the map {% if extra.chunky < 2_05_00 %}[<samp>Scale</samp>](../right_panel_controls/map_view){% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Scale</samp>{% endif %}. At a map scale of *13* or greater, Chunky will display individual blocks of the world (albeit in a simplified manner), and at a map scale of *12* or less, Chunky will display the biome map of the world, like the one in [Figure 2](#figure-2).

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: The biome map</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/map_biome_view-stable.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_biome_view-stable.png" alt="Biome map">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: The biome map</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/map_biome_view-snapshot.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_biome_view-snapshot.png" alt="Biome map">
    </a>
  </div>
</div>

{% endif %}

- Left-click and drag: Move the map view.

- Left-click: Select or deselect a chunk, if the map scale is 16 or greater; or region, if the map scale is 15 or less.

- <kbd>Shift</kbd> + Left-click and drag: Create a resizable rectangular chunk selection. <kbd>Shift</kbd> does not need to be held down continuously after the resizable rectangle appears. Upon release of left-click, a selection of chunks is made.

- <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + Left-click and drag: Create a resizeable rectangular "de-selection". Upon release of left-click, the chunks within the rectangular de-selection will be removed from the selection.

- Mouse wheel: Changes the map scale (zoom). Alternatively, the <samp>Scale</samp> control can be used.

- Right-click: Opens a [context menu](#right-click-menu) with some selection- and scene-related options.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: Map view controls</p>
  <table class="figure">
    <tr class="figure">
      <td class="figure">
        <a href="../../../../img/reference/user_interface/chunky/map/map_chunk_selection_0.png">
          <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_chunk_selection_0.png" alt="Chunk outline">
        </a>
        <p>
        Prior to left-clicking, an outline of the highlighted chunk will be shown.
        </p>
      </td>
      <td class="figure">
        <a href="../../../../img/reference/user_interface/chunky/map/map_chunk_selection_1.png">
          <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_chunk_selection_1.png" alt="Chunk selected">
        </a>
        <p>
        After left-clicking, the outline will be filled in and selected.
        </p>
      </td>
    </tr>
    <tr class="figure">
      <td class="figure">
        <a href="../../../../img/reference/user_interface/chunky/map/map_region_selection_0.png">
          <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_region_selection_0.png" alt="Region outline">
        </a>
        <p>
        Prior to left-clicking, an outline of the highlighted region will be shown.
        </p>
      </td>
      <td class="figure">
        <a href="../../../../img/reference/user_interface/chunky/map/map_region_selection_1.png">
          <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_region_selection_1.png" alt="Region selected">
        </a>
        <p>
        After left-clicking, the region outline will be filled in and selected.
        </p>
      </td>
    </tr>
    <tr class="figure">
      <td class="figure">
        <a href="../../../../img/reference/user_interface/chunky/map/map_draggable_selection.png">
          <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_draggable_selection.png" alt="Resizable selection">
        </a>
        <p>
        Resizable selection
        </p>
      </td>
      <td class="figure">
      <!-- Empty cell -->
      </td>
    </tr>
  </table>
</div>

{% if extra.chunky >= 2_05_00 %}

- <samp>Change World</samp>: Opens the ['Select World'](#select-world) dialog box.

- <samp>Reload</samp>: Reloads the currently-loaded world.

- <samp>Dimension</samp>: Switches the map view to display one of the vanilla Minecraft dimensions.

    - <samp>Overworld</samp>: Switches the map view to display the Overworld dimension of the currently-loaded world.

    - <samp>Nether</samp>: Switches the map view to display the Nether dimension of the currently-loaded world. If the Nether for the world has not been generated, then the map view will display emptiness.

    - <samp>The End</samp>: Switches the map view to display the End dimension of the currently-loaded world. If the End for the world has not been generated, then the map view will display emptiness.

- <samp>Coordinates</samp>: The map view is always centered on the X- and Z-coordinates displayed.

    - <samp>X=</samp>: Input field for the X-coordinate to center the map view over.

    - <samp>Z=</samp>: Input field for the Z-coordinate to center the map view over.

- <samp>Track player</samp>: Centers the map view on the coordinates of the player.

- <samp>Track camera</samp>: Centers the map view on the coordinates of the camera.

- <samp>Scale</samp>: Changes the scale of the map, which is measured in pixels per chunk. This results in the field of view (zoom) of the map view changing. (Alternatively, the scroll wheel can be used to change map scale.)

- <samp>Map Y clip</samp>: The map view displays the range of blocks specified by the <samp>Min Y level</samp> and <samp>Max Y level</samp> controls.

    - <samp>Min Y Level</samp>: Changes the minimum Y level of blocks to be displayed in the map view. Values beyond the range of the slider can be entered into the associated input field.

    - <samp>Max Y Level</samp>: Changes the maximum Y level of blocks to be displayed in the map view. Values beyond the range of the slider can be entered into the associated input field.

- <samp>Show players</samp>: Changes whether the icons that indicate the locations of players in the world are visible.

{% endif %}

## Right-click Menu

Right-clicking in the map opens a context menu containing some selection- and scene-related options.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: <samp>Map</samp> tab right-click menu</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/map_right_click_menu-stable.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_right_click_menu-stable.png" alt="Map tab right-click menu">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: <samp>Map</samp> tab right-click menu</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/map_right_click_menu-snapshot.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_right_click_menu-snapshot.png" alt="Map tab right-click menu">
    </a>
  </div>
</div>

{% endif %}

- <samp>New scene from selection</samp>: Creates a new scene from the selected chunks.

{% if extra.chunky >= 2_05_00 %}

- <samp>Load selected chunks</samp>: Loads the selected chunks.

{% endif %}

- <samp>Clear selection</samp>: Clears the chunk selection.

{% if extra.chunky >= 2_05_00 %}

- <samp>Select chunks in radius</samp>: Opens the ['Select chunks in radius'](#select-chunks-in-radius) dialog box.

{% endif %}

- <samp>Move camera here</samp>: Moves the scene camera selected in the [<samp>Camera</samp>](../render_controls/camera) tab to the coordinates of the right-click.

- <samp>Select camera-visible chunks</samp>: Selects the chunks visible to the scene camera and currently visible in the map view.

{% if extra.chunky >= 2_05_00 %}

- <samp>Export selected chunks...</samp>: Opens a 'Save As' dialog box to export the selected chunks as region files containing the chunks to a ZIP archive.

- <samp>Save map view as...</samp>: Opens a 'Save As' dialog box to export the current map view as a PNG file.

{% endif %}

## Details

The map view displays a box containing information about the chunk, if any, and the block, if any, that the cursor is hovering over, and the size of the current chunk selection.

<div class="figure" id="figure-5">
  <p class="figure">Figure 5: The map view details box</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/map_details.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/map_details.png" alt="Map details">
    </a>
  </div>
</div>

The three lines in the box provide the following information:

1. The coordinates of the chunk that the cursor is hovering over; and the biome that is at the location of the block that is at Y = 0 and the X- and Z-coordinates of the block over which the cursor is hovering.

2. The X- and Z-coordinates of the block over which the cursor is hovering.

3. The number of chunks that are currently selected.

{% if extra.chunky >= 2_05_00 %}

---

## Select Chunks in Radius

The 'Select chunks in radius' dialog box, shown in [Figure 6](#figure-6), allows a set of chunks within a specified distance from a specified location to be selected.

<div class="figure" id="figure-6">
  <p class="figure">Figure 6: 'Select chunks in radius' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/select_chunks_in_radius_dialog_box.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/select_chunks_in_radius_dialog_box.png" alt="'Select chunks in radius' dialog box">
    </a>
  </div>
</div>

- <samp>Chunk X</samp>: Input field for the *chunk X-coordinate* of the location around which all chunks within a specified distance will be selected.

- <samp>Chunk Z</samp>: Input field for the *chunk Z-coordinate* of the location around which all chunks within a specified distance will be selected.

- <samp>Radius (Chunks)</samp>: Input field for the distance, measured in chunks, within which all chunks around the location specified by the <samp>Chunk X</samp> and <samp>Chunk Z</samp> controls will be selected.

- <samp>Cancel</samp>: Closes the 'Select chunks in radius' without applying any selection changes.

- <samp>OK</samp>: Selects the set of chunks defined by the <samp>Chunk X</samp>, <samp>Chunk Z</samp>, and <samp>Radius (Chunks)</samp> controls, and closes the 'Select chunks in radius' dialog box.

---

## Select World

The 'Select World' dialog box, shown in [Figure 7](#figure-7), displays a list of all detected worlds, along with some details about each world, and some world browsing controls at the bottom.

<div class="figure" id="figure-7">
  <p class="figure">Figure 7: 'Select World' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/map/select_world_dialog_box.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/map/select_world_dialog_box.png" alt="'Select World' dialog box">
    </a>
  </div>
</div>

By default, Chunky will display worlds from the "saves" folder of the Minecraft directory [specified in the Chunky Launcher](../../../../getting_started/configuring_chunky_launcher#optional-configuration).

The column headers can be clicked to reorder the worlds by any listed detail. A world in the list can be clicked to select it.

- <samp>Change world directory</samp>: Opens a file explorer dialog box to select a folder from which Chunky should display worlds in the list.

- <samp>Browse for another world</samp>: Opens a file explorer dialog box to select a world for Chunky to load. The parent folder of the world that is selected becomes the folder from which Chunky displays worlds in the list.

- <samp>Load selected world</samp>: Loads the currently-selected world. Alternatively, the world can be loaded by double-clicking its list entry.

{% endif %}

--8<-- "includes/abbreviations.md"
