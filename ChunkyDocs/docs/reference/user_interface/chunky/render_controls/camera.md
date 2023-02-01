# Render Controls - Camera

The <samp>Camera</samp> tab contains controls for the virtual camera in the scene.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Camera</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/camera_tab-stable.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/camera_tab-stable.png" alt="Camera tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Camera</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/camera_tab-snapshot.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/camera_tab-snapshot.png" alt="Camera tab">
    </a>
  </div>
</div>

{% endif %}

- <samp>Load preset</samp>: Dropdown menu to select a camera preset to load for the selected camera.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/iso-nw.png" style="vertical-align: middle;"> <samp>Isometric West-North (North-West)</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Parallel</samp>, and points the camera North-West with an altitude angle of 45 degrees below the horizon.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/iso-ne.png" style="vertical-align: middle;"> <samp>Isometric North-East</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Parallel</samp>, and points the camera North-East with an altitude angle of 45 degrees below the horizon.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/iso-se.png" style="vertical-align: middle;"> <samp>Isometric East-South (South-East)</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Parallel</samp>, and points the camera South-East with an altitude angle of 45 degrees below the horizon.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/iso-sw.png" style="vertical-align: middle;"> <samp>Isometric South-West</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Parallel</samp>, and points the camera South-West with an altitude angle of 45 degrees below the horizon.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/skybox-right.png" style="vertical-align: middle;"> <samp>Skybox Right</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Standard</samp>, sets the camera <samp>Field of View (zoom)</samp> to *90*, and points the camera East.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/skybox-left.png" style="vertical-align: middle;"> <samp>Skybox Left</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Standard</samp>, sets the camera <samp>Field of View (zoom)</samp> to *90*, and points the camera West.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/skybox-up.png" style="vertical-align: middle;"> <samp>Skybox Up</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Standard</samp>, sets the camera <samp>Field of View (zoom)</samp> to *90*, and points the camera upward, with North being at the bottom of the frame.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/skybox-down.png" style="vertical-align: middle;"> <samp>Skybox Down</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Standard</samp>, sets the camera <samp>Field of View (zoom)</samp> to *90*, and points the camera downward, with South being at the bottom of the frame.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/skybox-front.png" style="vertical-align: middle;"> <samp>Skybox Front (North)</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Standard</samp>, sets the camera <samp>Field of View (zoom)</samp> to *90*, and points the camera North.

    - <img src="../../../../../img/reference/user_interface/chunky/render_controls/camera/skybox-back.png" style="vertical-align: middle;"> <samp>Skybox Back</samp>: Sets the <samp>Projection mode</samp> of the selected camera to <samp>Standard</samp>, sets the camera <samp>Field of View (zoom)</samp> to *90*, and points the camera South.

- <samp>Camera</samp>: Input field to set a name for the current camera. By clicking the button immediately to the right of the input field, a dropdown menu containing a list of all named cameras can be accessed. A camera can be switched to by clicking on its list entry.

- <samp>Clone</samp>: Creates a copy of the currently-selected camera.

- <samp>Remove</samp>: Removes the currently-selected camera from the list.

{% if extra.chunky >= 2_05_00 %}

