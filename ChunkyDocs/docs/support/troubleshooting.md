# Troubleshooting Chunky

This page lists some common problems and their solutions.

## Chunky / Chunky Launcher opens as a blank window on Windows

This problem is caused by a problem with the JavaFX hardware renderer for Windows. The only known solution to the problem is to add `-Dprism.order=sw` to the startup command before the `-jar` argument. The startup command then becomes of the form: `java -Dprism.order=sw -jar ChunkyLauncher.jar --launcher`. The `-Dprism.order=sw` argument must also be added to the [<samp>Java options</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) input field in the Chunky Launcher.


## Double-clicking "ChunkyLauncher.jar" doesn't work

This is a common problem on Windows wherein JAR files are not properly associated with Java. Solutions to the problem include reinstalling Java, using an application such as <a href="https://johann.loefflmann.net/en/software/jarfix/index.html" target="_blank">Jarfix</a>, or starting the Chunky Launcher [via the command line](../../getting_started/installing_chunky/#windows) or via a batch script, which can be double-clicked to start Chunky. Instructions to create one are located [here](../faq/#how-do-i-pin-chunky-to-the-taskbar-create-shortcuts).


## Exception in thread "main" `java.lang.NoClassDefFoundError: javafx/stage/Stage`

This problem is caused by the Chunky Launcher being unable to detect OpenJFX on the computer, which happens when JavaFX is not bundled with the JRE used to start the Chunky Launcher and either OpenJFX is not installed, or OpenJFX is neither installed to a detectable location nor added to the startup command manually.

The solution to the problem is to either install OpenJFX to an automatically-detectable location or to add it to the startup command for the Chunky Launcher manually. The solution is covered [here](../../getting_started/installing_chunky/#troubleshooting).


## Chunky crashes if <samp>Memory limit (MiB)</samp> is set above 2 GB, despite more than 2 GB of RAM being present in the computer

This problem is caused by the usage of a 32-bit JRE to launch Chunky. The solution to the problem is to use a 64-bit JRE to launch Chunky. The simplest way to do this is to uninstall the 32-bit JRE and then install a 64-bit JRE according to the instructions located in the [Installing Chunky](../../getting_started/installing_chunky) article. Set the path to the 64-bit JRE using the [<samp>Java Runtime</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) control in the Chunky Launcher.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: 32-bit JRE memory limit error</p>
  <div class="figureimgcontainer">
    <a href="../../img/support/troubleshooting/heapsize_win32.png">
      <img class="figure" src="../../img/support/troubleshooting/heapsize_win32.png" alt="32-bit JRE memory limit error">
    </a>
    <hr>
    <a href="../../img/support/troubleshooting/heapsize_win32_console.png">
      <img class="figure" src="../../img/support/troubleshooting/heapsize_win32_console.png" alt="32-bit JRE memory limit error">
    </a>
  </div>
</div>


## The map view displays an array of red *X*'s when zoomed in and an ocean biome when zoomed out.

This problem is caused by a world with unsupported chunks being loaded. A world from a Minecraft that is not supported by the version of Chunky that is being used can cause this problem. A potential solution is to load the world using a newer version of Chunky, such as one from the [<samp>Stable Snapshot</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release channel or one from the [<samp>Snapshot</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) release channel, which might have support for that world version. For a list of what world versions are supported by Chunky, please read the [Minecraft Compatibility](../minecraft_compatibility) article.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Unsupported chunks in the <samp>Map</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../img/support/troubleshooting/unsupported_chunks_map_view.png">
      <img class="figure" src="../../img/support/troubleshooting/unsupported_chunks_map_view.png" alt="Unsupported chunks in the Map tab">
    </a>
  </div>
</div>


## Blocks rendered in Chunky use incorrect textures or render as black with a red *X*

This problem is caused by Chunky being unable to automatically detect and load a Minecraft version.jar for block textures, and, thus, reverting to its internal textures. Solutions to this problem include updating the path to your Minecraft installation by using the [<samp>Minecraft directory</samp>](../../getting_started/configuring_chunky_launcher#optional-configuration) control in the Chunky Launcher, and manually [loading as a resource pack](../faq#how-do-i-correctly-add-resource-packs) a Minecraft "version.jar" or a resource pack that contains the missing textures.


## I try to create a new scene but it is empty

This problem could be caused by either no chunks in the [<samp>Map</samp>](../../reference/user_interface/chunky/map) tab being selected before <samp>New scene from selection</samp> or <samp>Load selected chunks</samp> is used or all blocks in the selected chunks having a Y-coordinate that is beyond the range specified by the {% if extra.chunky < 2_05_00 %}<samp>Y min clip</samp> and <samp>Y max clip</samp>{% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Min Y level</samp> and <samp>Max Y level</samp>{% endif %} controls in the [<samp>Scene</samp>](../../reference/user_interface/chunky/render_controls/scene) tab. If the cause of the problem were the former, then the solution to the problem is to select chunks in the <samp>Map</samp> tab before using either <samp>New scene from selection</samp> or <samp>Load selected chunks</samp>. If the cause of the problem were the latter, then the solution to the problem is to set the {% if extra.chunky < 2_05_00 %}<samp>Y min clip</samp> and <samp>Y max clip</samp>{% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Min Y level</samp> and <samp>Max Y level</samp>{% endif %} controls in the <samp>Scene</samp> tab to the minimum and maximum Y-coordinates of the blocks to be loaded, respectively, and then clicking <samp>Reload chunks</samp>.


## Failed to build render control tabs. `java.lang.NoSuchMethodError: javafx.scene.control.ChoiceBox.setOnAction(Ljavafx/event/EventHandler;)V`

This problem is caused by the usage of an outdated JRE to launch Chunky. The solution to the problem is to use Java 8u60 or newer to launch Chunky; however, Java 17 with OpenJFX is recommended. Installation instructions for Chunky are located in the [Installing Chunky](../../getting_started/installing_chunky) article.


## Error initializing QuantumRenderer: no suitable pipeline found

This problem is often caused by a mismatch between the architectures of Java and OpenJFX. In that case, the solution to the problem is to use Java and OpenJFX with matching architectures. Another potential cause of the problem is that the module path specified in the startup command does not point to a valid OpenJFX SDK. In that case, the solution to the problem is to download and use an OpenJFX SDK, as stated in the [Installing Chunky](../../getting_started/installing_chunky) article. On Linux, a potential cause of the problem is GTK2 being missing from the system. In that case, the solution to the problem is to install GTK2. Another potential solution is to add `-Dprism.order=sw` to the startup command before the `-jar` argument. The startup command then becomes of the form: `java -Dprism.order=sw -jar ChunkyLauncher.jar --launcher`. The `-Dprism.order=sw` argument should also be added to the [<samp>Java options</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) input field in the Chunky Launcher.

To view a list of valid pipelines, add `-Dprism.verbose=true` to the startup command before the `-jar` argument. The startup command then becomes of the form: `java -Dprism.verbose=true -jar ChunkyLauncher.jar` The terminal will display a list of valid pipelines with the text, "Prism pipeline init order:". The `-Dprism.verbose=true` argument can also be added to the [<samp>Java options</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) input field in the Chunky Launcher. Then enable the Debug console, and then click <samp>Launch</samp>. The debug console will display a list of valid pipelines with the text, "Prism pipeline init order:".


## java.lang.NullPointerException: Cannot invoke "com.sun.prism.RTTexture.<br>createGraphics()" because "&lt;local9&gt;" is null

This problem is often caused by the render canvas size being increased beyond the maximum texture size supported by JavaFX, the GPU, or the GPU driver. A potential solution to the problem is to add `-Dprism.order=sw` to the [<samp>Java options</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) input field in the Chunky Launcher.

To determine the maximum texture size supported by JavaFX, the GPU, or the GPU driver, add `-Dprism.verbose=true` to the [<samp>Java options</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) input field, enable the Debug console, and then click <samp>Launch</samp>. The debug console will display the maximum supported texture size with the text, "Maximum supported texture size:". Note that the GUI is also factored into the texture size, so the actual maximum canvas size is also dependent on the GUI resolution.


## Rare bugs

This section documents rarer problems that are typically caused not by Chunky itself, but rather by other problems on your system. Due to the rarity of these problems, few solutions to them are known.

### Text garbled / broken

This problem is often caused by broken fonts on your system, and results in what is shown in [Figure 3](#figure-3). The most likely solution to the problem is to reinstall the "Segoe UI" font. Other potential solutions include updating the GPU drivers, setting Java to use the GPU through the GPU configuration utility, and disabling Cleartype, which makes text look ugly, and is not recommended.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: Corrupted text in Chunky</p>
  <div class="figureimgcontainer">
    <a href="../../img/support/troubleshooting/rare_font_corruption.png">
      <img class="figure" src="../../img/support/troubleshooting/rare_font_corruption.png" alt="Corrupted text in Chunky">
    </a>
  </div>
</div>


### Problematic frame...

```
Problematic frame:
v  ~StubRoutines::SafeFetchN
```

This problem is caused by a bug in Java, which was fixed in Java 17.0.2. The solution is to use a newer JRE, such as Java 17.0.2 or newer.


### Module jrt.fs conflict

The following error, `java.lang.LayerInstantiationException: Package jdk.internal.jimage in both module java.base and module jrt.fs`, is usually caused when the "lib" folder of OpenJFX is merged into the "lib" folder of Java. In that case, the solution to the problem is to install Java 17 and OpenJFX properly, according to the instructions located in the [Installing Chunky](../../getting_started/installing_chunky) article. If that is not the case, then the solution is to delete "jrt-fs.jar" from the "lib" folder of OpenJFX.

--8<-- "includes/abbreviations.md"
