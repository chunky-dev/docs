# Textures & Resource Packs

---

The `Textures & Resource Packs` tab, which, in the [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings), is the ninth tab in the left control panel, contains controls for the textures and for resource packs.

<div class="figure" id="figure-3-2-19-1">
  <p class="figure">
  Figure 3.2.19.1: The Textures & Resource Packs tab
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/textures_and_resource_packs_tab.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/textures_and_resource_packs_tab.png" alt="Textures & Resource Packs tab">
  </a>
</div>

---

## 2.5.0 Snapshot Controls

The Chunky GUI was improved and reorganized in the [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

The `Textures & Resource Packs` tab was added to the left control panel, and some controls from other places were relocated to the tab.

- `Enable biome colors`: Changes whether foliage as rendered in Chunky is tinted according to in-game biome foliage coloring.

- `Enable biome blending`: Changes whether biome colors at transitions between different biomes are blended.

- `Single color textures`: Changes block textures to a single color which is the average of the colors on each pixel on the texture of the block.

- `Edit resource packs`: Opens the [`Select Resource Packs`](#select-resource-packs) dialog box.

### Select Resource Packs

The `Select Resource Packs` dialog box, shown in [Figure 3.2.19.2](#figure-3-2-19-2), allows management of any resource packs to be loaded in Chunky.

<div class="figure" id="figure-3-2-19-2">
  <p class="figure">
  Figure 3.2.19.2: Select Resource packs dialog box
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/select_resource_packs.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/select_resource_packs.png" alt="Select Resource Packs dialog box">
  </a>
</div>

- `Available Resource Packs`: List of all resource packs detected in the "resourcepacks" directory of the set Minecraft directory, in alphabetical order. A resource pack in the list can be clicked to select it.

- `Selected resource packs`: List of all resource packs selected to be loaded, including any pre-loaded Minecraft version.jar at the bottom. A resource pack in the list can be clicked to select it.

- <img src="../../../../img/user_interface/render_controls/select_resource_packs_right_arrow.png"> : Moves the selected resource pack from the `Available resource packs` list to the `Selected resource packs` list. This control is only available if a selected resource pack be in the `Available resource packs` list.

- <img src="../../../../img/user_interface/render_controls/select_resource_packs_left_arrow.png"> : Removes the selected resource pack from the `Selected resource packs` list to the `Available resource packs` list. This control is only available if a selected resource pack be in the `Selected resource packs` list. If the selected resource pack is not located within the "resourcepacks" directory of the set Minecraft directory, then this control does not actually move that resource pack to the "resourcepacks" directory of the set Minecraft directory. It simply removes it from the list of resource packs selected to be loaded; no files are changed.

- <img src="../../../../img/user_interface/render_controls/select_resource_packs_up_arrow.png"> : Moves the selected resource pack above the resource pack that is immediately above it. This control is only available if the resource pack on which the control exists is not at the top of the list and the resource pack is not a pre-loaded Minecraft client.jar.

- <img src="../../../../img/user_interface/render_controls/select_resource_packs_down_arrow.png"> : Moves the selected resource pack below the resource pack that is immediately below it. This control is only available if the resource pack on which the control exists is not immediately above a pre-loaded Minecraft client.jar and the resource pack is not a pre-loaded Minecraft client.jar.

- `Right-click`: Opens a [context menu](#right-click-menu) with more controls when used within either of the lists.

- `Browse`: Opens a file explorer dialog box to browse for a ZIP file, JAR file, or pack.mcmeta file for Chunky to load as a resource pack.

- `Disable default textures (requires restart)`: Disables the textures automatically loaded by Chunky from any detected Minecraft client.jar, and reverts to Chunky's internal textures (which are not recommended), and any loaded resource packs. Chunky must be restarted for changes to take effect.

- `Cancel`: Closes the `Select Resource Packs` dialog box without applying any changes.

- `Apply as default`: Applies the new resource pack configuration as the default and closes the `Select Resource Packs` dialog box.

#### Right-click menu

Right-clicking within either of the resource pack lists opens a context menu containing more controls.

<div class="figure" id="figure-3-2-19-3">
  <p class="figure">
  Figure 3.2.19.3: Select Resource packs dialog box right-click menu
  </p>
  <hr>
  <a href="../../../../img/user_interface/render_controls/select_resource_packs_rightclick_menu.png">
  <img class="figure" src="../../../../img/user_interface/render_controls/select_resource_packs_rightclick_menu.png" alt="Select Resource Packs dialog box right-click menu">
  </a>
</div>

- `Open in system file browser`: Opens in a file explorer window the directory containing the resource pack on which the right-click was performed.

- `Select all`: Selects all resource packs in the list in which the right-click was performed.

- `Deselect all`: Deselects all resource packs in the list in which the right-click was performed.

---

--8<-- "includes/abbreviations.md"
