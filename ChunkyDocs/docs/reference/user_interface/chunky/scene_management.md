---
max_chunky_version: 2_04_99
---

# Scene Management

The scene management controls are located above the three control panels, near the top of the window.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: Scene Management Controls</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/scene_management/scene_management.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/scene_management/scene_management.png" alt="Scene Management Controls">
    </a>
  </div>
</div>

- <samp>Scene: (name)</samp>: Input field for the name of the currently-loaded scene. Press <kbd>Enter</kbd> to apply.

- <img src="../../../../img/reference/user_interface/chunky/scene_management/save_icon.png" alt="Save Scene Icon" style="vertical-align: middle;"> <samp>Save Scene</samp>: Saves the currently-loaded scene, including any render progress.

- <img src="../../../../img/reference/user_interface/chunky/scene_management/load_icon.png" alt="Load Scene Icon" style="vertical-align: middle;"> <samp>Load Scene</samp>: Opens the ['Select 3D Scene'](#select-3d-scene) dialog box.

- <samp>Save current frame</samp>: Opens a 'Save As' dialog box to save the current frame of the render preview, the output file format of which can be selected.

- <samp>Copy current frame</samp>: Copies the current frame of the render preview to the clipboard in the PNG file format.

---

## Select 3D Scene

The 'Select 3D Scene' dialog box, shown in [Figure 2](#figure-2), displays a list of all detected scenes in Chunky's "scenes" directory, along with some render progress details for each scene, and more scene management controls at the bottom.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Select 3D Scene' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/scene_management/select_3d_scene_dialog_box.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/scene_management/select_3d_scene_dialog_box.png" alt="'Select 3D Scene' dialog box">
    </a>
  </div>
</div>

The column headers can be clicked to reorder the scenes by any listed detail. A scene in the list can be clicked to select it.

- <samp>Delete</samp>: Displays a confirmation prompt for the user to delete the currently-selected scene.

- <samp>Export</samp>: Opens a 'Save As' dialog box to save the currently-selected scene as a ZIP file to another location.

- <samp>Cancel</samp>: Closes the 'Select 3D Scene' dialog box.

- <samp>Load selected scene</samp>: Loads the currently-selected scene, including any saved render progress. Alternatively, the scene can be loaded by double-clicking its list entry.

--8<-- "includes/abbreviations.md"
