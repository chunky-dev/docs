---
min_chunky_version: 2_05_00
---

# Textures & Resource Packs

The <samp>Textures & Resource Packs</samp> tab contains controls for the textures and for resource packs.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Textures & Resource Packs</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/textures_and_resource_packs_tab.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/textures_and_resource_packs_tab.png" alt="Textures & Resource Packs tab">
    </a>
  </div>
</div>

- <samp>Enable biome colors</samp>: Changes whether foliage as rendered in Chunky is tinted according to in-game biome foliage coloring.

- <samp>Enable biome blending</samp>: Changes whether biome colors at transitions between different biomes are blended.

- <samp>Single color textures</samp>: Changes block textures to a single color which is the average of the colors on each pixel on the texture of the block.

- <samp>Edit resource packs</samp>: Opens the ['Select Resource Packs'](#select-resource-packs) dialog box.

---

## Select Resource Packs

The 'Select Resource Packs' dialog box, shown in [Figure 2](#figure-2), allows management of any resource packs to be loaded in Chunky.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Select Resource packs' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box.png" alt="Select Resource Packs dialog box">
    </a>
  </div>
</div>

- <samp>Available Resource Packs</samp>: List of all resource packs detected in the "resourcepacks" directory of the set Minecraft directory, in alphabetical order. A resource pack in the list can be clicked to select it.

- <samp>Selected resource packs</samp>: List of all resource packs selected to be loaded, including any pre-loaded Minecraft "version.jar" at the bottom. A resource pack in the list can be clicked to select it.

- <img src="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box_right_arrow.png" style="vertical-align: middle;"> : Moves the selected resource pack from the <samp>Available resource packs</samp> list to the <samp>Selected resource packs</samp> list. This control is only available if a selected resource pack be in the <samp>Available resource packs</samp> list.

- <img src="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box_left_arrow.png" style="vertical-align: middle;"> : Removes the selected resource pack from the <samp>Selected resource packs</samp> list to the <samp>Available resource packs</samp> list. This control is only available if a selected resource pack be in the <samp>Selected resource packs</samp> list. If the selected resource pack is not located within the "resourcepacks" directory of the set Minecraft directory, then this control does not actually move that resource pack to the "resourcepacks" directory of the set Minecraft directory. It simply removes it from the list of resource packs selected to be loaded; no files are moved.

- <img src="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box_up_arrow.png" style="vertical-align: middle;"> : Moves the selected resource pack above the resource pack that is immediately above it. This control is only available if the resource pack on which the control exists is not at the top of the list and the resource pack is not a pre-loaded Minecraft "version.jar".

- <img src="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box_down_arrow.png" style="vertical-align: middle;"> : Moves the selected resource pack below the resource pack that is immediately below it. This control is only available if the resource pack on which the control exists is not immediately above a pre-loaded Minecraft "version.jar" and the resource pack is not a pre-loaded Minecraft "version.jar".

- <samp>Right-click</samp>: Opens a [context menu](#right-click-menu) with more controls when used within either of the lists.

- <samp>Browse</samp>: Opens a file explorer dialog box to browse for a ZIP file, JAR file, or "pack.mcmeta" file for Chunky to load as a resource pack.

- <samp>Disable default textures (requires restart)</samp>: Disables the textures automatically loaded by Chunky from any detected Minecraft "version.jar", and reverts to Chunky's internal textures (which are not recommended), and any loaded resource packs. Chunky must be restarted for changes to take effect.

- <samp>Cancel</samp>: Closes the 'Select Resource Packs' dialog box without applying any changes.

- <samp>Apply as default</samp>: Applies the new resource pack configuration as the default and closes the 'Select Resource Packs' dialog box.

### Right-click Menu

Right-clicking within either of the resource pack lists opens a context menu containing more controls.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: 'Select Resource packs' dialog box right-click menu</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box_right_click_menu.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/textures_and_resource_packs/select_resource_packs_dialog_box_right_click_menu.png" alt="Select Resource Packs dialog box right-click menu">
    </a>
  </div>
</div>

- <samp>Open in system file browser</samp>: Opens in a file explorer window the directory containing the resource pack on which the right-click was performed.

- <samp>Select all</samp>: Selects all resource packs in the list in which the right-click was performed.

- <samp>Deselect all</samp>: Deselects all resource packs in the list in which the right-click was performed.

--8<-- "includes/abbreviations.md"
