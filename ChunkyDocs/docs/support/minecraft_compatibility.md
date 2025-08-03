# Minecraft Compatibility

Bedrock Edition worlds are currently not supported; however, they can be converted to Java Edition format by using <a href="https://chunker.app/" target="_blank">Chunker</a>, by Hive Games. Most entities are currently not rendered by Chunky, and some special blocks cannot be rendered either.

Below is a list of the Minecraft versions currently supported by Chunky and everything that Chunky currently cannot render. For more detailed information about which features of Minecraft are not yet supported, check the <a href="https://github.com/chunky-dev/chunky/issues?q=is%3Aissue+is%3Aopen+label%3Aminecraft" target="_blank">issues with the "minecraft" label</a> on GitHub.

| Feature                     | Stable (2.4.6) | Stable snapshot (2.4.x) | Snapshot (2.5.0)           | Related issues / pull requests |
| --------------------------- | -------------- | ----------------------- | -------------------------- | ------------------------------ |
| Minecraft Java Versions     | 1.2.1 - 1.20.4 | 1.2.1 - 1.20.4          | 1.2.1 - 1.21.8             | #1308, #1309, #1811            |
| Vertical biomes             | Not supported  | Not supported           | Supported (off by default) | #1225                          |
| Mod blocks                  | Not supported  | Not supported           | Planned                    | #88, #426, #266, #1332         |
| Custom block models         | Not supported  | Not supported           | Planned                    | #88, #426, #266, #1332         |
| PBR textures                | Not supported  | Not supported           | Planned                    | #751, #1276                    |
| (Glow) Item frames          | Not supported  | Not supported           | Not Supported              | #790, #789 ,#1705              |
| Held item rendering         | Not supported  | Not supported           | Not supported              | #669, #595, #1437, #1705       |
| Mobs (animals and monsters) | Not supported  | Not supported           | Partially supported        | #41                            |
| Ender crystals              | Not supported  | Not supported           | Not supported              | #41                            |
| Boats                       | Not supported  | Not supported           | Not supported              |                                |
| Minecarts                   | Not supported  | Not supported           | Not supported              |                                |
| Falling sand                | Not supported  | Not supported           | Not supported              | #454                           |
| Particles                   | Not supported  | Not supported           | Not supported              | #41                            |
| Bubble columns              | Not supported  | Not supported           | Not supported              | #518                           |
| Campfire with items         | Not supported  | Not supported           | In development             | #1704                          |
| Armor trims                 | Not supported  | Planned                 | Planned                    | #1708                          |
| New redstone torch (1.21.2) | Not supported  | Not supported           | Supported                  |                                |

{% if extra.chunky >= 2_05_00 %}

## Block models

Mojang sometimes changes the block models or textures (and texture mappings) of existing blocks. By default, Chunky uses the _latest_ block models of Java Edition.

To maintain compatibility with old resource packs, there are flags to switch to older block models. These flags can be specified in the Launcher as <samp>Java options</samp>, eg. `-Dchunky.blockModels.cocoa=pre-1.19` to switch to the old cocoa plant model.

| Block                                                     | Flag                               | Values                           | Note                                                                                                                                     |
| --------------------------------------------------------- | ---------------------------------- | -------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| cocoa                                                     | `chunky.blockModels.cocoa`         | `1.19` (default), `pre-1.19`     | Block model changed in 1.19; stage 2 cocoa plant is displayed incorrectly when the resource pack and block model don't match (see #1761) |
| redstone_torch, redstone_wall_torch, comparator, repeater | `chunky.blockModels.redstoneTorch` | `1.21.2` (default), `pre-1.21.2` | Redstone torch block model changed in 1.21.2                                                                                             |

!!! info "Unsupported block models"

    If you're missing an old block model or encounter issues with a block when using a resource pack that is made for an older Minecraft version, please [create an issue](https://github.com/chunky-dev/chunky/issues/new/choose). We will add support for all block models that are present in release versions of Minecraft (ie. block models that only appeared in snapshots will not be supported).

{% endif %}
--8<-- "includes/abbreviations.md"