- <samp>Lock selected camera</samp>: Disables all controls that change the camera view, including render preview [camera controls](../../render_preview#camera-controls), for the selected camera.

{% endif %}

## Position and Orientation Controls

- <samp>Position & Orientation</samp>: Collapsible panel that contains controls to change the position, orientation, and lens shift of the selected camera.

{% if extra.chunky < 2_05_00 %}

    - <samp>Position</samp>: Each input field on this row changes the X, Y, or Z coordinate of the selected camera, respectively.

    - <samp>Orientation</samp>: Each input field on this row changes the yaw, pitch, or roll of the selected camera, respectively, in degrees.

    - <samp>Lens shift</samp>: Each input field on this row changes the horizontal lens shift or the vertical lens shift of the selected camera, respectively. <a href="https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/lenseshift.html" target="_blank">Lens shift</a> is relative to the canvas height. [Figure 2](#figure-2) displays an example of the effect of lens shift.

- <samp>Camera to player</samp>: Moves the selected camera to the location of one of the players, if loaded. "Which one? No clue."[^1]

- <samp>Center camera</samp>: Moves the selected camera to the center of the loaded chunks.

{% endif %}

{% if extra.chunky >= 2_05_00 %}

    - <samp>Position</samp>: Input fields to change the location of the selected camera.

        - <samp>x</samp>: Input field to change the X-coordinate of the selected camera.

        - <samp>y</samp>: Input field to change the Y-coordinate of the selected camera.

        - <samp>z</samp>: Input field to change the Z-coordinate of the selected camera.

        - <samp>Center camera above loaded chunks</samp>: Moves the selected camera to the center of the loaded chunks.

    - <samp>Orientation</samp>: Input fields to change the orientation of the selected camera.

        - <samp>yaw</samp>: Input field to change the yaw of the selected camera, in degrees, from a reference direction of West.

        - <samp>pitch</samp>: Input field to change the pitch of the selected camera, in degrees, from a reference direction of downwards.

        - <samp>roll</samp>: Input field to change the roll of the selected camera, in degrees, from a reference orientation of upright.

    - <samp>Lens shift</samp>: Input fields to change the <a href="https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/lenseshift.html" target="_blank">lens shift</a> of the selected camera, relative to the canvas height. [Figure 2](#figure-2) displays an example of the effect of lens shift.

        - <samp>x</samp>: Input field to change the horizontal lens shift of the selected camera, relative to the canvas height.

        - <samp>y</samp>: Input field to change the vertical lens shift of the selected camera, relative to the canvas height.

{% endif %}

## Camera Projection Controls

- <samp>Projection mode</samp>: Dropdown menu to select the camera projection type for the selected camera. [Figure 3](#figure-3) shows a comparison of the different camera projection modes.

    - <samp>Standard</samp>: Sets the selected camera to use <a href="https://en.wikipedia.org/wiki/Pinhole_camera" target="_blank">pinhole projection</a>, which is similar to how many cameras work, and is how Minecraft works.

    - <samp>Parallel</samp>: Sets the selected camera to use <a href="https://en.wikipedia.org/wiki/Parallel_projection" target="_blank">parallel projection</a>, in which the camera is infinitely distant from the scene, and has an infinite focal length (zoom). This causes parallel lines in the three-dimensional scene to remain parallel in the two-dimensional image, which causes all blocks to appear the same size, regardless of "distance" from the camera.

    - <samp>Fisheye</samp>: Sets the selected camera to use full-frame <a href="https://wiki.panotools.org/Fisheye_Projection" target="_blank">fisheye projection</a>, which maps a portion of the surface of a sphere to a two-dimensional image.

    - <samp>Stereographic</samp>: Sets the selected camera to use <a href="https://wiki.panotools.org/Stereographic_Projection" target="_blank">stereographic projection</a>, which is an alternative to fisheye projection that has less distortion at the edges of the image.

    - <samp>Panoramic (equirectangular)</samp>: Sets the selected camera to use <a href="https://wiki.panotools.org/Equirectangular_Projection" target="_blank">equirectangular projection</a>, which maps a portion of the surface of a sphere to a two-dimensional image, transforming spherical coordinates into planar coordinates.

    - <samp>Panoramic (slot)</samp>: Sets the selected camera to use slot panoramic projection, which behaves like a pinhole camera in the vertical direction, and like a fisheye camera in the horizontal direction.

    - <samp>Omni-directional Stereo (left eye)</samp>: Sets the selected camera to use omni-directional stereo projection, which is identical to equirectangular projection, but with interpupillary distance factored in, to create distinct images for viewing on a VR system. This mode creates an image to be viewed by the left eye.

    - <samp>Omni-directional Stereo (right eye)</samp>: Sets the selected camera to use omni-directional stereo projection. This mode creates an image to be viewed by the right eye.

## Camera Focus Controls

- <samp>Field of view (zoom)</samp>: Changes the vertical field of view of the selected camera. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Depth of field</samp>: Changes the <a href="https://www.nfi.edu/depth-of-field/" target="_blank">depth of field</a>, measured in centimeters (100 centimeters = 1 meter = 1 block), of the selected camera.

- <samp>Subject distance</samp>: Changes the distance to the focus point, measured in meters (blocks), of the selected camera. Only effective when <samp>Depth of field</samp> is not set to *infinity*.

- <samp>Autofocus</samp>: Focuses the selected camera on the set target by setting the <samp>Subject distance</samp> to the distance to the set target and setting the <samp>Depth of field</samp> to the one hundredth of the square of the distance to the set target.

{% if extra.chunky >= 2_05_00 %}

- <samp>Aperture shape</samp>: Dropdown menu to change the shape of the aperture of the selected virtual camera. The effect of this is only apparent when <samp>Depth of field</samp> is not set to *infinity*. [Figure 4](#figure-4) displays some examples of the effects of different aperture shapes. 

    - <samp>CIRCLE</samp>

    - <samp>HEXAGON</samp>

    - <samp>PENTAGON</samp>

    - <samp>STAR</samp>

    - <samp>GAUSSIAN</samp>

    - <samp>CUSTOM</samp>: Opens a file explorer dialog box to browse for a PNG or JPG file that defines the custom aperture shape. The image must be square, and the aperture shape is defined by colors, with lighter colors allowing more light through and darker colors allowing less light through.

{% endif %}

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Using lens shift to achieve a tilt-shift effect to keep the portal borders parallel</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/lens_shift.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/lens_shift.png" alt="Lens shift example">
    </a>
  </div>
</div>

<br>

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: Comparison of the different camera projection modes, at their default FoV values and a canvas aspect ratio of <em>2:1</em>.</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/standard_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/standard_projection.png" alt="Standard projection">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/fisheye_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/fisheye_projection.png" alt="Fisheye projection">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/stereographic_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/stereographic_projection.png" alt="Stereographic projection">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/panoramic_equirectangular_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/panoramic_equirectangular_projection.png" alt="Panoramic (equirectangular) projection">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/panoramic_slot_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/panoramic_slot_projection.png" alt="Panoramic (slot) projection">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/omni-directional_stereo_left_eye_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/omni-directional_stereo_left_eye_projection.png" alt="Omni-directional Stereo projection (left eye)">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/omni-directional_stereo_right_eye_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/omni-directional_stereo_right_eye_projection.png" alt="Omni-directional Stereo projection (right eye)">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/parallel_projection.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/parallel_projection.png" alt="Parallel projection">
    </a>
  </div>
</div>

{% if extra.chunky >= 2_05_00 %}

<br>

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: Comparison of different aperture shapes</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/aperture_circle.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/aperture_circle.png" alt="Circle aperture shape">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/aperture_star.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/aperture_star.png" alt="Star aperture shape">
    </a>
    <hr>
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/aperture_custom.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/camera/examples/aperture_custom.png" alt="Custom aperture shape">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky < 2_05_00 %}

[^1]: This control is out-of-date, and was removed in the 2.5.0 snapshots. Its replacement is the <samp style="font-size: 1em;">Camera to entity</samp> control in the [<samp style="font-size: 1em;">Entities</samp>](../entities) tab.

{% endif %}

--8<-- "includes/abbreviations.md"
