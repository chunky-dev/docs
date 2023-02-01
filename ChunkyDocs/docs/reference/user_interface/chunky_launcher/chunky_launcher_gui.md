# Chunky Launcher GUI

The Chunky Launcher contains controls that are set before launching Chunky.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The Chunky Launcher</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/chunky_launcher.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/chunky_launcher.png" alt="The Chunky Launcher">
    </a>
  </div>
</div>

- <samp>Version select</samp>: Drop down list which allows you to select a downloaded Chunky version to launch.

- <samp>Check for update</samp>: Checks for updates on the chosen update site.

- <samp>Minecraft directory</samp>: Displays the path to the directory to which Minecraft is installed. It can be changed by clicking the <samp>...</samp> button immediately to the right of the text box.

- <samp>Memory limit (MiB)</samp>: Changes the amount of RAM that is allocated to Chunky. The default is 1024 MiB; however, it is highly recommended that you raise this value to better reflect the amount of memory in your system. Please take into account that the operating system and other applications will also require some memory, so don't over-set this. If Chunky fails to launch if this is raised past 2000 MiB, double-check that your Java installation is 64-bit.

- <samp>Always open Launcher</samp>: Changes whether the Launcher is shown when starting Chunky. If it becomes disabled, it is possible to access the launcher again via the command line or an [option in Chunky]{% if extra.chunky < 2_05_00 %}(../../chunky/right_panel_controls/options){% endif %}{% if extra.chunky >= 2_05_00 %}(../../chunky/render_controls/advanced){% endif %}. This is slightly more complicated, however, so it is recommended to keep this option enabled.

- <samp>Cancel</samp>: Closes the Chunky Launcher.

- <samp>Launch</samp>: Attempts to launch the selected version of Chunky with the options set in the Launcher.

## Advanced Settings

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Chunky Launcher Advanced Settings</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/chunky_launcher_advanced_settings.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/chunky_launcher_advanced_settings.png" alt="Chunky Launcher Advanced Settings">
    </a>
  </div>
</div>

- <samp>Update Site</samp>: Input field for the source of Chunky updates.

	  - `https://chunkyupdate.llbit.se/`: This should be used to obtain Chunky 1.X, which supports worlds saved in Minecraft versions up to 1.12.2.

    - `https://chunkyupdate2.llbit.se/`: This is for llbit's Chunky 2.0 for Minecraft 1.13. To obtain the latest version, which is "2.0beta6", you must set the <samp>Release channel</samp> to <samp>Snapshot</samp>. Otherwise, you will be stuck with an older version.

	  - `https://chunkyupdate.lemaik.de/`: This is the new default update site used to obtain Chunky 2.x.

    - `https://chunky-pr.lemaik.de/`: This update site is used to download builds of open pull requests. Click <samp>Reload</samp> next to the <samp>Release channel</samp> dropdown menu and then set the <samp>Release Channel</samp> to <samp>PR #xxxx</samp>, with "xxxx" being the number of the open pull request. For more information, read <a href="https://github.com/leMaik/chunky-pr-as-update-site/blob/master/README.md" target="_blank">this page</a>.

- <samp>Reset</samp>: Resets the <samp>Update Site</samp> to the default of `https://chunkyupdate.lemaik.de/`.

- <samp>Java Runtime</samp>: Displays the path of the runtime used for Chunky. It can be changed by clicking the <samp>...</samp> button immediately to the right of the text box. It does not change the runtime used for the Launcher.

