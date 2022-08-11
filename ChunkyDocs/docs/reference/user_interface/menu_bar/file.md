# File (Scene Management)

---

The scene management controls are located in the menu bar at the top of the window, under the `File` dropdown menu.

<div class="figure" id="figure-3-2-2-1">
  <p class="figure">
  Figure 3.2.2.1: Scene Management Controls in Chunky 2.5.0 snapshots
  </p>
  <hr>
  <a href="../../../../img/user_interface/scene_management_2.5.0.png">
  <img class="figure" src="../../../../img/user_interface/scene_management_2.5.0.png" alt="Scene Management Controls in Chunky 2.5.0 snapshots">
  </a>
</div>

---

## 2.5.0 Snapshot Controls

The scene management controls were reorganized in the [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

These controls only exist in this format in the 2.5.0 snapshots.

- `File`: Opens a dropdown menu that contains scene management controls.

    - `Load...`: Opens the [`Load Chunky Scene`](#load-chunky-scene) dialog box. Alternatively, use the key combination `[Ctrl]+[O]`.

    - `Load from file...`: Opens a file explorer dialog box to browse for a <scenename\>.json file to load a scene. Alternatively, use the key combination `[Ctrl]+[Shift]+[O]`.

    - `Save`: Saves the currently-loaded scene, including any render progress. If the currently-loaded scene has not previously been saved, then this control will save the scene with an automatically-generated name. Alternatively, use the key combination `[Ctrl]+[S]` while the [`Render Preview`](../../render_preview) tab is not in focus.

    - `Save as...`: Opens the `Save scene as...` dialog box, which allows the currently-loaded scene, including any render progress, to be saved as a new scene with a new name. The new scene becomes the currently-loaded scene. Alternatively, use the key combination `[Ctrl]+[Shift]+[S]` while the [`Render Preview`](../../render_preview) tab is not in focus.

    - `Save a copy...`: Opens the `Save a copy...` dialog box, which allows the currently-loaded scene, including any render progress, to be saved as a new scene with a new name. The new scene is not loaded into Chunky, and the currently-loaded scene remains loaded.

    - `Quit`: Quits Chunky. Note that this does not save any render progress. Alternatively, use the key combination `[Ctrl]+[Q]`.

---

### Load Chunky Scene

The `Load Chunky Scene` dialog box, shown in [Figure 3.2.2.2](#figure-3-2-2-2), displays a list of all detected scenes in Chunky's "scenes" directory, along with some render progress details for each scene, and more scene management controls at the bottom.

<div class="figure" id="figure-3-2-2-2">
  <p class="figure">
  Figure 3.2.2.2: Load Chunky Scene dialog box
  </p>
  <hr>
  <a href="../../../../img/user_interface/load_chunky_scene.png">
  <img class="figure" src="../../../../img/user_interface/load_chunky_scene.png" alt="Load Chunky Scene dialog box">
  </a>
</div>

The column headers can be clicked to reorder the scenes by any listed detail. A scene in the list can be clicked to select it.

- `Change scenes directory`: Opens a file explorer dialog box to select a directory to which Chunky should save scenes.

- `Open scenes directory`: Opens the directory to which Chunky saves scenes.

- `Delete`: Displays a confirmation prompt for the user to delete the currently-selected scene.

- `Export`: Opens a 'Save As' dialog box to save the currently-selected scene as a .ZIP file to another location.

- `Cancel`: Closes the `Load Chunky Scene` dialog box.

- `Load selected scene`: Loads the currently-selected scene, including any saved render progress. Alternatively, the scene can be loaded by double-clicking its list entry.

---

--8<-- "includes/abbreviations.md"
