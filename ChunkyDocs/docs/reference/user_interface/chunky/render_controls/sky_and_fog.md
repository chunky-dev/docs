# Render Controls - Sky & Fog

The <samp>Sky & Fog</samp> tab contains controls for the appearance of the sky in the scene, and for fog.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Sky & Fog</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/sky_and_fog_tab.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/sky_and_fog_tab.png" alt="Sky & Fog tab">
    </a>
  </div>
</div>

## Sky Mode Settings

- <samp>Sky mode</samp>: Dropdown menu to select the type of sky to be used for the scene.

    - <samp>Simulated</samp>: Draws a simulated sky that changes according to the position of the sun in the sky.

	    - <samp>Sky Mode</samp>: Dropdown menu to select the simulation model for the sky.

		    - <samp>Preetham</samp>: A faster simulation of daytime skies. It is more similar to the Minecraft sky. An example panorama of the Preetham sky is shown in [Figure 2](#figure-2).

			- <samp>Nishita</samp>: A slower and more realistic sky simulation that can also simulate twilight. An example panorama of the Nishita sky is shown in [Figure 2](#figure-2).

		- <samp>Horizon offset</samp>: Offsets the simulated horizon downward from its default position.

		<br>

	- <samp>Solid Color</samp>: Sets the entire sky to render as a single solid color.

	    - <samp>Pick Color</samp>: Opens a color selector dialog box to change the color of the sky and the light emitted from it.

		<br>

	- <samp>Color Gradient</samp>: Draws the sky as a vertical gradient of colors.

	    - <samp>Load preset</samp>: Dropdown menu to select a color gradient preset for the sky.

		The color gradient editor, which is shown in [Figure 3](#figure-3), displays the currently-set color gradient, and has controls to change the color gradient.

		The editor contains color control markers, which set the color for a position on the gradient. Click any color control marker to select it for editing.

		- <samp><</samp>: Switch the selected marker to the one immediately to the left.

		- <samp>></samp>: Switch the selected marker to the one immediately to the right.

		- <samp>-</samp>: Removes the currently-selected marker.

		- <samp>+</samp>: Insert a new marker halfway between the currently-selected marker and the marker that is immediately to the right.

		- <samp>Pick Color</samp>: Opens a color selector dialog box to set the color for the currently-selected color control marker.

		- <samp>Import</samp>: Opens the 'Import Gradient' dialog box, which allows a JSON-formatted string of text that contains information describing the color gradient settings, usually one exported from the 'Gradient Export' dialog box, to be imported to immediately change the color gradient settings to the values described in the JSON string.

		- <samp>Export</samp>: Opens the 'Gradient Export' dialog box, which allows the current color gradient settings to be exported as a JSON-formatted string of text that describes the current color gradient settings.

		<br>

	- <samp>{% if extra.chunky < 2_05_00 %}Skymap (panoramic){% endif %}{% if extra.chunky >= 2_05_00 %}Skymap (equirectangular){% endif %}</samp>: Sets the sky to use an equirectangular skymap as its texture.

	    - <samp>Load skymap</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as a skymap.

		- <samp>Vertical resolution</samp>: Changes how the skymap is displayed on the sky.

		    - <samp>Half (mirrored)</samp>: Stretches the skymap on the sky such that the bottom of the skymap is on the horizon and the skymap is mirrored below the horizon.

			- <samp>Full</samp>: Displays the skymap on the sky such that the whole skymap is stretched over the whole sky.

		{% if extra.chunky < 2_05_00 %}

		- <samp>Skymap rotation</samp>: Changes the horizontal rotation of the skymap.

		{% endif %}

		{% if extra.chunky >= 2_05_00 %}

		- <samp>Skymap pitch</samp>: Changes the pitch of the skymap.

		- <samp>Skymap yaw</samp>: Changes the yaw of the skymap.

		- <samp>Skymap roll</samp>: Changes the roll of the skymap.

		{% endif %}

		For more information about skymaps, read the [Skymaps](../../../../../user_guides/skymaps) article.

		<br>

	- <samp>{% if extra.chunky < 2_05_00 %}Skymap (spherical){% endif %}{% if extra.chunky >= 2_05_00 %}Skymap (angular){% endif %}</samp>: Sets the sky to use a angular skymap as its texture.

	    - <samp>Load skymap</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as a skymap.

		{% if extra.chunky < 2_05_00 %}

		- <samp>Skymap rotation</samp>: Changes the horizontal rotation of the skymap.

		{% endif %}

		{% if extra.chunky >= 2_05_00 %}

		- <samp>Skymap pitch</samp>: Changes the pitch of the skymap.

		- <samp>Skymap yaw</samp>: Changes the yaw of the skymap.

		- <samp>Skymap roll</samp>: Changes the roll of the skymap.

		{% endif %}

		<br>

	- <samp>Skybox</samp>: Sets the sky to use up to six separate images as textures of the faces of a virtual cube surrounding the scene.

	    - <samp>Load skybox textures</samp>:

		    - <samp>Up</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as the top face of the skybox.

			- <samp>Down</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as the bottom face of the skybox.

			- <samp>Front</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as the front (North) face of the skybox.

			- <samp>Back</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as the back (South) face of the skybox.

			- <samp>Left</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as the left (West) face of the skybox.

			- <samp>Right</samp>: Opens a file explorer dialog box to browse for an image file (PNG, JPG, HDR, PFM) to be loaded as the right (East) face of the skybox.

		- <samp>Skybox rotation</samp>: Changes the horizontal rotation of the skybox.

		<br>

	- <samp>Black</samp>: Sets the color of the entire sky to black.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Preetham sky and Nishita sky panoramas</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/examples/preetham_panorama.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/examples/preetham_panorama.png" alt="Preetham sky panorama">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/examples/nishita_panorama.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/examples/nishita_panorama.png" alt="Nishita sky panorama">
    </a>
  </div>
</div>

<br>

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: Color Gradient editor</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/sky_color_gradient.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/sky_color_gradient.png" alt="Sky color gradient editor">
    </a>
  </div>
</div>

---

- <samp>Transparent sky</samp>: Renders the sky as transparent (alpha = 100%). Note that this does not affect the lighting that the skymap emits, and only applies to direct ray hits on the sky.

## Cloud Controls

- <samp>Enable clouds</samp>: Toggles the existence of clouds similar to the 3D (Fancy graphics) clouds in Minecraft.

- <samp>Cloud size</samp>: Changes the size of the clouds, which is measured in blocks per pixel of the clouds.png texture.

- <samp>Cloud X</samp>: Changes the offset of the clouds on the X-axis in blocks.

- <samp>Cloud Y</samp>: Changes the altitude of the clouds on the Y-axis.

- <samp>Cloud Z</samp>: Changes the offset of the clouds on the Z-axis in blocks.

## Fog Controls

- <samp>Fog density</samp>: Changes the density of the fog. A value of 0 disables fog completely. See [Figure 4](#figure-4) for a comparison of different fog density levels.

- <samp>Sky fog blending</samp>: Changes how much the fog is blended with the sky.

- <samp>Fog color</samp>: Opens a color selector dialog box to change the color of the fog.

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: Comparison of different Fog density levels</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/examples/fog_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/sky_and_fog/examples/fog_comparison.png" alt="Comparison of different fog density levels">
    </a>
  </div>
</div>

--8<-- "includes/abbreviations.md"
