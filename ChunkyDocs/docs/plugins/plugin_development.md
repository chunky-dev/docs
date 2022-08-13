# Plugin Development

---

A good way to start developing plugins is to take a look at the source code of existing plugins to dive into Chunky's plugin API. Interfaces and methods that are considered *stable for plugin use* are annotated with the `@PluginApi` annotation in Chunky's code.

If you have questions about the API or need any help, the <a href="https://discord.gg/zD9WByHJpK" target="_blank">#tech</a> channel on our Discord server is a good place to start.

---

## Gradle configuration

To build a plugin for Chunky, you need, well, Chunky. More precisely, `chunky-core` is needed as a dependency[^1] in order to build the plugin (and also provide you code completion and javadoc). We recommend using Gradle, and a simple `build.gradle` config for a plugin could look like this:

```groovy
apply plugin: 'java'

compileJava {
  sourceCompatibility = JavaVersion.VERSION_1_8
  targetCompatibility = JavaVersion.VERSION_1_8
}

repositories {
  mavenLocal()
  mavenCentral()
  maven {
    url 'https://repo.lemaik.de/'
  }
}

dependencies {
  compileOnly 'se.llbit:chunky-core:2.4.0'
}

```

---

## Plugin manifest

Similar to Bukkit plugins, Chunky plugins contain a manifest file that contains information about the plugin name, version, and, most importantly, which class of it Chunky should load. This file must be named `plugin.json` and be located at the root of the plugin JAR file.

```json
{
  "name": "Demo Plugin",
  "author": "You",
  "main": "com.example.chunkydemoplugin.DemoPlugin",
  "version": "1.0",
  "targetVersion": "2.4.0",
  "description": "A demo plugin."
}
```

The fields should be pretty self-explanatory. The `targetVersion` is the version of Chunky that your plugin supports.[^2] If any other Chunky version is used, a warning will be printed to the console to notify the user, but Chunky will still attempt to load the plugin.

The fully-qualified class name in `main` is the main class of your plugin, which must implement the `se.llbit.chunky.Plugin` interface.

---

## Plugin entrypoint

For the demo plugin, the implementation could look like this. Note how the class name and package correspond to the `main` value from the manifest:

```java
package com.example.chunkydemoplugin;

import se.llbit.chunky.Plugin;
import se.llbit.chunky.main.Chunky;
import se.llbit.chunky.main.ChunkyOptions;
import se.llbit.chunky.ui.ChunkyFx;

public class DemoPlugin implements Plugin {
  @Override
  public void attach(Chunky chunky) {
    // TODO add your plugin functionality here
  }

  public static void main(String[] args) throws Exception {
    // Start Chunky with this plugin attached
    Chunky.loadDefaultTextures();
    Chunky chunky = new Chunky(ChunkyOptions.getDefaults());
    new DemoPlugin().attach(chunky);
    ChunkyFx.startChunkyUI(chunky);
  }
}
```

!!! info "About the main method"
    The `main` method is added only for convenience. This way, you can launch Chunky with this plugin enabled directly from within your IDE, which is also useful for attaching a debugger. When loading a plugin from a jar, Chunky will create an instance of the plugin class and invoke the `attach` method. You should put all plugin initialization logic there.

---

## Demo plugins

To demonstrate some features of the Plugin API, llbit created a few demo plugins.

- <a href="https://github.com/llbit/Chunky-AOPlugin" target="_blank">Ambient Occlusion Plugin</a>

- <a href="https://github.com/llbit/Chunky-DepthPlugin" target="_blank">Depth Buffer Plugin</a>

- <a href="https://github.com/llbit/Chunky-BlockMod" target="_blank">Block Plugin Template</a>

- <a href="https://github.com/llbit/Chunky-TabMod" target="_blank">Tab Plugin Template</a>

The Ambient Occlusion plugin and the Depth Buffer plugin use a deprecated API to add renderers to Chunky. The [Chunky AOV](../plugin_list#aov-plugin) plugin adds these renderers using the new API.

[^1]: leMaik's Maven repository contains all release builds of Chunky starting with 2.3.0 as well as the nightly builds as maven snapshots.

[^2]: Chunky doesn't support range checks yet but they may be added in the future. That would allow you to specify e.g. `>= 2.4.0` for compatibility with 2.4.0 or later.

--8<-- "includes/abbreviations.md"
