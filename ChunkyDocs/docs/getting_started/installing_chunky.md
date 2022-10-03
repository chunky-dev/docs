# Installing Chunky

---

To install Chunky, download the Chunky Launcher (Universal JAR).[^1] This requires the installation of Java 17 and OpenJFX. Download links and setup instructions are located [below](#downloads).

---

## Requirements

|                                   | CPU                             | Available RAM | Available Storage                                                                                                                                                                                            |
| --------------------------------- | ------------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Minimum requirements**[^2]      | CPU supported by Java & OpenJFX | 512 MB        | 270 MB for core files: <ul><li><strong>Java 17:</strong> 135 MB</li><li><strong>OpenJFX:</strong> 110 MB</li><li><strong>Chunky 2.4.4:</strong> 25 MB</li></ul>                                              |
| **Recommended requirements**      | 64-bit CPU                      | 8+ GB         | 270 MB for core files + <ul><li><strong>Multiple Chunky versions:</strong> 50+ MB</li><li><strong>Multiple Chunky scenes:</strong> 1+ GB</li></ul>                                                           |

---

## Downloads

<!-- soon-tm
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-microsoft-windows: Windows<br><btnsub>Installer (beta)</btnsub></a>
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-linux: Linux<br><btnsub>Debian package (beta)</btnsub></a>
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-apple: macOS<br><btnsub>DMG image (beta)</btnsub></a>
-->

<a href="https://adoptium.net/temurin/releases" target="_blank" class="md-button">:octicons-file-binary-16: Java 17</a>

<a href="https://gluonhq.com/products/javafx" target="_blank" class="md-button">:fontawesome-regular-file-zipper: OpenJFX</a>

<a href="https://chunkyupdate.lemaik.de/ChunkyLauncher.jar" target="_blank" class="md-button">Chunky Launcher v1.13.2<br><btnsub>:material-package-variant-closed: Universal JAR</btnsub></a>

---

## Setup

- Step 1: Download the <a href="https://adoptium.net/temurin/releases" target="_blank"><strong>Java 17 JRE</strong></a> for your platform.[^3]

- Step 2: Download the <a href="https://gluonhq.com/products/javafx" target="_blank"><strong>OpenJFX 18.0.2 SDK</strong></a> for your platform.[^3] [^4] OpenJFX is not required to run Chunky [headlessly](../../reference/user_interface/headless) (via command line).

- Step 3: Download the <a href="https://chunkyupdate.lemaik.de/ChunkyLauncher.jar" target="_blank"><strong>Chunky Launcher (Universal JAR)</strong></a> and save it to a safe place on your computer (you will use this to start Chunky).

Further setup instructions for [Windows](#windows), [Linux](#linux), and [macOS](#macos) are located below.

---

### Windows

- Step 4: If you downloaded the Java 17 installer, then run it to install Java 17 on your computer. If you downloaded the Java 17 ZIP archive, then extract it to a safe place on your computer.
 
- Step 5: Extract from the OpenJFX ZIP archive the `bin`, `legal`, and `lib` folders to `C:\Program Files\openjfx` or `C:\Users\<username>\.chunky\javafx`, creating these folders if necessary.
 
- Step 6: Start the ChunkyLauncher.jar. This can usually be done by double-clicking it, although you may need to start it via a command line or script using the command, `java -jar "<path\to\ChunkyLauncher.jar>" --launcher`.[^6] [^7] This is required if you downloaded the Java 17 ZIP archive, unless you manually properly set JAR files to open with Java 17, in which case you can start the Chunky Launcher by double-clicking it. If JAR files are not properly set to open with Java 17, then the command to start it is, `"<path\to\Java 17\java.exe>" -jar "<path\to\ChunkyLauncher.jar>" --launcher`.[^6] [^7]

<div class="video-wrap">
  <div class="video-container">
	  <iframe src="https://www.youtube.com/embed/GTUhZVjatPY" allowfullscreen="true"></iframe>
  </div>
</div>

---

### Linux

- Step 4: Install Java 17 on your computer.

- Step 5: Extract from the OpenJFX ZIP archive the `bin`, `legal`, and `lib` folders to `/usr/share/openjfx` or `~/.chunky/javafx`, creating these folders if necessary.

- Step 6: Start the ChunkyLauncher.jar with the command, `"</path/to/Java 17/java>" --module-path "~/.chunky/javafx/lib" --add-modules javafx.controls,javafx.fxml -jar "</path/to/ChunkyLauncher.jar>" --launcher`.[^6] [^7]

---

### macOS

On M1-equipped macs, which are aarch64 (ARM-based), Rosetta 2 enables an emulation, of sorts, of x64 macOS applications. Please ensure that both the JRE and OpenJFX have matching architectures. We recommended native aarch64; however, x64 performance should be similar.

- Step 4: Install or extract Java 17 on your computer.

- Step 5: Open the `Terminal` and run the following commands (change the path to the OpenJFX ZIP archive in the second command to match its location on your computer):

```
mkdir "~/.chunky"
unzip "~/Downloads/openjfx-18.0.2_osx-aarch64_bin-sdk.zip" -d "~/.chunky/javafx"
```
[^6]

- Step 6: Start the ChunkyLauncher.jar with the command, `"</path/to/java 17/java>" --module-path "~/.chunky/javafx/lib" --add-modules javafx.controls,javafx.fxml -jar "</path/to/ChunkyLauncher.jar>" --launcher`.[^6] [^7]

---

## Chunky First-Time Setup

The first time you start Chunky, you will be asked to pick a [settings directory](../configuring_chunky_launcher#advanced-settings) for Chunky:

<div class="figure" id="figure-1-1-1">
  <p class="figure">
  Figure 1.1.1: Chunky First-Time Setup Window
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/chunky_first-time_setup.png">
      <img class="figure" src="../../img/getting_started/chunky_first-time_setup.png" alt="Chunky First-Time Setup">
    </a>
  </div>
</div>

The recommended directory is usually the best option. Click `Use Selected Directory` to continue.

Next, you will see the Chunky Launcher:

<div class="figure" id="figure-1-1-2">
  <p class="figure">
  Figure 1.1.2: The Chunky Launcher
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/chunky_launcher.png">
      <img class="figure" src="../../img/getting_started/chunky_launcher.png" alt="Chunky Launcher">
    </a>
  </div>
</div>

### Updating Chunky

If you downloaded the Chunky Launcher (Universal JAR), and this is your first time starting Chunky, then you must update Chunky. Otherwise, click `Launch` to start Chunky.

In the Launcher, click the `Check for update` button to make the Launcher check for an update for Chunky online. If an update to Chunky is available, you will soon see the `Update Available` window:

<div class="figure" id="figure-1-1-3">
  <p class="figure">
  Figure 1.1.3: Chunky Update Available Window
  </p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/chunky_update_available_2.4.0.png">
      <img class="figure" src="../../img/getting_started/chunky_update_available_2.4.0.png" alt="Chunky Update Available Window">
    </a>
  </div>
</div>

Click the `Update to New Version` button to start downloading the required files.
When the download process has completed, you can click on either `Launch Chunky` or `Close`. If you click on `Close`, you would need to click on `Launch` in the main Chunky Launcher window to launch Chunky.

---

## Troubleshooting

If the Launcher does not download the latest version or new snapshots, check the `Update Site` in the `Advanced Settings` panel. The URL changed with Chunky 2.1, so make sure it is set to `https://chunkyupdate.lemaik.de/`. If you have used Chunky 1.x, it may still be set to llbit's update site. You can keep using that if you want to use Chunky 1.4.5.[^5]

If you get an unchecked exception caused by `java.lang.NoClassDefFoundError: javafx/stage/Stage` when starting the Chunky Launcher, then, if using Windows, verify that OpenJFX is installed to either `C:\Program Files\openjfx` or `C:\Users\<username>\.chunky\javafx`.[^7] If the error persists, or if OpenJFX is purposely installed to another directory, then use the following command to start the Chunky Launcher: `java --module-path "<path\to\javafx\lib>" --add-modules javafx.controls,javafx.fxml -jar "<path\to\ChunkyLauncher.jar>" --launcher`.[^6] [^7] If you get a similar exception when clicking `Launch` in the Chunky Launcher, then double-check that the `Java Options` input field under `Advanced Settings` is populated by `--module-path "<path\to\javafx\lib>" --add-modules javafx.controls,javafx.fxml`.[^6] [^7] This field is automatically populated if the Chunky Launcher automatically detects OpenJFX. If OpenJFX is added manually in the startup command, then the field must be populated manually.

[^1]: Installers for Windows, Linux and macOS are <a href="https://github.com/leMaik/chunky-launcher-standalone" target="_blank">currently being worked on</a>.

[^2]: The bare minimum to run Chunky is Java 8 update 60 (which includes OpenJFX), 512MB of allocated RAM, and 270 MB of storage for core files.

[^3]: Ensure that the OS and Architecture correctly match your system.

[^4]: We have not tested OpenJFX 19 at this time, but it is assumed that it will work.

[^5]: As of Chunky 2.4.0, which supports Minecraft 1.2.1 (i.e. pre-flattening worlds), you probably don't need the old version anymore.

[^6]: It is important that quotation marks `" "` be included around any file paths to ensure that special characters like hyphens `-`, spaces ` `, etc., do not cause issues.

[^7]: Replace text within angle brackets `< >` with the actual paths to the files on your computer, and do not include the angle brackets in the actual command or input.

--8<-- "includes/abbreviations.md"
