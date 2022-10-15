# Headless Rendering

---

Chunky can be run headlessly to render scenes without using the GUI. This is useful when rendering on a server, for example, or when automating or scripting renders.

---

## Chunky Launcher

When using Chunky from the command line, you should know what the Chunky Launcher does. The Launcher is responsible for launching Chunky itself by starting a new Java process. It also verifies the file size and the MD5 checksum of the Chunky version that is being attempted to run

Command line arguments that begin with one hyphen, such as `-snapshot`, are sent to Chunky, while arguments that begin with two hyphens, such as `--update`, are sent to the Launcher.

<!-- When working with Chunky from the command line, you should be aware of what the launcher does. The launcher is responsible for launching Chunky by starting a new Java process. It also ensures that the file size and the md5 checksum of the Chunky version you are attempting to run.

Command-line arguments that start with one dash, like `-snapshot` are sent to Chunky, while arguments starting with two dashes, like `--update`, are options to the launcher. -->

---

### JVM Options

Any JVM (Java Virtual Machine) arguments used when starting the Chunky Launcher apply to the Launcher and not to the Chunky process itself. Any JVM options that must be added to Chunky itself must be specified in the chunky-launcher.json file, under the `javaOptions` variable. The chunky-launcher.json file is located in the root of the Chunky [settings directory](../../../getting_started/configuring_chunky_launcher#controls).

To view the Java arguments used to start Chunky, add the `--verbose` argument to the Chunky Launcher startup command. The launcher will then print the command that it used to start Chunky.

<!-- JVM (Java virtual machine) options (memory limit, etc.) used when starting Chunky normally only apply to the launcher and not the actually Chunky process. Any JVM options you want to add to the Chunky command must be added to the `javaOptions` variable in the `chunky-launcher.json` file in your local Chunky settings directory (`~/.chunky` is the default directory).

To see the Java command line arguments used to start Chunky you can add the `--verbose` flag when running Chunky. This makes the launcher print the command it used to start Chunky. -->

---

## Custom Settings Directory

A custom Chunky settings directory can be specified by adding the `-Dchunky.home` Java option to the Chunky Launcher startup command. The launcher will also pass the option to Chunky itself.

Changing the settings directory can be useful if you must run multiple instances of Chunky on the same computer or if you need more control over the locations in which the scenes and settings are stored.

<!-- Chunky allows specifying a custom settings directory via the `chunky.home` Java property. The property can be passed to the Chunky launcher and the launcher will then pass it on to Chunky itself. 

Changing the settings directory can be useful if you need to run multiple instances of Chunky on the same computer, or if you just need more control over where the settings and scenes are stored. -->

Below is an example on specifying a custom settings directory.

```
$ mkdir "~/chunky"
$ java -Dchunky.home="~/chunky" -jar ChunkyLauncher.jar --update
```

Note that the `-Dchunky.home` argument must be added before `-jar`. If you are using Bash, it can be convenient to make an alias for the java command above. An example of this is below.

```
CHUNKY_HOME=~/chunky
alias chunky java -Dchunky.home="$CHUNKY_HOME" -jar ChunkyLauncher.jar
```

The lines above could also be added to your `.bashrc` file.

<!-- Here is an example showing how to specify a custom scene directory:

    $ mkdir ~/chunky
    $ java -Dchunky.home="~/chunky" -jar ChunkyLauncher.jar --update


Note that the `-Dchunky.home` argument must be passed before `-jar`.  If you are using Bash it is convenient to make an alias for the `java` command above, for example:

    CHUNKY_HOME=~/chunky
    alias chunky java -Dchunky.home="$CHUNKY_HOME" -jar ChunkyLauncher.jar


The lines above could also be added to your `.bashrc` file. -->

---

## Setting things up

It may be necessary to perform some setup before rendering headlessly. The following steps should be done before you can render headlessly, and some may need to be repeated mater to update Chunky.

1. Download the Chunky Launcher onto your computer. The latest version can be obtained by using the command:

```
wget https://chunkyupdate.lemaik.de/ChunkyLauncher.jar
```

2. Download the latest version of Chunky by using the command:

```
java -jar ChunkyLauncher.jar --update
```

3. Download a Minecraft version.jar for block textures, such as version 1.19.2, by using the command:

```
java -jar ChunkyLauncher.jar -download-mc 1.19.2
```

<!-- It may be necessary to do some setup before you can start rendering in headless mode.

The following steps should be done before the first time you start rendering in headless mode, and some of these steps may need to be repeated later to update Chunky or Minecraft:

1. Download Chunky and place the Jar-file on your rendering machine. It is sufficient to download the latest version of the Launcher by issuing this command:

        wget https://chunkyupdate.lemaik.de/ChunkyLauncher.jar

2. Download the latest version of Chunky:

        java -jar ChunkyLauncher.jar --update

3. Make Chunky download some Minecraft version (for example 1.11.2):

        java -jar ChunkyLauncher.jar -download-mc 1.11.2 -->

---

## Rendering

Rendering a scene via the command line is simple, assuming that the scene parameters have been set up and the scene files have been copied to the `scenes` directory.

The simplest way to render a scene is to use the command:

```
chunky -render SceneName
```

Replace `SceneName` with the name of the scene to be rendered.

To print a list of available scenes, use the command

```
chunky -list-scenes
```

Chunky will continue to render until it reaches the target SPP specified in the scene.json file. Chunky can be stopped prematurely by using `[Ctrl]+[C]`, but any render progress since the scene was last saved will not be saved. Render progress is normally saved after intervals determined by the `dumpFrequency` scene.json setting.

Snapshots of a scene with saved render progress can be created by using the command:

```
chunky -snapshot SceneName snapshot.png
```

Replace `SceneName` with the name of the scene of which the snapshot should be created. The `snapshot.png` is the filename of the PNG file to be created.

<!-- Rendering a scene using the command-line interface is simple, assuming that you have set up the scene parameters and copied your scene files to your scene directory (default=`$CHUNKY_HOME/scenes`).

The simplest way to render a scene is to run the command

    chunky -render SceneName

Replace `SceneName` with the name of your scene. Run this command to print a list of all available scenes:

    chunky -list-scenes

Chunky will keep rendering until it reaches the target SPP. You can stop Chunky prematurely by hitting `Ctrl-C`, however this does not save the current rendering progress! The render progress is normally saved after intervals determined by the `dumpFrequency` scene setting.

Snapshots can be created from a scene with some saved rendering progress by using the `-snapshot` command:

    chunky -snapshot SceneName snapshot.png

The `snapshot.png` part of is the filename for the Png file to create. -->

---

## Command-Line Options

Add the `-help` argument to the startup command to view a list of all available command line options. Currently, the options listed below are available.

<!-- Run Chunky with the `-help` command to see a list of all available command-line options. Currently these options are available: -->

- `-render <SCENE>`: Render in headless mode. You may also need to add the `-f` flag to force a scene to render.

- `-reload-chunks`: Reload the selected chunks before rendering the scene (used in conjunction with `-render`).

- `-texture <FILE>`: Load the specified texture pack.

- `-snapshot <SCENE> <PNG>` - create a snapshot from a scene.

- `-scene-dir <DIR>`: Specify scene directory.

- `-threads <NUM>`: Change number of render threads.

- `-tile-width <NUM>`: Modifies the frame subdivision size per worker threads.

- `-spp-per-pass <NUM>`: Modifies the samples to be completed per tile per pass.

- `-target <NUM>`: Set the SPP target for the current headless render.

- `-set <NAME> <VALUE>`: Modify a Chunky setting value.

- `-set <NAME> <VALUE> <SCENE>`: Modify a scene setting.

- `-reset <NAME>`: Reset a Chunky setting to its default value.

- `-reset <NAME> <SCENE>` : Reset a scene setting to its default value.

- `-download-mc <VERSION>`: Download a particular version of Minecraft.

- `-list-scenes`: List available scenes in the scene directory.

- `-merge-dump <SCENE> <PATH>`: Merge a render `.dump` file into the specified scene combining the total SPP.[^1]

- `-help`: Print the command-line help and Copyright notice.

The launcher accepts these commands:

- `--update`: Download the latest version of Chunky.

- `--setup`: Interactive command-line Chunky setup.

- `--nolauncher`: Should not be used in headless mode.

- `--launcher`: Force the launcher UI to be shown.

- `--version`: Display the launcher version.

- `--verbose`: Enable verbose logging.

[^1]: The value of the `Target SPP` should be greater than the sum of the current SPP of the currently-loaded scene and the current SPP of the render dump to be merged to prevent unexpected behavior.

--8<-- "includes/abbreviations.md"
