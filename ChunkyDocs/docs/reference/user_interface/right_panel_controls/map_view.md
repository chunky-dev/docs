# Map View

---

The `Map View` tab, located in the right control panel, contains controls for the map view.

<div class="figure" id="figure-3-2-7-1">
  <p class="figure">
  Figure 3.2.7.1: The Map View tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/right_panel/map_view_tab.png">
      <img class="figure" src="../../../../img/user_interface/right_panel/map_view_tab.png" alt="Map View tab">
    </a>
  </div>
</div>

---

## Controls

- `Change World`: Opens the [`Select World`](#select-world) dialog box.

- `Reload`: Reloads the currently-loaded world.

- `Dimension`: Switch the map view to display one of the vanilla Minecraft dimensions.

    - `Overworld`: Switches the map view to display the Overworld dimension of the currently-loaded world.

    - `Nether`: Switches the map view to display the Nether dimension of the currently-loaded world. If the Nether for the world has not been generated, then the map view will display emptiness.

    - `The End`: Switches the map view to display the End dimension of the currently-loaded world. If the End for the world has not been generated, then the map view will display emptiness.

- `Scale`: Changes the scale of the map, which is measured in pixels per chunk. This results in the field of view (zoom) of the map view changing. (Alternatively, the scroll wheel can be used in the [`Map`](../../map#controls) tab to change map scale.)

- `Min Y Level`: Changes the minimum Y level of blocks to be displayed in the map view. Values beyond the range of the slider can be entered into the associated input field.

- `Max Y Level`: Changes the maximum Y level of blocks to be displayed in the map view. Values beyond the range of the slider can be entered into the associated input field.

- `Coordinates`: The map view is always centered on the X- and Z-coordinates displayed.

    - `X=`: Input field for the X-coordinate over which the map view is centered.

    - `Z=`: Input field for the Z-coordinate over which the map view is centered. 

- `track player`: Centers the map view on the coordinates of the player.

- `track camera`: Centers the map view on the coordinates of the camera.

---

### 2.5.0 Snapshot Controls

The Chunky GUI was improved and reorganized in the [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

The right control panel contains only controls from the `Map View` tab, and is integrated into the [`Map`](../../map#250-snapshot-controls-1) tab. Therefore, the right control panel is only visible when the [`Map`](../../map#250-snapshot-controls-1) tab is open.

---

### Select World

The `Select World` dialog box, shown in [Figure 3.2.7.2](#figure-3-2-7-2), displays a list of all detected worlds, along with some details about each world, and some world browsing controls at the bottom.

<div class="figure" id="figure-3-2-7-2">
  <p class="figure">
  Figure 3.2.7.2: Select World dialog box
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/right_panel/select_world.png">
      <img class="figure" src="../../../../img/user_interface/right_panel/select_world.png" alt="Select World dialog box">
    </a>
  </div>
</div>

By default, Chunky will display worlds from the "saves" folder of the `Minecraft directory` [specified in the Chunky Launcher](../../../../getting_started/configuring_chunky_launcher#controls).

The column headers can be clicked to reorder the worlds by any listed detail. A world in the list can be clicked to select it.

- `Change world directory`: Opens a file explorer dialog box to select a folder from which Chunky should display worlds in the list.

- `Browse for another world`: Opens a file explorer dialog box to select a world for Chunky to load. The parent folder of the world that is selected becomes the folder from which Chunky displays worlds in the list.

- `Load selected world`: Loads the currently-selected world. Alternatively, the world can be loaded by double-clicking its list entry.

---

--8<-- "includes/abbreviations.md"
