---
min_chunky_version: 2_05_00
---

# File (Scene Management)

The scene management controls are located in the menu bar at the top of the window, under the <samp>File</samp> dropdown menu.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>File</samp> menu (Scene management controls)</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/menu_bar/file/file_menu.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/menu_bar/file/file_menu.png" alt="File menu (Scene management controls)">
    </a>
  </div>
</div>

- <samp>File</samp>: Opens a dropdown menu that contains scene management controls.

    - <samp>Load...</samp>: Opens the ['Load Chunky Scene'](#load-chunky-scene) dialog box. Alternatively, use the key combination <kbd>Ctrl</kbd> + <kbd>O</kbd>.

    - <samp>Load from file...</samp>: Opens a file explorer dialog box to browse for a "scene.json" file to load a scene. Alternatively, use the key combination <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>O</kbd>.

    - <samp>Save</samp>: Saves the currently-loaded scene, including any render progress. If the currently-loaded scene has not previously been saved, then this control will save the scene with an automatically-generated name. Alternatively, use the key combination <kbd>Ctrl</kbd> + <kbd>S</kbd> while the [<samp>Render Preview</samp>](../../render_preview) tab is not in focus.

    - <samp>Save as...</samp>: Opens the 'Save scene as...' dialog box, which allows the currently-loaded scene, including any render progress, to be saved as a new scene with a new name. The new scene becomes the currently-loaded scene. Alternatively, use the key combination <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>S</kbd> while the [<samp>Render Preview</samp>](../../render_preview) tab is not in focus.

    - <samp>Save a copy...</samp>: Opens the 'Save a copy...' dialog box, which allows the currently-loaded scene, including any render progress, to be saved as a new scene with a new name. The new scene is not loaded into Chunky, and the currently-loaded scene remains loaded.

    - <samp>Quit</samp>: Quits Chunky. Note that this does not save any render progress. Alternatively, use the key combination <kbd>Ctrl</kbd> + <kbd>Q</kbd>.

---

## Load Chunky Scene

The 'Load Chunky Scene' dialog box, shown in [Figure 2](#figure-2), displays a list of all detected scenes in the "scenes" directory of the Chunky [settings directory](../../../chunky_launcher/chunky_launcher_gui#advanced-settings), along with some render progress details for each scene, and more scene management controls at the bottom.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Load Chunky Scene' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/menu_bar/file/load_chunky_scene_dialog_box.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/menu_bar/file/load_chunky_scene_dialog_box.png" alt="'Load Chunky Scene' dialog box">
    </a>
  </div>
</div>

The column headers can be clicked to reorder the scenes by any listed detail. A scene in the list can be clicked to select it.

- <samp>Change scenes directory</samp>: Opens a file explorer dialog box to select a directory to which Chunky should save scenes.

- <samp>Open scenes directory</samp>: Opens the directory to which Chunky saves scenes.

- <samp>Delete</samp>: Displays a confirmation prompt for the user to delete the currently-selected scene.

- <samp>Export</samp>: Opens a 'Save As' dialog box to save the currently-selected scene as a ZIP file to another location.

- <samp>Cancel</samp>: Closes the 'Load Chunky Scene' dialog box.

- <samp>Load selected scene</samp>: Loads the currently-selected scene, including any saved render progress. Alternatively, the scene can be loaded by double-clicking its list entry.

--8<-- "includes/abbreviations.md"
