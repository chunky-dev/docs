# Chunky Plugins

Chunky can be extended with plugins, e.g. to add new blocks, post processors or even add all new renderer implementations.

[:material-puzzle: Get plugins](plugins){ .md-button }


!!! info "Renderer switching in Chunky 2.4.0 or later"
      As of Chunky 2.4.0 renderer switching is supported. ChunkyClPlugin’s `ChunkyCLRenderer` cannot yet be selected to be used in conjunction with the Denoising Plugin though they won’t cause an exception anymore.

      Plugins which have not yet been updated to support the new `addRenderer` API feature (Ambient Occlusion Plugin and Depth Buffer Plugin) are still supported and are added with the name of _PluginRenderer_.

## Installation

Plugins are distributed as `.jar` files and loaded by Chunky. To install them, click on `Manage Plugins` within the [Chunky Launcher](../getting_started/installing.md) to open the `Plugin Manager`.
Plugins can be added by clicking the `Add` button.

![Plugin Manager](../img/chunky_plugin_manager.png)

Plugins are loaded from top to bottom. The loading order usually doesn't matter but can fix incompatibilities in some cases. Consult the documentation of the plugins you're using for further information.
