# Render Controls - Camera

---

The `Camera` tab, which is the fifth tab in the left control panel, contains controls for the virtual camera in the scene.

<div class="figure" id="figure-3-2-15-1">
  <p class="figure">
  Figure 3.2.15.1: The Camera tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/camera_tab_2.4.x.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/camera_tab_2.4.x.png" alt="Camera tab">
    </a>
  </div>
</div>

---

## Controls

- `Load preset`: Dropdown menu to select a camera preset to load for the selected camera.

    - <img src="../../../../img/user_interface/render_controls/iso-nw.png" style="vertical-align: middle;"> `Isometric West-North (North-West)`: Sets the `Projection mode` of the selected camera to `Parallel`, and points the camera North-West with an altitude angle of 45 degrees below the horizon. 

    - <img src="../../../../img/user_interface/render_controls/iso-ne.png" style="vertical-align: middle;"> `Isometric North-East`: Sets the `Projection mode` of the selected camera to `Parallel`, and points the camera North-East with an altitude angle of 45 degrees below the horizon. 

    - <img src="../../../../img/user_interface/render_controls/iso-se.png" style="vertical-align: middle;"> `Isometric East-South (South-East)`: Sets the `Projection mode` of the selected camera to `Parallel`, and points the camera South-East with an altitude angle of 45 degrees below the horizon. 

    - <img src="../../../../img/user_interface/render_controls/iso-sw.png" style="vertical-align: middle;"> `Isometric South-West`: Sets the `Projection mode` of the selected camera to `Parallel`, and points the camera South-West with an altitude angle of 45 degrees below the horizon. 

    - <img src="../../../../img/user_interface/render_controls/skybox-right.png" style="vertical-align: middle;"> `Skybox Right`: Sets the `Projection mode` of the selected camera to `Standard`, sets the camera `Field of View (zoom)` to *90*, and points the camera East.

    - <img src="../../../../img/user_interface/render_controls/skybox-left.png" style="vertical-align: middle;"> `Skybox Left`: Sets the `Projection mode` of the selected camera to `Standard`, sets the camera `Field of View (zoom)` to *90*, and points the camera West.

    - <img src="../../../../img/user_interface/render_controls/skybox-up.png" style="vertical-align: middle;"> `Skybox Up`: Sets the `Projection mode` of the selected camera to `Standard`, sets the camera `Field of View (zoom)` to *90*, and points the camera upward, with North being at the bottom of the frame.

    - <img src="../../../../img/user_interface/render_controls/skybox-down.png" style="vertical-align: middle;"> `Skybox Down`: Sets the `Projection mode` of the selected camera to `Standard`, sets the camera `Field of View (zoom)` to *90*, and points the camera downward, with South being at the bottom of the frame.

    - <img src="../../../../img/user_interface/render_controls/skybox-front.png" style="vertical-align: middle;"> `Skybox Front (North)`: Sets the `Projection mode` of the selected camera to `Standard`, sets the camera `Field of View (zoom)` to *90*, and points the camera North.

    - <img src="../../../../img/user_interface/render_controls/skybox-back.png" style="vertical-align: middle;"> `Skybox Back`: Sets the `Projection mode` of the selected camera to `Standard`, sets the camera `Field of View (zoom)` to *90*, and points the camera South.

- `Camera`: Input field to set a name for the current camera. By clicking the button immediately to the right of the input field, a dropdown menu containing a list of all named cameras can be accessed. A camera can be switched to by clicking on its list entry.

- `Clone`: Creates a copy of the currently-selected camera.

- `Remove`: Removes the currently-selected camera from the list.

---

- `Position & Orientation`: Collapsible panel that contains controls to change the position, orientation, and lens shift of the selected camera.

    - `Position`: Each input field on this row changes the X, Y, or Z coordinate of the selected camera, respectively.

    - `Orientation`: Each input field on this row changes the yaw, pitch, or roll of the selected camera, respectively, in degrees.

    - `Lens shift`: Each input field on this row changes the horizontal lens shift or the vertical lens shift of the selected camera, respectively. <a href="https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/lenseshift.html" target="_blank">Lens shift</a> is relative to the canvas height.

- `Camera to player`: Moves the selected camera to the location of one of the players, if loaded. "Which one? No clue."[^1]

- `Center camera`: Moves the selected camera to the center of the loaded chunks.

---

