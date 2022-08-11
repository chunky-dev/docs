# Scene Management

---

The scene management controls are located above the three control panels, near the top of the window.

<div class="figure" id="figure-3-2-4-1">
  <p class="figure">
  Figure 3.2.4.1: Scene Management Controls
  </p>
  <hr>
  <a href="../../../img/user_interface/scene_management.png">
  <img class="figure" src="../../../img/user_interface/scene_management.png" alt="Scene Management Controls">
  </a>
</div>

---

## Controls

- `Scene: (name)`: Input field for the name of the currently-loaded scene. Press [Enter] to apply.

- <img src="../../../img/user_interface/disk.png" alt="Save Scene Icon"> `Save Scene`: Saves the currently-loaded scene, including any render progress.

- <img src="../../../img/user_interface/load.png" alt="Load Scene Icon"> `Load Scene`: Opens the [`Select 3D Scene`](#select-3d-scene) dialog box.

- `Save current frame`: Opens a 'Save As' dialog box to save the current frame of the render preview, the output file format of which can be selected.

- `Copy current frame`: Copies the current frame of the render preview to the clipboard in the PNG file format.

---

### 2.5.0 Snapshot Controls

The scene management controls were reorganized in the [Chunky 2.5.0 snapshots](../../../getting_started/configuring_chunky_launcher#advanced-settings). Some controls have been relocated into the menu bar, under the [`File`](../menu_bar/file) dropdown menu, and other controls have been relocated into the Render Preview right-click menu.

- `Scene (name)`: This control was relocated to the [`Save scene as...`](../menu_bar/file#250-snapshot-controls) dialog box.

- <img src="../../../img/user_interface/disk.png" alt="Save Scene Icon"> `Save Scene`: This control was relocated to the menu bar, under the [`File`](../menu_bar/file) dropdown menu.

- <img src="../../../img/user_interface/load.png" alt="Load Scene Icon"> `Load Scene`: This control was relocated to the menu bar, under the [`File`](../menu_bar/file) dropdown menu.

- `Save current frame`: This control was relocated to the [`Render Preview` tab right-click menu](../render_preview#250-snapshot-controls) and renamed to `Save image as...`.

- `Copy current frame`: This control was relocated to the [`Render Preview` tab right-click menu](../render_preview#250-snapshot-controls) and renamed to `Copy image to clipboard`.

---

### Select 3D Scene

The `Select 3D Scene` dialog box, shown in [Figure 3.2.4.2](#figure-3-2-4-2), displays a list of all detected scenes in Chunky's "scenes" directory, along with some render progress details for each scene, and more scene management controls at the bottom.

<div class="figure" id="figure-3-2-4-2">
  <p class="figure">
  Figure 3.2.4.2: Select 3D Scene dialog box
  </p>
  <hr>
  <a href="../../../img/user_interface/select_3d_scene.png">
  <img class="figure" src="../../../img/user_interface/select_3d_scene.png" alt="Select 3D Scene dialog box">
  </a>
</div>

The column headers can be clicked to reorder the scenes by any listed detail. A scene in the list can be clicked to select it.

- `Delete`: Displays a confirmation prompt for the user to delete the currently-selected scene.

- `Export`: Opens a 'Save As' dialog box to save the currently-selected scene as a .ZIP file to another location.

- `Cancel`: Closes the `Select 3D Scene` dialog box.

- `Load selected scene`: Loads the currently-selected scene, including any saved render progress. Alternatively, the scene can be loaded by double-clicking its list entry.

#### 2.5.0 Snapshot Controls

The `Select 3D Scene` dialog box was improved and renamed to [`Load Chunky Scene`](../menu_bar/file#load-chunky-scene) in the [Chunky 2.5.0 snapshots](../../../getting_started/configuring_chunky_launcher#advanced-settings).

---

--8<-- "includes/abbreviations.md"
