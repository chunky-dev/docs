# Map

---

The `Map` tab is located in the center control panel, and is the default view when Chunky is launched. It displays a 2D overhead view of the currently-loaded world. From this tab, chunk selections are made before being loaded.

<div class="figure" id="figure-3-2-5-1">
  <p class="figure">
  Figure 3.2.5.1: The Map view
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/map.png">
      <img class="figure" src="../../../img/user_interface/map.png" alt="Map View">
    </a>
  </div>
</div>

The map will display one of two display modes, depending on the map [`Scale`](../right_panel_controls/map_view#controls). At map scale of *13* or greater, Chunky will display individual blocks of the world (albeit in a simplified manner), and at map scale of *12* or less, Chunky will display the biome map of the world, like the one in [Figure 3.2.5.2](#figure-3-2-5-2).

<div class="figure" id="figure-3-2-5-2">
  <p class="figure">
  Figure 3.2.5.2: The biome map
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/map_biome_view.png">
      <img class="figure" src="../../../img/user_interface/map_biome_view.png" alt="Biome map">
    </a>
  </div>
</div>

---

## Controls

- `Left-click and drag`: Move the map view.

- `Left-click`: Select or deselect a chunk, if the map scale is 16 or greater; or region, if the map scale is 15 or less.

- `[Shift] + Left-click and drag`: Create a resizable rectangular chunk selection. [Shift] does not need to be held down continuously after the resizable rectangle appears. Upon release of left-click, a selection of chunks is made.

- `[Ctrl] + [Shift] + Left-click and drag`: Create a resizeable rectangular "de-selection". Upon release of left-click, the chunks within the rectangular de-selection will be removed from the selection.

- `Mouse wheel`: Changes the map scale (zoom).

- `Right-click`: Opens a [context menu](#right-click-menu) with some selection- and scene-related options.

<div class="figure" id="figure-3-2-5-3">
  <p class="figure">
  Figure 3.2.5.3: Map view controls
  </p>
  <table class="figure">
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/user_interface/chunky_map_chunk_selection0.png">
          <img class="figure" src="../../../img/user_interface/chunky_map_chunk_selection0.png" alt="Chunk outline">
        </a>
        <p>
        Prior to left-clicking, an outline of the highlighted chunk will be shown.
        </p>
      </td>
      <td class="figure">
        <a href="../../../img/user_interface/chunky_map_chunk_selection1.png">
          <img class="figure" src="../../../img/user_interface/chunky_map_chunk_selection1.png" alt="Chunk selected">
        </a>
        <p>
        After left-clicking, the outline will be filled in and selected.
        </p>
      </td>
    </tr>
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/user_interface/chunky_map_region_selection0.png">
          <img class="figure" src="../../../img/user_interface/chunky_map_region_selection0.png" alt="Region outline">
        </a>
        <p>
        Prior to left-clicking, an outline of the highlighted region will be shown.
        </p>
      </td>
      <td class="figure">
        <a href="../../../img/user_interface/chunky_map_region_selection1.png">
          <img class="figure" src="../../../img/user_interface/chunky_map_region_selection1.png" alt="Region selected">
        </a>
        <p>
        After left-clicking, the region outline will be filled in and selected.
        </p>
      </td>
    </tr>
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/user_interface/chunky_map_draggable_selection.png">
          <img class="figure" src="../../../img/user_interface/chunky_map_draggable_selection.png" alt="Resizable selection">
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

---

### Right-click menu

Right-clicking in the map opens a context menu containing some selection- and scene-related options.

<div class="figure" id="figure-3-2-5-4">
  <p class="figure">
  Figure 3.2.5.4: Map right-click menu
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/chunky_map_rightclick_large.png">
      <img class="figure" src="../../../img/user_interface/chunky_map_rightclick_large.png" alt="Map right-click menu">
    </a>
  </div>
</div>

- `New scene from selection`: Creates a new scene from the selected chunks.

- `Clear selection`: Clears the chunk selection.

- `Move camera here`: Moves the scene camera selected in the [`Camera`](../render_controls/camera) tab to the coordinates of the right-click.

- `Select camera-visible chunks`: Selects the chunks visible to the scene camera and currently visible in the map view.

#### 2.5.0 Snapshot Controls

The Chunky GUI was improved and reorganized in the [Chunky 2.5.0 snapshots](../../../getting_started/configuring_chunky_launcher#advanced-settings), and several controls from other places were relocated to the `Map` tab right-click menu.

<div class="figure" id="figure-3-2-5-5">
  <p class="figure">
  Figure 3.2.5.5: Map right-click menu in Chunky 2.5.0 snapshots
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/chunky_map_rightclick_2.5.0.png">
      <img class="figure" src="../../../img/user_interface/chunky_map_rightclick_2.5.0.png" alt="Map right-click menu in Chunky 2.5.0 snapshots">
    </a>
  </div>
</div>

- `Load selected chunks`: Loads the selected chunks.

- `Export selected chunks...`: Opens a 'Save As' dialog box to export the selected chunks as region files containing the chunks to a .ZIP archive.

- `Save map view as...`: Opens a 'Save As' dialog box to export the current map view as a PNG file.

- `Delete selected chunks`: Displays a confirmation prompt for the user to delete the selected chunks from the currently-loaded world. (Chunks will be re-generated by Minecraft, but all user-created data in the chunks will be lost. It is a good idea to keep a backup of your world before performing this action.)

---

### Details

The map view displays a box containing information about the chunk, if any, and the block, if any, that the cursor is hovering over, and the size of the current chunk selection.

<div class="figure" id="figure-3-2-5-6">
  <p class="figure">
  Figure 3.2.5.6: The map view details box
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/map_details.png">
      <img class="figure" src="../../../img/user_interface/map_details.png" alt="Map details">
    </a>
  </div>
</div>

The three lines in the box provide the following information:

1. The coordinates of the chunk that the cursor is hovering over; and the biome that is at the location of the block that is at Y = 0 and the X- and Z-coordinates of the block over which the cursor is hovering.

2. The X- and Z-coordinates of the block over which the cursor is hovering.

3. The number of chunks that are currently selected.

---

### 2.5.0 Snapshot Controls

The Chunky GUI was improved and reorganized in the [Chunky 2.5.0 snapshots](../../../getting_started/configuring_chunky_launcher#advanced-settings).

The right control panel contains only controls from the [`Map View`](../right_panel_controls/map_view) tab, and is integrated into the `Map` tab. Therefore, the right control panel is only visible when the `Map` tab is open.

<div class="figure" id="figure-3-2-5-7">
  <p class="figure">
  Figure 3.2.5.7: The Map tab in Chunky 2.5.0 snapshots
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/map_2.5.0.png">
      <img class="figure" src="../../../img/user_interface/map_2.5.0.png" alt="2.5.0 Snapshot Map tab">
    </a>
  </div>
</div>

- `Coordinates`: The map view is always centered over the X- and Z-coordinates displayed.

    - `x`: Input field for the X-coordinate over which the map view is centered.

    - `z`: Input field for the Z-coordinate over which the map view is centered.

- `Show players`: Changes whether the icons that indicate the locations of players in the world are visible.

---

--8<-- "includes/abbreviations.md"