- <samp>Java options</samp>: Input field for Java options that will be set for Chunky upon launch. See [below](#java-options) for the list of Java options.

- <samp>Chunky options</samp>: Input field for options specific to Chunky that will be set upon launch. See [below](#chunky-options) for the list of Chunky options.

- <samp>Enable debug console</samp>: Enables the debug console, which is a separate window that opens when Chunky is launched. The debug console logs information that is useful for debugging issues with Chunky.

- <samp>Verbose logging</samp>: Enables additional information to be logged in the debug console to further help fix issues.

- <samp>Close console when Chunky exits</samp>: Changes whether the debug console will close when Chunky exits normally. Typically, this can be left enabled. If an exception or error causes Chunky to crash and exit abnormally, the debug console will remain open and readable.

- <samp>Release channel</samp>: Sets the release channel used by the Launcher when checking for updates. The different release channels set the type of release that Chunky attempts to download when checking for updates.

    - <samp>Stable</samp>: Downloads stable releases of Chunky, which generally have fewer bugs than Stable Snapshot releases or Snapshot releases do.

    - <samp>Stable Snapshot</samp>: Downloads stable snapshot builds of Chunky from the <a href="https://github.com/chunky-dev/chunky/tree/chunky-2.4.x" target="_blank">chunky-2.4.x</a> branch. Generally, these releases may contain new features, bug fixes, and potentially more bugs, but are considered more stable than Snapshot releases.

    - <samp>Snapshot</samp>: Downloads snapshot builds of Chunky from the <a href="https://github.com/chunky-dev/chunky/tree/master" target="_blank">master</a> branch. These releases contain the latest bug fixes and new features, but potentially the most new bugs.

    - <samp>PR #xxxx</samp>: Downloads the latest build of the open pull request, "xxxx" being the number of which, if the <samp>Update site</samp> is set to `https://chunky-pr.lemaik.de/`.

- <samp>Settings directory</samp>: Displays the path of the Chunky settings directory.

- <samp>Open</samp>: Opens the Chunky settings directory.

- <samp>Manage plugins</samp>: Opens the ['Plugin Manager'](#plugin-manager) dialog box, which is used to manage installed [plugins](../../../../plugins/chunky_plugins).

### Java options

Separate Java options from each other with a space.

- `-Dprism.order=sw`: Add this if the Chunky Launcher or the Chunky window appear blank when started. This is caused by an issue with the JavaFX hardware renderer for Windows. The only known solution is to add the listed Java command/option. This may reduce responsiveness compared to `-Dprism.order=hw` / `-Dprism.order=d3d`, but those modes are limited by the maximum texture size of your GPU drivers. Add `-Dprism.verbose=true` to list available pipelines in the debug console.

- `-Dprism.maxvram=512M`: The texture cache defaults to `512M`. Raising this value can allow you to render at a resolution closer to the maximum texture size allowed in hardware modes and can also help resolve issues with the software mode. You can allocate using `M` or `G` suffixes. `1024M` = `1G`.

- `-DlogLevel=INFO`: `ERROR`, `WARNING`, `INFO` - The default is `WARNING`, which will mean that Chunky will show warnings for missing items. Switching to `ERROR` should disable missing item warnings.

Work-in-progress <a href="https://github.com/leMaik/chunky/tree/pbr" target="_blank">PBR builds of Chunky</a> have additional options required. These options may be added to the UI at a later time.

- `-Dchunky.pbr.specular=labpbr`: `labpbr`, `oldpbr` - Tells Chunky which format the specular map is in.

- `-Dchunky.pbr.updateMaterialDefaults=true`: Sets default material properties to `Emittance`: 1, `Smoothness`: 1, and `Metalness`: 1 such that the specular map is applied to all materials.

- `-Dchunky.pbr.normal=true`: Enables normal mapping on certain blocks (cubes with the same texture on each face), such as planks, cobblestone, stone bricks, etc.

### Chunky options

- `-tile-width <NUM>`: Modifies the frame subdivision size per worker thread. Can potentially provide a boost to render speed or, if set too high, reduce render speeds. It is recommended to use a tile-width of 16 as this seems to be optimal, though you may want to test your system in a typical workload to see what works better.

- `-spp-per-pass <NUM>`: The spp-per-pass defines the number of samples a certain tile should be rendered to before moving on to the next tile. The default value of *1* means that each pixel will be sampled once per pass. This results in the render preview displaying the most recent render progress, and responding to changes after only one pass is rendered. Raising the spp-per-pass breaks some GUI functionality; however, rendering performance may be improved. It is recommended that this option be only used for headless operation.

---

### Plugin Manager

The 'Plugin Manager' dialog box, shown in [Figure 3](#figure-3), displays a list of all detected [plugins](../../../../plugins/chunky_plugins), along with some management controls.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: 'Plugin Manager' dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/plugin_manager_dialog_box.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/plugin_manager_dialog_box.png" alt="'Plugin Manager' dialog box">
    </a>
  </div>
</div>

The 'Plugin manager' dialog box will display any plugins from the "plugins" directory of the Chunky [settings directory](#advanced-settings). The column headers can be clicked to reorder the plugins by any listed detail. A plugin in the list can be clicked to select it. The checkbox on a plugin entry can be checked to select that plugin to be loaded when Chunky is launched.

- <samp>Plugin Details</samp>: Collapsible panel that contains information about the selected plugin.

- <samp>Up</samp>: Moves the selected plugin above the plugin that is immediately above it.

- <samp>Down</samp>: Moves the selected plugin below the plugin that is immediately below it.

- <samp>Delete</samp>: Deletes the plugin from the "plugins" directory, thereby removing it from the list.

- <samp>Add</samp>: Opens a file explorer dialog box to browse for a JAR file to be added to the "plugins" directory.

- <samp>Open plugin directory</samp>: Opens the "plugins" directory of the Chunky [settings directory](#advanced-settings).

- <samp>Save</samp>: Saves the new plugin configuration and closes the 'Plugin Manager' dialog box.

--8<-- "includes/abbreviations.md"
