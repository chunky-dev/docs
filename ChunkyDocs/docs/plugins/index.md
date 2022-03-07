# Chunky Plugins

Chunky can be extended with plugins, e.g. to add new blocks, post processors or even add all new renderer implementations.

[:material-puzzle: Get plugins](plugins){ .md-button }


!!! info "Renderer switching in Chunky 2.4.0 or later"
      As of Chunky 2.4.0 renderer switching is supported. ChunkyClPlugin’s `ChunkyCLRenderer` cannot yet be selected to be used in conjunction with the Denoising Plugin though they won’t cause an exception anymore.

      Plugins which have not yet been updated to support the new `addRenderer` API feature (Ambient Occlusion Plugin and Depth Buffer Plugin) are still supported and are added with the name of _PluginRenderer_.

## Installation

Plugins are often distributed as `.jar` files, and sometimes are contained within a .zip archive, and can be loaded in Chunky via the `Plugin Manager`. To install plugins, click on `Manage Plugins` within the [Chunky Launcher](../getting_started/index.md) to open the `Plugin Manager`. Clicking on `Open plugin directory` will create a `plugins` folder within the Chunky settings directory. Plugins can be added by first either copying or extracting them to the `plugins` directory and then by selecting the plugin and clicking on the `Add` button within the `Plugin Manager`.

![Plugin Manager](../img/getting_started/chunky_launcher_plugin_manager.png)

Plugins are loaded from top to bottom. The loading order usually doesn't matter but can fix incompatibilities in some cases. Consult the documentation of the plugins you're using for further information.

--8<-- "includes/abbreviations.md"
