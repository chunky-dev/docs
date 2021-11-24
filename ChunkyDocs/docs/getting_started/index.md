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

## Universal JAR - Chunky Launcher - Setup

 1. You must install [**Java 17**](https://adoptium.net/) for your platform.
	
 2. Download the [**OpenJFX 17.0.1 |LTS| x64 SDK**](https://gluonhq.com/products/javafx/) and extract the `bin`, `legal`, and `lib` folders to `C:\Program Files\openjfx` or `..\.chunky\openjfx`.
 
 3. [Download the Universal JAR / Chunky Launcher (ChunkyLauncher.jar)](http://chunkyupdate.lemaik.de/ChunkyLauncher.jar) and keep it
    in a safe place (you will use this to start Chunky).
 
 4. Launch ChunkyLauncher.jar. You may need to launch via command line/script using `java -jar path\to\ChunkyLauncher.jar --launcher`.

<div class="video-wrap">
  <div class="video-container">
	<iframe src="https://www.youtube.com/embed/GTUhZVjatPY"></iframe>
  </div>
</div>

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

## Snapshot builds

By default, the launcher will download _stable_ releases of Chunky. If you want to get the latest features and bug fixes (and maybe some new bugs or incomplete features), you can enable the "Download snapshots" option in the "Advanced Settings" panel. The next time you check for updates, the launcher will download the latest Chunky snapshot.

The snapshots are automatically built every day from the [master branch](https://github.com/chunky-dev/chunky/commits/master). Some plugins may not work with Chunky snapshots while some plugins may even require a certain snapshot (or later versions).

## Troubleshooting

If the launcher does not download the latest version or new snapshots, check the "Update Site" in the "Advanced Settings" panel. The URL changed with Chunky 2.1, so make sure it is set to `https://chunkyupdate.lemaik.de/`. If you have used Chunky 1.x, it may still be set to llbit's update site. You can keep using that if you want to use Chunky 1.4.5[^2].

If you get an `unchecked exception` caused by `java.lang.NoClassDefFoundError: javafx/application/Application` when launching Chunky Launcher use `java --module-path path\to\javafx\lib --add-modules javafx.controls,javafx.fxml -jar path\to\ChunkyLauncher.jar` to launch Chunky Launcher. If you get this exception when clicking "Launch" in the Chunky Launcher, double check the `Java Options` field under `Advanced` is populated by `--module-path path\to\javafx\lib --add-modules javafx.controls,javafx.fxml`. This field should automatically be populated.

[^2]: As of Chunky 2.4.0, which supports Minecraft 1.2.1 (i.e. pre-flattening worlds), you probably don't need the old version anymore.

--8<-- "includes/abbreviations.md"