- `Projection mode`: Dropdown menu to select the camera projection type for the selected camera. [Figure 3.2.15.2](#figure-3-2-15-2) shows a comparison of the different camera projection modes.

    - `Standard`: Sets the selected camera to use <a href="https://en.wikipedia.org/wiki/Pinhole_camera" target="_blank">pinhole projection</a>, which is similar to how many cameras work, and is how Minecraft works.

    - `Parallel`: Sets the selected camera to use <a href="https://en.wikipedia.org/wiki/Parallel_projection" target="_blank">parallel projection</a>, in which the camera is infinitely distant from the scene, and has an infinite focal length (zoom). This causes parallel lines in the three-dimensional scene to remain parallel in the two-dimensional image, which causes all blocks to appear the same size, regardless of "distance" from the camera.

    - `Fisheye`: Sets the selected camera to use full-frame <a href="https://wiki.panotools.org/Fisheye_Projection" target="_blank">fisheye projection</a>, which maps a portion of the surface of a sphere to a two-dimensional image.

    - `Stereographic`: Sets the selected camera to use <a href="https://wiki.panotools.org/Stereographic_Projection" target="_blank">stereographic projection</a>, which is an alternative to fisheye projection that has less distortion at the edges of the image.

    - `Panoramic (equirectangular)`: Sets the selected camera to use <a href="https://wiki.panotools.org/Equirectangular_Projection" target="_blank">equirectangular projection</a>, which maps a portion of the surface of a sphere to a two-dimensional image, transforming spherical coordinates into planar coordinates.

    - `Panoramic (slot)`: Sets the selected camera to use slot panoramic projection, which behaves like a pinhole camera in the vertical direction, and like a fisheye camera in the horizontal direction.

    - `Omni-directional Stereo (left eye)`: Sets the selected camera to use omni-directional stereo projection, which is identical to equirectangular projection, but with interpupillary distance factored in, to create distinct images for viewing on a VR system. This mode creates an image to be viewed by the left eye.

    - `Omni-directional Stereo (right eye)`: Sets the selected camera to use omni-directional stereo projection. This mode creates an image to be viewed by the right eye.

- `Field of view (zoom)`: Changes the vertical field of view of the selected camera. Positive values beyond the range of the slider can be entered into the associated input field.

- `Depth of field`: Changes the <a href="https://www.nfi.edu/depth-of-field/" target="_blank">depth of field</a>, measured in centimeters (100 centimeters = 1 meter = 1 block), of the selected camera.

- `Subject distance`: Changes the distance to the focus point, measured in meters (blocks), of the selected camera. Only effective when `Depth of field` is not set to *infinity*.

- `Autofocus`: Focuses the selected camera on the set target by setting the `Subject distance` to the distance to the set target and setting the `Depth of field` to the one hundredth of the square of the distance to the set target.

<div class="figure" id="figure-3-2-15-2">
  <p class="figure">
  Figure 3.2.15.2: Comparison of the different camera projection modes, at their default FoV values and a canvas aspect ratio of <em>2:1</em>.
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/camera/standard_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/standard_projection.png" alt="Standard projection">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/fisheye_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/fisheye_projection.png" alt="Fisheye projection">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/stereographic_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/stereographic_projection.png" alt="Stereographic projection">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/panoramic_equirectangular_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/panoramic_equirectangular_projection.png" alt="Panoramic (equirectangular) projection">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/panoramic_slot_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/panoramic_slot_projection.png" alt="Panoramic (slot) projection">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/omni-directional_stereo_left_eye_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/omni-directional_stereo_left_eye_projection.png" alt="Omni-directional Stereo projection (left eye)">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/omni-directional_stereo_right_eye_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/omni-directional_stereo_right_eye_projection.png" alt="Omni-directional Stereo projection (right eye)">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/parallel_projection.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/parallel_projection.png" alt="Parallel projection">
    </a>
  </div>
</div>

---

### 2.5.0 Snapshot controls

The `Camera` tab was improved in [Chunky 2.5.0 snapshots](../../../../getting_started/configuring_chunky_launcher#advanced-settings).

<div class="figure" id="figure-3-2-15-3">
  <p class="figure">
  Figure 3.2.15.3: The Camera tab in Chunky 2.5.0 snapshots
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/camera_tab_2.5.0.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/camera_tab_2.5.0.png" alt="2.5.0 Snapshot Camera tab">
    </a>
  </div>
</div>

- `Position & Orientation`: Collapsible panel that contains controls to change the position, orientation, and lens shift of the selected camera.

    - `Position`: Input fields to change the location of the selected camera.

        - `x`: Input field to change the X-coordinate of the selected camera.

        - `y`: Input field to change the Y-coordinate of the selected camera.

        - `z`: Input field to change the Z-coordinate of the selected camera.

        - `Center camera above loaded chunks`: Moves the selected camera to the center of the loaded chunks.

    - `Orientation`: Input fields to change the orientation of the selected camera.

        - `yaw`: Input field to change the yaw of the selected camera, in degrees, from a reference direction of West.

        - `pitch`: Input field to change the pitch of the selected camera, in degrees, from a reference direction of downwards.

        - `roll`: Input field to change the roll of the selected camera, in degrees, from a reference orientation of upright.

    - `Lens shift`: Input fields to change the lens shift of the selected camera, relative to the canvas height.

        - `x`: Input field to change the horizontal lens shift of the selected camera, relative to the canvas height.

        - `y`: Input field to change the vertical lens shift of the selected camera, relative to the canvas height.

- `Camera to player`: This control was removed from the `Camera` tab. Its replacement is the `Camera to entity` control in the [`Entities`](../entities#controls) tab.

- `Center camera`: This control was renamed to `Center camera above loaded chunks` and relocated to the `Position & Orientation` panel.

- `Aperture shape`: Dropdown menu to change the shape of the aperture of the selected virtual camera. The effect of this is only apparent when `Depth of field` is not set to *infinity*.

    - `CIRCLE`

    - `HEXAGON`

    - `PENTAGON`

    - `STAR`

    - `GAUSSIAN`

    - `CUSTOM`: Opens a file explorer dialog box to browse for a PNG or JPG file that defines the custom aperture shape. The image must be square, and the aperture shape is defined by colors, with lighter colors allowing more light through and darker colors allowing less light through.

<div class="figure" id="figure-3-2-15-4">
  <p class="figure">
  Figure 3.2.15.4: Comparison of different aperture shapes
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/camera/aperture_circle.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/aperture_circle.png" alt="Circle aperture shape">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/aperture_star.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/aperture_star.png" alt="Star aperture shape">
    </a>
    <hr>
    <a href="../../../../img/examples/render_controls/camera/aperture_custom.png">
      <img class="figure" src="../../../../img/examples/render_controls/camera/aperture_custom.png" alt="Custom aperture shape">
    </a>
  </div>
</div>

[^1]: This control is out-of-date, and was removed in the 2.5.0 snapshots. Its replacement is the `Camera to entity` control in the [`Entities`](../entities#controls) tab.

--8<-- "includes/abbreviations.md"
