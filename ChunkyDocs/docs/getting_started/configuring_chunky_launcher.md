# Configuring the Chunky Launcher

Before being able to render scenes, some actions must be performed in the Chunky Launcher.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The Chunky Launcher</p>
  <div class="figureimgcontainer">
    <a href="../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/chunky_launcher.png">
      <img class="figure" src="../../img/reference/user_interface/chunky_launcher/chunky_launcher_gui/chunky_launcher.png" alt="Chunky Launcher">
    </a>
  </div>
</div>

## Updating Chunky

If you downloaded the Chunky Launcher (Universal JAR), and this is your first time starting Chunky, then you must update Chunky. Otherwise, click <samp>Launch</samp> to start Chunky.

In the Launcher, click the <samp>Check for update</samp> button to make the Launcher check for an update for Chunky online. If an update to Chunky is available, you will soon see the 'Update Available' window:

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Chunky 'Update Available' Window</p>
  <div class="figureimgcontainer">
    <a href="../../img/getting_started/configuring_chunky_launcher/chunky_update_available.png">
      <img class="figure" src="../../img/getting_started/configuring_chunky_launcher/chunky_update_available.png" alt="Chunky Update Available Window">
    </a>
  </div>
</div>

Click the <samp>Update to New Version</samp> button to start downloading the required files.
When the download process has completed, you can click on either <samp>Launch Chunky</samp> or <samp>Close</samp>. If you click on <samp>Close</samp>, you would need to click on <samp>Launch</samp> in the main Chunky Launcher window to launch Chunky.

## Optional Configuration

- <samp>Minecraft directory</samp>: If your Minecraft game directory (.minecraft) is located somewhere other than its default location, then you may also need to change this to point to your current Minecraft installation; otherwise, blocks rendered in Chunky will not have proper textures, and your worlds will not be found.

- <samp>Memory limit (MiB)</samp>: Chunky can use much memory depending on a number of factors. Many issues can be caused by Chunky not having enough memory, so raising the memory limit can solve these issues. The default of *1024* can be raised based upon how much memory your system has and how much is typically available. For example, if your system has 16 GiB (16384 MiB) of system memory, allocating up to 75% of that, which is 12 GiB (12288 MiB), is typically fine. You can allocate more; however, you may eventually encounter other problems.

You should not need to access [<samp>Advanced Settings</samp>](../../reference/user_interface/chunky_launcher/chunky_launcher_gui#advanced-settings).

## Troubleshooting

If the Launcher does not download the latest version or new snapshots, check the <samp>Update Site</samp> in the <samp>Advanced Settings</samp> panel. The URL changed with Chunky 2.1, so make sure it is set to `https://chunkyupdate.lemaik.de/`. If you have used Chunky 1.x, it may still be set to llbit's update site. You can keep using that if you want to use Chunky 1.4.5.[^1]

If you get an unchecked exception caused by `java.lang.NoClassDefFoundError: javafx/application/Application` when clicking <samp>Launch</samp> in the Chunky Launcher, then double-check that the <samp>Java Options</samp> input field under <samp>Advanced Settings</samp> is populated by `--module-path "<path\to\javafx\lib>" --add-modules javafx.controls,javafx.fxml`.[^2] [^3] This field is automatically populated if the Chunky Launcher automatically detects OpenJFX. If OpenJFX is added manually in the startup command, then the field must be populated manually.

[^1]: Chunky 2.4.0 supports Minecraft 1.2.1 and above (i.e., pre-flattening worlds), so you probably do not need the old version anymore.

[^2]: It is important that quotation marks `" "` be included around any file paths to ensure that special characters like hyphens `-`, spaces ` `, etc., do not cause issues.

[^3]: Replace text within angle brackets `< >` with the actual paths to the files on your computer, and do not include the angle brackets in the actual command or input.

--8<-- "includes/abbreviations.md"
