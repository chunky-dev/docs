---
max_chunky_version: 2_04_99
---

# Options

The <samp>Options</samp> tab, located in the right control panel, contains some Chunky options.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Options</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/right_panel_controls/options/options_tab.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/right_panel_controls/options/options_tab.png" alt="Options tab">
    </a>
  </div>
</div>

- <samp>Edit Resource Packs</samp>: Opens the ['Resource Packs'](#resource-packs) dialog box.

- <samp>Disable default textures (needs restart)</samp>: Disables the textures automatically loaded by Chunky from any detected Minecraft client.jar, and reverts to Chunky's internal textures (which are not recommended), and any loaded resource packs. Chunky must be restarted for changes to take effect.

- <samp>Single color textures</samp>: Changes block textures to a single color which is the average of the colors on each pixel on the texture of the block. Chunky must be restarted for changes to take effect.

- <samp>Show launcher when starting Chunky</samp>: Changes whether the Chunky launcher is shown when starting Chunky. It is recommended that this remain enabled.

- <samp>Open Scenes Directory</samp>: Opens the directory to which Chunky saves scenes.

- <samp>Change Scenes Directory</samp>: Opens the ['Scene Directory Picker'](#scene-directory-picker) dialog box.

---

## Resource Packs

The 'Resource Packs' dialog box, shown in [Figure 2](#figure-2), displays a list of currently-loaded resource packs along with some management controls at the bottom.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Resource Packs' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/right_panel_controls/options/resource_packs_dialog_box.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/right_panel_controls/options/resource_packs_dialog_box.png" alt="'Resource Packs' dialog box">
    </a>
  </div>
</div>

A resource pack in the list can be clicked to select it.

- <samp>Up</samp>: Moves the selected resource pack above the resource pack that is immediately above it.

- <samp>Down</samp>: Moves the selected resource pack below the resource pack that is immediately below it.

- <samp>Add</samp>: Opens a file explorer dialog box to browse for a ZIP file, JAR file, or "pack.mcmeta" file for Chunky to load as a resource pack.

- <samp>Remove</samp>: Removes the selected resource pack from the list.

- <samp>Apply</samp>: Applies the new resource pack configuration as the default and closes the 'Resource Packs' dialog box.

---

## Scene Directory Picker

The 'Scene Directory Picker' dialog box, shown in [Figure 3](#figure-3), allows the directory in which Chunky stores scenes to be changed.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: 'Scene Directory Picker' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/right_panel_controls/options/scene_directory_picker_dialog_box.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/right_panel_controls/options/scene_directory_picker_dialog_box.png" alt="'Scene Directory Picker' dialog box">
    </a>
  </div>
</div>

- <samp>Browse</samp>: Opens a file explorer dialog box to browse for a directory to which Chunky should save scenes. Alternatively, type the folder path in the input field to the left.

- <samp>Create this directory</samp>: Enables or disables the creation of the directory (folder) specified in the input field above upon clicking <samp>Ok</samp>. This control only appears if the folder specified by the path typed in the input field does not exist.

- <samp>Ok</samp>: Exits the 'Scene Directory Picker' dialog box and applies any changes made.

- <samp>Cancel</samp>: Exits the 'Scene Directory Picker' dialog box without applying any changes made.

--8<-- "includes/abbreviations.md"
