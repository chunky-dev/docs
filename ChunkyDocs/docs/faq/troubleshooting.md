# Troubleshooting Chunky

This page lists some common issues and how to fix them.

---

## Chunky opens as a blank window (Windows)

If the Chunky or Chunky Launcher window is blank when you start it, this is caused by an issue in the JavaFX hardware renderer for Windows. The only known solution is to add `-Dprism.order=sw` to the Java command when starting Chunky. The option needs to be added in the [Java options](../../getting_started/configuration/#java-options) field in the launcher.


## Double clicking ChunkyLauncher.jar doesn't work

A common issue with Java on Windows is that jar files may not be correctly associated with Java.

This can be fixed by either uninstalling and reinstalling Java or through using an application like [Jarfix](https://johann.loefflmann.net/en/software/jarfix/index.html) or through launching the Launcher via commandprompt, ie `java -jar "path\to\chunkylauncher\chunkylauncher.jar"`. Using the latter solution you can create a batch file which is clickable.


## Exception in thread "main" java.lang.NoClassDefFoundError: javafx/stage/Stage

JavaFX is only typically bundled with Oracle Java. On all OpenJDK/OpenJRE's you will need to manually download OpenJFX, extract it, and potentially add it to the launch commands for Chunky.

For Windows we cover this under [Universal JAR - Chunky Launcher](../../getting_started/installing#universal-jar-chunky-launcher)

For Linux try `sudo apt install openjfx`. Should this fail please follow the link above and proceed to download and extract the Linux x64 SDK from GluonHQ like with Windows. Valid locations are `/usr/share/openjfx/lib`, `/usr/lib/jvm/java-<javaVersion>-openjdk`, `.chunky`, or if the extracted folder contains `javafx` though this check is crude.


## Memory Limit won't go above 2Gb

If you are not able to set the memory limit for Chunky greater than 2Gb, despite having more than 2Gb of RAM in your computer, then you need to upgrade to a 64-bit Java installation. A 32-bit Java installation does not allow more than 2Gb for the Chunky memory limit.

If you try launching Chunky with more than 2Gb of memory in a 32-bit Java installation, you will get an error message similar to this:

![Windows 7 heap size error](../img/faq/heapsize_win32.png)

Check the debug console (enable it under Advanced Settings in the launcher):

![windows 7 heap size error](../img/faq/heapsize_win32_console.png)

The line that says "Could not reserve enough space for ...  object heap" indicates that the Java installation did not allow the configured memory limit.


## Black blocks with a red X / Wrong Textures / Changing Texture Pack

Chunky needs to load textures from a Minecraft installation or a resource pack, otherwise it uses its own built-in textures for the missing texutre.

If you get the wrong textures when you create a 3D scene, there are two things you can do:

* Update the path to your Minecraft installation in the Chunky launcher.

* Load a resource pack that contains the missing textures: [See guide](../../user_interface/chunky_ui/#resource-packs)


## I try to create a new scene but it is empty

First, make sure that you have selected some chunks before creating a new scene.

If you still have the problem it may be caused by the `Y min clip`/`Y max clip` settings. The Y clip settings in the Render Controls pane under Scene can prevent the blocks from being loaded, especially if you are loading a superflat world. All blocks that have a Y value (height) outside the Y clip value will not be loaded.

