# Installing Chunky

To install Chunky, download the Chunky Launcher (Universal JAR).[^1] This requires the installation of Java 17 and OpenJFX. Download links and setup instructions are located [below](#downloads).

## Requirements

|                                   | CPU                             | Available RAM | Available Storage                                                                                                                                                                                            |
| --------------------------------- | ------------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Minimum requirements**[^2]      | CPU supported by Java & OpenJFX | 512 MB        | 270 MB for core files: <ul><li><strong>Java 17:</strong> 135 MB</li><li><strong>OpenJFX:</strong> 110 MB</li><li><strong>Chunky 2.4.6:</strong> 25 MB</li></ul>                                              |
| **Recommended requirements**      | 64-bit CPU                      | 8+ GB         | 270 MB for core files + <ul><li><strong>Multiple Chunky versions:</strong> 50+ MB</li><li><strong>Multiple Chunky scenes:</strong> 1+ GB</li></ul>                                                           |

## Downloads

<!-- soon-tm
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-microsoft-windows: Windows<br><btnsub>Installer (beta)</btnsub></a>
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-linux: Linux<br><btnsub>Debian package (beta)</btnsub></a>
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-apple: macOS<br><btnsub>DMG image (beta)</btnsub></a>
-->

<a href="https://adoptium.net/temurin/releases" target="_blank" class="md-button">:octicons-file-binary-16: Java 17</a>

<a href="https://chunkyupdate.lemaik.de/ChunkyLauncher.jar" target="_blank" class="md-button">Chunky Launcher v1.14.0<br><btnsub>:material-package-variant-closed: Universal JAR</btnsub></a>

<a href="https://gluonhq.com/products/javafx" target="_blank" class="md-button">:fontawesome-regular-file-zipper: OpenJFX<br><btnsub>(Only required for manual setup)</btnsub></a>

## Setup

- Step 1: Download the <a href="https://adoptium.net/temurin/releases" target="_blank"><strong>Java 17 JRE</strong></a> for your platform.[^3]

- Step 2: Download the <a href="https://chunkyupdate.lemaik.de/ChunkyLauncher.jar" target="_blank"><strong>Chunky Launcher (Universal JAR)</strong></a> and save it to a safe place on your computer (you will use this to start Chunky).

Further setup instructions for [Windows](#windows), [Linux](#linux), and [macOS](#macos) are located below.

### Windows

- Step 3: If you downloaded the Java 17 installer, then run it to install Java 17 on your computer. If you downloaded the Java 17 ZIP archive, then extract it to a safe place on your computer.
 
- Step 4: Start the "ChunkyLauncher.jar". This can usually be done by double-clicking it, although you may need to start it via a command line or script using the command, `java -jar "<path\to\ChunkyLauncher.jar>" --launcher`.[^5] [^6] This is required if you downloaded the Java 17 ZIP archive, unless you manually properly set JAR files to open with Java 17, in which case you can start the Chunky Launcher by double-clicking it. If JAR files are not properly set to open with Java 17, then the command to start it is, `"<path\to\Java 17\java.exe>" -jar "<path\to\ChunkyLauncher.jar>" --launcher`.[^5] [^6]

<!--
<div class="video-wrap">
  <div class="video-container">
	  <iframe src="https://www.youtube.com/embed/GTUhZVjatPY" allowfullscreen="true"></iframe>
  </div>
</div>
-->

### Linux

- Step 3: Install Java 17 on your computer.

- Step 4: Start the "ChunkyLauncher.jar" with the command, `'</path/to/Java 17/java>' -jar '</path/to/ChunkyLauncher.jar>' --launcher`.[^5] [^6]

### macOS

On M1-equipped macs, which are aarch64 (ARM-based), Rosetta 2 enables an emulation, of sorts, of x64 macOS applications. Please ensure that both the JRE and OpenJFX have matching architectures. We recommended native aarch64, although x64 performance should be similar.

- Step 3: Install or extract Java 17 on your computer.

- Step 4: Start the "ChunkyLauncher.jar" with the command, `"</path/to/java 17/java>" -jar "</path/to/ChunkyLauncher.jar>" --launcher`.[^5] [^6]

### Install JavaFX

Chunky requires JavaFX to be installed to funtion in GUI mode. JavaFX is not required for [headless](../../reference/user_interface/chunky_launcher/headless) operation of Chunky. The Chunky Launcher will attempt to detect the location to which JavaFX is installed to whenever it is started normally. If it cannot detect JavaFX, the 'Install JavaFX' window will open.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: 'Install JavaFX' Window</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/installing_chunky/install_javafx.png">
      <img class="figure" src="../../img/getting_started/installing_chunky/install_javafx.png" alt="Chunky First-Time Setup">
    </a>
  </div>
</div>

The Launcher will attempt to set the computer configuration options automatically, but they can be set manually if the values are incorrect. Once the computer configuration options have been set to match the configuration of your computer, click <samp>Download and Install</samp>.

## Chunky First-Time Setup

The first time you start the Chunky Launcher, you will be asked to pick a [settings directory](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings) for Chunky:

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: 'Chunky First-Time Setup' Window</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/installing_chunky/chunky_first-time_setup.png">
      <img class="figure" src="../../img/getting_started/installing_chunky/chunky_first-time_setup.png" alt="Chunky First-Time Setup">
    </a>
  </div>
</div>

The recommended directory is usually the best option. Click <samp>Use Selected Directory</samp> to continue. You will see the main Chunky Launcher window [next](../configuring_chunky_launcher).

## Manual Setup

If you encountered issues with the normal setup, or if you desire to use a custom setup, then follow these instructions.

- Step 1: Download the <a href="https://adoptium.net/temurin/releases" target="_blank"><strong>Java 17 JRE</strong></a> for your platform.[^3]

- Step 2: Download the <a href="https://gluonhq.com/products/javafx" target="_blank"><strong>OpenJFX 17.0.2 SDK</strong></a> for your platform.[^3] [^4] OpenJFX is not required to run Chunky [headlessly](../../reference/user_interface/chunky_launcher/headless) (via command line).

- Step 3: Download the <a href="https://chunkyupdate.lemaik.de/ChunkyLauncher.jar" target="_blank"><strong>Chunky Launcher (Universal JAR)</strong></a> and save it to a safe place on your computer (you will use this to start Chunky).

Further setup instructions for [Windows](#windows_1), [Linux](#linux_1), and [macOS](#macos_1) are located below.

### Windows

- Step 4: If you downloaded the Java 17 installer, then run it to install Java 17 on your computer. If you downloaded the Java 17 ZIP archive, then extract it to a safe place on your computer.

- Step 5: Extract from the OpenJFX ZIP archive the "bin", "legal", and "lib" folders to a location on your computer. "C:\Program Files\openjfx" and "C:\Users\&lt;username&gt;\\.chunky\javafx" are default installation locations that the Chunky Launcher can detect automatically. Take note of the path of the folder to which you extracted the folders.

- Step 6: Start the "ChunkyLauncher.jar" with the command, `"<path\to\Java 17\java.exe>" --module-path <path\to\javafx\lib> --add-modules javafx.controls,javafx.fxml -jar "<path\to\ChunkyLauncher.jar>" --launcher`.[^5] [^6]

### Linux

- Step 4: Install Java 17 on your computer.

- Step 5: Extract from the OpenJFX ZIP archive the "legal" and "lib" folders to a location on your computer. "/usr/share/openjfx" and "/home/&lt;username&gt;/.chunky/javafx" are default installation locations that the Chunky Launcher can detect automatically. Take note of the path of the folder to which you extracted the folders.

- Step 6: Start the "ChunkyLauncher.jar" with the command, `'</path/to/Java 17/java>' --module-path '</path/to/javafx/lib>' --add-modules javafx.controls,javafx.fxml -jar '</path/to/ChunkyLauncher.jar>' --launcher`.[^5] [^6]

### macOS

On M1-equipped macs, which are aarch64 (ARM-based), Rosetta 2 enables an emulation, of sorts, of x64 macOS applications. Please ensure that both the JRE and OpenJFX have matching architectures. We recommended native aarch64, although x64 performance should be similar.

- Step 4: Install or extract Java 17 on your computer.

- Step 5: Extract from the OpenJFX ZIP archive the "legal" and "lib" folders to a location on your computer. Take note of the path of the folder to which you extracted the folders.

- Step 6: Start the "ChunkyLauncher.jar" with the command, `"</path/to/java 17/java>" --module-path "</path/to/javafx/lib>" --add-modules javafx.controls,javafx.fxml -jar "</path/to/ChunkyLauncher.jar>" --launcher`.[^5] [^6]

## Troubleshooting

If you get an unchecked exception caused by `java.lang.NoClassDefFoundError: javafx/stage/Stage` when starting the Chunky Launcher, then, if using Windows, verify that OpenJFX is installed to either "C:\Program Files\openjfx" or "C:\Users\&lt;username&gt;\\.chunky\javafx".[^6] If the error persists, or if OpenJFX is purposely installed to another directory, then use the following command to start the Chunky Launcher: `java --module-path "<path\to\javafx\lib>" --add-modules javafx.controls,javafx.fxml -jar "<path\to\ChunkyLauncher.jar>" --launcher`.[^5] [^6]

[^1]: <a href="https://github.com/leMaik/chunky-launcher-standalone" target="_blank">Installers</a> for Windows, Linux and macOS are planned.

[^2]: The bare minimum to run Chunky is Java 8 update 60 (which includes OpenJFX), 512MB of allocated RAM, and 270 MB of storage for core files.

[^3]: Ensure that the OS and Architecture correctly match your system.

[^4]: We have not tested OpenJFX 19 at this time, but it is assumed that it will work.

[^5]: It is important that quotation marks `" "` be included around any file paths to ensure that special characters like hyphens `-`, spaces ` `, etc., do not cause issues.

[^6]: Replace text within angle brackets `< >` with the actual paths to the files on your computer, and do not include the angle brackets in the actual command or input.

--8<-- "includes/abbreviations.md"
