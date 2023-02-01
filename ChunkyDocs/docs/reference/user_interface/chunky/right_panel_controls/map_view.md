---
max_chunky_version: 2_04_99
---

# Map View

The <samp>Map View</samp> tab, located in the right control panel, contains controls for the map view.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Map View</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/right_panel_controls/map_view/map_view_tab.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/right_panel_controls/map_view/map_view_tab.png" alt="Map View tab">
    </a>
  </div>
</div>

- <samp>Change World</samp>: Opens the ['Select World'](#select-world) dialog box.

- <samp>Reload</samp>: Reloads the currently-loaded world.

- <samp>Dimension</samp>: Switch the map view to display one of the vanilla Minecraft dimensions.

    - <samp>Overworld</samp>: Switches the map view to display the Overworld dimension of the currently-loaded world.

    - <samp>Nether</samp>: Switches the map view to display the Nether dimension of the currently-loaded world. If the Nether for the world has not been generated, then the map view will display emptiness.

    - <samp>The End</samp>: Switches the map view to display the End dimension of the currently-loaded world. If the End for the world has not been generated, then the map view will display emptiness.

- <samp>Scale</samp>: Changes the scale of the map, which is measured in pixels per chunk. This results in the field of view (zoom) of the map view changing. (Alternatively, the scroll wheel can be used in the [<samp>Map</samp>](../../map) tab to change map scale.)

- <samp>Min Y Level</samp>: Changes the minimum Y level of blocks to be displayed in the map view. Values beyond the range of the slider can be entered into the associated input field.

- <samp>Max Y Level</samp>: Changes the maximum Y level of blocks to be displayed in the map view. Values beyond the range of the slider can be entered into the associated input field.

- <samp>Coordinates</samp>: The map view is always centered on the X- and Z-coordinates displayed.

    - <samp>X=</samp>: Input field for the X-coordinate to center the map view over.

    - <samp>Z=</samp>: Input field for the Z-coordinate to center the map view over.

- <samp>track player</samp>: Centers the map view on the coordinates of the player.

- <samp>track camera</samp>: Centers the map view on the coordinates of the camera.

- <samp>Show players</samp>: Changes whether the icons that indicate the locations of players in the world are visible.

---

## Select World

The 'Select World' dialog box, shown in [Figure 2](#figure-2), displays a list of all detected worlds, along with some details about each world, and some world browsing controls at the bottom.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Select World' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/right_panel_controls/map_view/select_world_dialog_box.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/right_panel_controls/map_view/select_world_dialog_box.png" alt="'Select World' dialog box">
    </a>
  </div>
</div>

By default, Chunky will display worlds from the "saves" folder of the Minecraft directory [specified in the Chunky Launcher](../../../../../getting_started/configuring_chunky_launcher#optional-configuration).

The column headers can be clicked to reorder the worlds by any listed detail. A world in the list can be clicked to select it.

- <samp>Change world directory</samp>: Opens a file explorer dialog box to select a folder from which Chunky should display worlds in the list.

- <samp>Browse for another world</samp>: Opens a file explorer dialog box to select a world for Chunky to load. The parent folder of the world that is selected becomes the folder from which Chunky displays worlds in the list.

- <samp>Load selected world</samp>: Loads the currently-selected world. Alternatively, the world can be loaded by double-clicking its list entry.

--8<-- "includes/abbreviations.md"
