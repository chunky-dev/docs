# Render Preview

The render preview displays an interactive 3D preview of the loaded chunks. While a render is in progress, it will display the live progress of the render.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The render preview</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/render_preview/render_preview.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/render_preview/render_preview.png" alt="Render preview">
    </a>
  </div>
</div>

Chunky will automatically switch to the render preview once selected chunks are loaded or a different scene is loaded. If a ["scene.dump"](../../../technical/scene_format#dump) file (render progress) has been saved for the loaded scene, then the render preview will display the state of the render at the point where it was saved. If no "scene.dump" file exists for that scene, then Chunky will generate a preview of the loaded chunks based on the camera settings, with crosshairs in the center for targeting. 

[Figure 2](#figure-2) shows the render preview displaying live render progress.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: The render preview displaying live render progress</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/render_preview/render_preview_in_progress.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/render_preview/render_preview_in_progress.png" alt="Render preview displaying live render progress">
    </a>
  </div>
</div>

- Right-click: Opens a [context menu](#right-click-menu) with camera and canvas appearance controls.

## Camera Controls

- Left-click and drag: Changes the view angle of the camera.

- Scroll wheel: Changes the camera FoV.

{% if extra.chunky >= 2_05_00 %}

**Modifier Controls**

Hold down the <kbd>Shift</kbd> key while using the camera controls to increase the precision of the controls.

{% endif %}

### Movement Controls

- <kbd>W</kbd>: Move forward one block.

- <kbd>S</kbd>: Move backward one block.

- <kbd>A</kbd>: Strafe left one block.

- <kbd>D</kbd>: Strafe right one block.

- <kbd>R</kbd>: Move upward one block.

- <kbd>F</kbd>: Move downward one block.

**Modifier Controls**

Hold down a modifier key to multiply the movement of the camera when using the movement controls.

- <kbd>Shift</kbd>: 0.1x blocks

- <kbd>Ctrl</kbd>: 100x blocks

- <kbd>Ctrl</kbd> + <kbd>Shift</kbd>: 10x blocks

## Right-click Menu

Right-clicking the render preview displays a context menu containing some camera controls and some canvas appearance controls.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: The render preview right-click menu</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/render_preview/render_preview_right_click_menu-stable.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/render_preview/render_preview_right_click_menu-stable.png" alt="Render preview right-click menu">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: The render preview right-click menu</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/render_preview/render_preview_right_click_menu-snapshot.png">
      <img class="figure" src="../../../../img/reference/user_interface/chunky/render_preview/render_preview_right_click_menu-snapshot.png" alt="Render preview right-click menu">
    </a>
  </div>
</div>

{% endif %}

- <samp>Set target</samp>: Changes the currently-targeted object to the object of the right-click. This is useful for [<samp>Autofocus</samp>](../render_controls/camera#camera-focus-controls).

- <samp>Show Guides</samp>: Enables an overlay that displays guidelines that divide the canvas into thirds to help compose shots.

- <samp>Canvas scale</samp>: Sets the apparent canvas size to fixed scale values between 25% and 400%. 

    - <samp>25%</samp>

    - <samp>50%</samp>

    - <samp>75%</samp>

    - <samp>100%</samp>

    - <samp>150%</samp>

    - <samp>200%</samp>

    - <samp>300%</samp>

    - <samp>400%</samp>

    - <samp>Fit to Screen</samp>: (Default) Automatically scales the canvas to fit inside the bounds of the render preview tab.

{% if extra.chunky >= 2_05_00 %}

- <samp>Save image as...</samp>: Opens a 'Save As' dialog box to save the current frame of the render preview, the output file format of which can be selected.

- <samp>Copy image to clipboard</samp>: Copies the current frame of the render preview to the clipboard in the PNG file format.

{% endif %}

## Details

The render preview displays a box containing information about the currently-targeted object, if any, and camera information, in the lower left-hand corner.

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: The render preview details box</p>
  <div class="figureimgcontainer">
    <a href="../../../../img/reference/user_interface/chunky/render_preview/render_preview_details.png">
     <img class="figure" src="../../../../img/reference/user_interface/chunky/render_preview/render_preview_details.png" alt="Render preview target details">
    </a>
  </div>
</div>

The four lines in the box provide the following information:

1. Distance to the currently-targeted object in meters (blocks).

2. Block ID and blockstate of the currently-targeted block, if any (does not include entities).

3. Location of the camera in Minecraft coordinates.

4. Direction the camera is facing.

--8<-- "includes/abbreviations.md"
