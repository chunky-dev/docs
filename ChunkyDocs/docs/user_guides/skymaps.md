# Skymaps

A custom sky can be used in Chunky through the use of a skymap, which is an image file that is projected in the right way to cover a sphere or a half-sphere. A skymap can be set using the <samp>Sky mode</samp> dropdown menu in the [<samp>Sky & Fog</samp>](../../reference/user_interface/chunky/render_controls/sky_and_fog#sky-mode-settings) tab.

Chunky supports three main types of skymaps. These are [*equirectangular* skymaps](#equirectangular-skymaps), [*angular* skymaps](#angular-skymaps), and [*skyboxes / skycubes*](#skyboxes-skycubes). It is recommended to use a high-resolution image as a skymap, since it must be placed onto the entire sky. However, a skymap with a resolution that is too great will take much time to load and use much RAM. Chunky supports PNG, JPG, HDR, and PFM image files as skymaps.

## Equirectangular Skymaps

An equirectangular skymap is a skymap format that uses the <a href="https://wiki.panotools.org/Equirectangular_Projection" target="_blank">equirectangular</a> projection. One can be used by setting the [<samp>Sky mode</samp>](../../reference/user_interface/chunky/render_controls/sky_and_fog#sky-mode-settings) to <samp>{% if extra.chunky < 2_05_00 %}Skymap (panoramic){% endif %}{% if extra.chunky >= 2_05_00 %}Skymap (equirectangular){% endif %}</samp>.

Two types of equirectangular skymaps exist. Both types have a horizontal field of view of 360 degrees, but differ in the vertical field of view. One type has a vertical field of view of 180 degrees, and an aspect ratio of *2:1*, while the other type has a vertical field of view of 90 degrees, and an aspect ratio of *4:1*. A skymap with a vertical field of view of 180 degrees maps the whole sphere, while a skymap with a vertical field of view of 90 degrees maps only the space above the horizon.

<div class="figure" id="figure-3-3-2-1">
  <p class="figure">Figure 1: Different equirectangular skymap types</p>
  <div class="figureimgcontainer">
    <a href="../../img/user_guides/skymaps/skymap_vertical_resolution.png">
      <img class="figure" src="../../img/user_guides/skymaps/skymap_vertical_resolution.png" alt="Different equirectangular skymap types">
    </a>
  </div>
</div>

To use a skymap with a vertical field of view of 90 degrees, set the <samp>Vertical resolution</samp> in the [<samp>Sky mode settings</samp>](../../reference/user_interface/chunky/render_controls/sky_and_fog#sky-mode-settings) collapsible panel to <samp>Half (mirrored)</samp>. To use a skymap with a vertical field of view of 180 degrees, set the <samp>Vertical resolution</samp> to <samp>Full</samp>.

## Angular Skymaps

An angular skymap, also known as a *light probe*, is a skymap format that uses the <a href="http://www.paulbourke.net/dome/fisheye/" target="_blank">angular fisheye</a> projection. One can be used by setting the [<samp>Sky mode</samp>](../../reference/user_interface/chunky/render_controls/sky_and_fog#sky-mode-settings) to <samp>{% if extra.chunky < 2_05_00 %}Skymap (spherical){% endif %}{% if extra.chunky >= 2_05_00 %}Skymap (angular){% endif %}</samp>.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Spherical (light probe) skymap</p>
  <div class="figureimgcontainer">
    <a href="../../img/user_guides/skymaps/light_probe.jpg">
      <img class="figure" src="../../img/user_guides/skymaps/light_probe.jpg" alt="Spherical (light probe) skymap">
    </a>
  </div>
</div>

## Skyboxes / Skycubes

A skybox / skycube is a skymap that is composed of six separate images that cover the six faces of a virtual cube that surrounds the scene. Each component image has an aspect ratio of 1:1 and a field of view of 90 degrees in both dimensions. While several single-image skybox formats exist, Chunky supports skyboxes in which the component images are separate files. A skybox can be used by setting the [<samp>Sky mode</samp>](../../reference/user_interface/chunky/render_controls/sky_and_fog#sky-mode-settings) to <samp>Skybox</samp>.

## HDRi Skymaps

An HDRi skymap is a skymap that uses an HDR image format, such as HDR or PFM. Such image formats use a greater number of bits to store color information per color channel, which allows for increased color precision, and more realistic lighting.

## Obtaining Skymaps

There are a number of websites that provide skymaps. Often, a skymap must be purchased to download it in full resolution and to use it commercially; however, lower-resolution free samples which can be used non-commercially are often also available.

- <a href="https://cgskies.com/" target="_blank">CGSkies</a>

- <a href="https://hdri-skies.com/hdri-skies/" target="_blank">HDRI-SKIES</a>

- <a href="https://hdrmaps.com/hdri-skies/" target="_blank">HDRMAPS</a>

- <a href="https://www.hdri-hub.com/hdrishop/hdri" target="_blank">HDRI-Hub.com</a>

- <a href="https://polyhaven.com/hdris/skies" target="_blank">Poly Haven</a>

- <a href="http://hdrlabs.com/sibl/archive.html" target="_blank">sIBL Archive</a>

- <a href="http://dativ.at/lightprobes/" target="_blank">Light probes, by Bernhard Vogl</a>

- <a href="https://www.openfootage.net/category/high-dynamic-range-panorama/" target="_blank">OPENFOOTAGE.NET</a>

- <a href="http://www.nordicfx.net/?works=hdri" target="_blank">nordicFX</a>

Links to additional skymaps are below.

- <a href="https://www.eso.org/public/images/eso0932a/" target="_blank">The Milky Way panorama, by ESO</a>

- <a href="https://www.reddit.com/r/chunky/comments/17ts4b/some_more_skymaps/" target="_blank">r/chunky: "Some more skymaps"</a>

- <a href="https://www.mediafire.com/file/5z6zcb6k3cwud06/Skymaps.zip/file" target="_blank">`https://www.mediafire.com/file/5z6zcb6k3cwud06/Skymaps.zip/file`</a>

Skymaps can also be found in the <a href="https://discord.gg/zKnCf6t9Pu" target="_blank">#skymaps</a> channel of the Chunky Discord server.

## Rendering a Skymap

Chunky can be used to render skymaps, both in [equirectangular](#equirectangular-skymaps) format, and in [skybox](#skyboxes-skycubes) format.

### Equirectangular

To render an equirectangular skymap, follow the instructions below.

- Step 1: Open the [<samp>Camera</samp>](../../reference/user_interface/chunky/render_controls/camera) tab in the left control panel.

- Step 2: Open the <samp>Position & Orientation</samp> panel.

- Step 3: Enter *-90* into the second input field on the <samp>Orientation</samp> row, and press <kbd>Enter</kbd>.

- Step 4: Set the <samp>Projection mode</samp> to <samp>Panoramic (equirectangular)</samp>.

- Step 5: Set the <samp>Field of view (zoom)</samp> to *180*.

- Step 6: Open the [<samp>Scene</samp>](../../reference/user_interface/chunky/render_controls/scene) tab in the left control panel.

- Step 7: Set the <samp>Canvas size</samp> to a value in which the canvas {% if extra.chunky < 2_05_00 %}width (the value before the `x`){% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Width</samp>{% endif %} is twice as large as the canvas {% if extra.chunky < 2_05_00 %}height (the value after the `x`){% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Height</samp>{% endif %}, such as *800x400*, to ensure that the horizontal field of view of the image is 360 degrees and the vertical field of view of the image is 180 degrees.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: The <samp>Camera</samp> tab with correct values displayed</p>
  <div class="figureimgcontainer">
    <a href="../../img/user_guides/skymaps/skymap_camera_tab.png">
      <img class="figure" src="../../img/user_guides/skymaps/skymap_camera_tab.png" alt="Camera tab with correct values displayed">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: Example of a rendered skymap</p>
  <div class="figureimgcontainer">
    <a href="../../img/user_guides/skymaps/skymap_render.png">
      <img class="figure" src="../../img/user_guides/skymaps/skymap_render.png" alt="Rendered skymap example">
    </a>
  </div>
</div>

### Skybox

To render a skybox, follow the instructions below.

- Step 1: Open the [<samp>Camera</samp>](../../reference/user_interface/chunky/render_controls/camera) tab in the left control panel.

- Step 2: Set the <samp>Projection mode</samp> to <samp>Standard</samp>.

- Step 3: Set the <samp>Field of view (zoom)</samp> to *90*.

- Step 4: Open the [<samp>Scene</samp>](../../reference/user_interface/chunky/render_controls/scene) tab in the left control panel.

- Step 5: Set the <samp>Canvas size</samp> to a value in which the canvas {% if extra.chunky < 2_05_00 %}width (the value before the `x`){% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Width</samp>{% endif %} is equal to the canvas {% if extra.chunky < 2_05_00 %}height (the value after the `x`){% endif %}{% if extra.chunky >= 2_05_00 %}<samp>Height</samp>{% endif %}, such as *800x800*, to ensure that the field of view of the image is 90 degrees in both dimensions.

- Step 6: Return to the <samp>Camera</samp> tab and load the preset, <samp>Skybox Right</samp>.

- Step 7: Render the scene.

- Step 8: Rename the saved image file to prevent Chunky from overwriting it.

- Step 9: Repeat steps 6 through 8 for the other <samp>Skybox *</samp> presets.

--8<-- "includes/abbreviations.md"
