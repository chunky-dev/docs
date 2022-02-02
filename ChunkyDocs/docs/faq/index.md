# Frequently Asked Questions

Any question not answered here please ask on either our [Discord server](https://discord.gg/VqcHpsF) or on our [Reddit community](https://www.reddit.com/r/chunky/).

---

## Why is there noise/grain/random bright dots in the render?

This is not a bug, but an unfortunate effect of the rendering algorithm used in Chunky. Torches and other small light sources cause a very random illumination and it takes a long time to render such light nicely. For more information please read the **Path Tracing article**. You can disable emitters under the Lighting tab in the Render Controls to remove most of the random bright dots. Other sources of light are typically larger and clear up quickly though HDRi skymaps can be an issue. **Note that rendering for a longer time will eventually clear up the noise**, though it may take a very long time.
  
There are techniques and plugins which can help reduce noise. For more information please visit [jackjt8's Guide to Chunky - Denoising](https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/denoising.html).


## How long does it take to render an image?

There is no exact answer to this question. The main thing that affects render time is your CPU, the size of the image, and the lighting conditions in the scene you are rendering. It can take anywhere from an hour to a couple of days to render a nice image. You can reduce the size of the canvas, disable emitters, enable Emitter Sampling, or use a denoising technique to speed up the convergence rate. See the **Path Tracing article** or [jackjt8's Guide to Chunky - Denoising](https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/denoising.html) for more details.


## Is GPU rendering supported?

GPU rendering support is currently in development in the form of an OpenCL 1.2 renderer plugin. This renderer is still under development and many features of the CPU renderer are not yet supported. For more information check out the [OpenCL plugin GitHub](https://github.com/ThatRedox/ChunkyClPlugin).


## Why are mobs not rendered?

Chunky cannot currently render most entities. Entities are objects that are separate from the blocks that make up the Minecraft worlds, such as mobs, minecarts, projectiles, etc. Future support for rendering entities is planned, but there is no deadline for this feature yet, so stay tuned! For a list of what is supported check the article on [Minecraft Compatibility](minecraft_compatibility.md).


## Can Chunky render custom block models and mod blocks?

Support for custom block models and mod blocks is currently in development and the target is to have it ready for Chunky 2.5.0; as the name implies this would enable support for block models defined by json files. This feature may roll out as a plugin. Otherwise for information on currently supported blocks check out the article on [Minecraft Compatibility](minecraft_compatibility.md).


## Why does the sky look bad?

You might have a low resolution skymap or it may be the wrong format. Chunky supports either panoramic equirectangular (360x90 or 360x180) and skyboxes (though we have support for spherical, it's unlikely you have one).


## Where can I find Skymaps?

The Skymap page has some useful links for obtaining high quality skymaps.


## What about the 3rd Party Server Plugin?

[Chunky (SpigotMC)](https://www.spigotmc.org/resources/chunky.81534/) and [Chunky Pregenerator](https://papermc.io/forums/t/1-13-2-1-18-1-chunky-pregenerator/4850) is an unrelated project which has an unfortunate name collision (iirc, Chunky is (C) 2010 and the Pregenerator was made in 2020). Said plugin is used to pre-generate server chunks.

--8<-- "includes/abbreviations.md"
