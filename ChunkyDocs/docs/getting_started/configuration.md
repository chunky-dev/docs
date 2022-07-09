# Chunky Launcher

![Chunky Launcher](../img/getting_started/chunky_launcher.png)

- `Version select` - Drop down list which allows you to pick a downloaded Chunky version.

- `Check for update` - Checks for updates on chosen update site.

- `Minecraft directory` - The directory Minecraft is installed to.

- `Memory limit (MiB)` - Default is 1024 MiB, however it is highly recommended that you raise this value to better 
  reflect the amount of memory in your system. Please take into account that the OS and other applications will also 
  require some memory so don't over set this. If you cannot raise this past 2000 MiB double-check your Java installation is 64 bit.

- `Always open Launcher` - Recommended you keep this checked. It is possible to access the launcher again via 
  commandline or an option in Chunky, but it's a bit more hassle.

---

## Advanced Settings

![Advanced Settings](../img/getting_started/chunky_launcher_advanced.png)

- `Update Site` - Changes source for updates.

    - `http://chunkyupdate.llbit.se/` should be used to obtain Chunky 1.X which is up to Minecraft version 1.12.2.

    - `http://chunkyupdate2.llbit.se/` is for llbit's Chunky 2.0 for Minecraft 1.13 however you will need to enable snapshots to get the latest version, `2.0beta6`, else you will be stuck with an older version.

    - `http://chunkyupdate.lemaik.de/` is the new default update site for Chunky 2.X.

    - `https://chunky-pr.lemaik.de/` is used to download builds of open pull requests. Add the number of the open pull request after the slash. Click `Reload` next to the `Release channel` dropdown menu and then set the `Release Channel` to `PR #xxxx`, with "xxxx" being the number of the open pull request.

- `Java Runtime` - Allows you to see and change the Runtime used for Chunky. Does not change the runtime used for the Launcher.

- `Java options` - See below for the list of Java options.

- `Chunky options` - See below for the list of Chunky options.

- `Enable debug console` & `Verbose logging` - The debug console is a separate window that runs when you launch Chunky. As the name implies it is useful for debugging issues with Chunky and combined with Verbose logging, which enables additional debug information, can be helpful in fixing bugs and crashes.

- `Close console when Chunky exits` - Typically this can be left enabled. If an exception/error causes chunky to crash it should still be possible to read the console.

- `Release channel` - Allows you to select which type of release you would like to use. `Stable` is typically the most stable version. `Stable Snapshot` is like a beta release; Should be stable and can come with new features, bugs, and bug fixes. `Snapshot` is bleeding edge and probably unstable. `PR #xxxx` is the latest build of the open pull request specified in the update site, if it is set to `https://chunky-pr.lemaik.de/`.

- `Settings directory` - Does not let you change the settings directory but does let you see/access it.

![Plugin Manager](../img/getting_started/chunky_launcher_plugin_manager.png)

- `Manage plugins` - The Plugin manager can be used to manage installed plugins. For a list of available plugins and their function, please refer to the [Plugins page](../plugins/plugins.md).

---

### Java options

- `-Dprism.order=sw` - Should the Chunky Launcher or the Chunky window appear blank when started this is caused by an issue with the JavaFX hardware renderer for Windows. The only known solution is to add the listed Java command/option. This may reduce responsiveness over `hw`/`d3d` but that mode is limited by your GPU drivers maximum texture size. Use `-Dprism.verbose=true` to debug what pipelines are available.

- `-Dprism.maxvram=512M` - The texture cache defaults to `512M`. Raising this value can allow you to render closer to the maximum texture size allowed in hardware modes but can also help resolve issues with the software mode. Can allocate using `M` or `G` suffixes. `1024M` = `1G`.

- `-DlogLevel=INFO` - `ERROR`,`WARNING`, `INFO` - Default is WARNING which will mean Chunky shows warnings for missing items. ERROR should disable missing item warnings.

[WIP PBR builds of Chunky](https://github.com/leMaik/chunky/tree/pbr) have additional options required. These options may end up in the UI at a later point.

- `-Dchunky.pbr.specular=labpbr` - `labpbr`, `oldpbr` - Tells Chunky which format the specular map is in.

- `-Dchunky.pbr.updateMaterialDefaults=true` - Sets default materials to emittance=1, smoothness=0, metalness=1 such that the specular map is applied to all materials.

- `-Dchunky.pbr.normal=true` - Enables normal mapping on certain blocks (cubes with the same texture on each face) like wooden planks, cobblestone, stone bricks, etc.

---

### Chunky options

- `-tile-width <NUM>` - Modifies the frame subdivision size per worker thread. Can potentially provide a boost to render speed or, if set too high, reduce render speeds. It is recommended to use a tile-width of 16 as this seems to be optimal; though you may want to test your system in a typical workload to see what works better.

- `-spp-per-pass <NUM>` - The spp-per-pass defines how many samples a certain tile should be rendered to before moving onto the next tile. The default value of 1 would mean each tile would be sampled to the same SPP before incrementing further. This means that not only will the Preview Window display the most up-to-date SPP, but we are able to stop the render upon it completing queued samples for the pass- ie the SPP total will increment. Raising the spp-per-pass breaks a lot of GUI functionality however, due to a multitude of factors, rendering performance is improved. Recommended that you only use this option for headless operation.

--8<-- "includes/abbreviations.md"
