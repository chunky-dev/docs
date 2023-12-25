# Headless Rendering

Chunky can be run headlessly to render scenes without using the GUI. This is useful when rendering on a server, for example, or when automating or scripting renders.

## Chunky Launcher

When using Chunky from the command line, you should know what the Chunky Launcher does. The Launcher is responsible for launching Chunky itself by starting a new Java process. It also verifies the file size and the MD5 checksum of the Chunky version that you are attempting to run.

Command line arguments that begin with one hyphen, such as `-snapshot`, are sent to Chunky, while arguments that begin with two hyphens, such as `--update`, are sent to the Launcher.

### JVM Options

Any JVM (Java Virtual Machine) arguments used when starting the Chunky Launcher apply to the Launcher and not to the Chunky process itself. Any JVM options that must be added to Chunky itself must be specified in the "chunky-launcher.json" file, under the `javaOptions` variable. The "chunky-launcher.json" file is located in the root of the Chunky [settings directory](../chunky_launcher_gui#advanced-settings).

To view the Java arguments used to start Chunky, add the `--verbose` argument to the Chunky Launcher startup command. The launcher will then print the command that it used to start Chunky.

## Custom Settings Directory

A custom Chunky settings directory can be specified by adding the `-Dchunky.home=` Java option to the Chunky Launcher startup command. The launcher will also pass the option to Chunky itself.

Changing the settings directory can be useful if you must run multiple instances of Chunky on the same computer or if you need more control over the locations in which the scenes and settings are stored.

Below is an example of specifying a custom settings directory.

```
$ mkdir "~/chunky"
$ java -Dchunky.home="~/chunky" -jar ChunkyLauncher.jar --update
```

Note that the `-Dchunky.home=` argument must be added before the `-jar` argument. If you are using Bash, it can be convenient to make an alias for the java command above. An example of this is below.

```
CHUNKY_HOME=~/chunky
alias chunky java -Dchunky.home="$CHUNKY_HOME" -jar ChunkyLauncher.jar
```

The lines above could also be added to your ".bashrc" file.

## Setting Things Up

It may be necessary to perform some setup before rendering headlessly. The following steps should be done before you can render headlessly, and some may need to be repeated later to update Chunky.

1. Download the Chunky Launcher onto your computer. The latest version can be obtained by using the command:

```
wget https://chunkyupdate.lemaik.de/ChunkyLauncher.jar
```

2. Download the latest version of Chunky by using the command:

```
java -jar ChunkyLauncher.jar --update
```

3. Download a Minecraft "version.jar" for block textures, such as version 1.19.3, by using the command:

```
java -jar ChunkyLauncher.jar -download-mc 1.19.3
```

## Rendering

Rendering a scene via the command line is simple, assuming that the scene parameters have been set up and that the scene files have been copied to the "scenes" directory of the settings directory.

The simplest way to render a scene is to use the command:

```
chunky -render SceneName
```

Replace `SceneName` with the name of the scene to be rendered.

To print a list of available scenes, use the command:

```
chunky -list-scenes
```

Chunky will continue to render until it reaches the target SPP specified in the "scene.json" file. Chunky can be stopped prematurely by using <kbd>Ctrl</kbd> + <kbd>C</kbd>, but any render progress since the scene was last saved will not be saved. Render progress is normally saved after intervals determined by the `dumpFrequency` setting in the "scene.json".

Snapshots of a scene with saved render progress can be created by using the command:

```
chunky -snapshot SceneName snapshot.png
```

Replace `SceneName` with the name of the scene of which the snapshot should be created. The `snapshot.png` is the filename of the PNG file to be created.

## Command-Line Options

Run Chunky with the `-help` argument to see a list of all available command-line options. Currently the options listed below are available.

- `-render <SCENE>`: Renders a scene in headless mode. You may also need to add the `-f` flag to force a scene to render.

{% if extra.chunky >= 2_04_06 %}
- `-reload-chunks`: Reloads the selected chunks before rendering the scene (used in conjunction with `-render`).
{% endif %}

- `-texture <FILE>`: Loads the specified texture pack.

- `-snapshot <SCENE> <PNG>`: Creates a snapshot from the specified scene.

- `-scene-dir <DIR>`: Specifes the scene directory.

- `-threads <NUM>`: Changes the number of render threads.

- `-tile-width <NUM>`: Modifies the frame subdivision size per worker threads.

- `-spp-per-pass <NUM>`: Modifies the number of samples to be completed per tile per pass.

- `-target <NUM>`: Sets the target SPP for the current headless render.

- `-set <NAME> <VALUE>`: Modifies a Chunky setting value.

- `-set <NAME> <VALUE> <SCENE>`: Modifies a scene setting.

- `-reset <NAME>`: Resets a Chunky setting to its default value.

- `-reset <NAME> <SCENE>` : Resets a scene setting to its default value.

- `-download-mc <VERSION>`: Downloads a particular version of Minecraft.

- `-list-scenes`: Lists available scenes in the scene directory.

- `-merge-dump <SCENE> <PATH>`: Merges a render "scene.dump" file into the specified scene, combining the total SPP.[^1]

- `-help`: Prints the command-line help and Copyright notice.

The launcher accepts these commands:

- `--update`: Downloads the latest version of Chunky.

- `--setup`: Opens the interactive command-line Chunky setup.

- `--nolauncher`: This argument should not be used in headless mode.

- `--launcher`: Forces the launcher GUI to be shown.

- `--version`: Displays the launcher version.

- `--verbose`: Enables verbose logging.

[^1]: The value of the Target SPP should be greater than the sum of the current SPP of the currently-loaded scene and the current SPP of the render dump to be merged to prevent unexpected behavior.

--8<-- "includes/abbreviations.md"
