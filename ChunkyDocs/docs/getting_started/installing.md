# Installing Chunky

There are two ways to install Chunky. You may download the installer for your OS[^1],
or you may download the Universal JAR (Chunky Launcher).

[^1]: Installers for Windows, Linux and macOS are [currently being worked on](https://github.com/leMaik/chunky-launcher-standalone).

## Downloads

<!-- soon
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-microsoft-windows: Windows<br><btnsub>Installer (beta)</btnsub></a>
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-linux: Linux<br><btnsub>Debian package (beta)</btnsub></a>
<a href="https://chunky.llbit.se/download.html" class="md-button">:material-apple: macOS<br><btnsub>DMG image (beta)</btnsub></a>
-->
<a href="https://chunkyupdate.lemaik.de/ChunkyLauncher.jar" class="md-button">:material-package-variant-closed: Universal JAR <br><btnsub>Chunky Launcher v1.12.2</btnsub></a>

## Universal JAR - Chunky Launcher
 1. You must install [**Java 17**](https://adoptium.net/) for your platform.
	
 2. Download [**OpenJFX 11**](https://gluonhq.com/products/javafx/) and extract to it's own folder: The Launcher should auto detect this.
 
 3. [Download the Universal JAR / Chunky Launcher (ChunkyLauncher.jar)](http://chunkyupdate.lemaik.de/ChunkyLauncher.jar) and keep it
    in a safe place (you will use this to start Chunky).
 
 4. Launch ChunkyLauncher.jar. You may need to launch via commandline using `java -jar path\to\ChunkyLauncher.jar`
 
---

## Chunky First-Time Setup

The first time you start Chunky, you will be asked to pick a settings directory for Chunky:

![First time setup](../img/getting_started/chunky_first-time_setup.png)

The recommended directory is usually the best option. Click "Use Selected Directory" to continue.

Next, you will see the Chunky Launcher:

![Launcher](../img/getting_started/chunky_launcher.png)

If you downloaded the Universal JAR (only Chunky Launcher) then you will have to update Chunky, otherwise can click "Launch" to start Chunky.

## Updating Chunky
In the launcher, hitting the "Check for Update" button will make the launcher check for an update to Chunky online.
This must be done the first time you start Chunky if you only downloaded the launcher.

If an update to Chunky was is available you will soon see the "Update Available!" window:

![Update available](../img/getting_started/chunky_update_available_2.4.0.png)

Click the "Update to New Version" button to start downloading the required files.
When the download process has completed you can either click on "Launch Chunky" or "Close". If you click on "Close" you would need to click on "Launch" in the main Chunky Launcher window to launch Chunky.

