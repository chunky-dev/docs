# Render Preview

---

The render preview displays an interactive 3D preview of the loaded chunks. While a render is in progress, it will display the live progress of the render. 

<div class="figure" id="figure-3-2-6-1">
  <p class="figure">
  Figure 3.2.6.1: The render preview
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/preview.png">
      <img class="figure" src="../../../img/user_interface/preview.png" alt="Render preview">
    </a>
  </div>
</div>

Chunky will automatically switch to the render preview once selected chunks are loaded or a different scene is loaded. If a [scene.dump](../../technical/scene_format#dump) file (render progress) has been saved for the loaded scene, then the render preview will display the state of the render at the point where it was saved. If no scene.dump file exists for that scene, then Chunky will generate a preview of the loaded chunks based on the camera settings, with crosshairs in the center for targeting. 

[Figure 3.2.6.2](#figure-3-2-6-2) shows the render preview displaying live render progress.

<div class="figure" id="figure-3-2-6-2">
  <p class="figure">
  Figure 3.2.6.2: The render preview displaying live render progress
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/preview_noisy.png">
      <img class="figure" src="../../../img/user_interface/preview_noisy.png" alt="Render preview displaying live render progress">
    </a>
  </div>
</div>

---

## Controls

- `Right-click`: Opens a [context menu](#right-click-menu) with camera and canvas appearance controls.

### Camera Controls

- `Left-click and drag`: Changes the view angle of the camera.

- `Scroll wheel`: Changes the camera FoV.

#### Movement Controls

- `[W]`: Move forward one block.

- `[S]`: Move backward one block.

- `[A]`: Strafe left one block.

- `[D]`: Strafe right one block.

- `[R]`: Move upward one block.

- `[F]`: Move downward one block.

**Modifier Controls**

Hold down a modifier key to multiply the movement of the camera when using the movement controls.

- `[Shift]`: 0.1x blocks

- `[Ctrl]`: 100x blocks

- `[Ctrl]+[Shift]`: 10x blocks

---

### Right-click menu

Right-clicking the render preview displays a context menu containing some camera and canvas appearance controls.

<div class="figure" id="figure-3-2-6-3">
  <p class="figure">
  Figure 3.2.6.3: The render preview right-click menu
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/preview_rightclick.png">
      <img class="figure" src="../../../img/user_interface/preview_rightclick.png" alt="Render preview right-click menu">
    </a>
  </div>
</div>

- `Set target`: Changes the currently-targeted object to the object of the right-click. This is useful for [`Autofocus`](../render_controls/camera#controls).

- `Show Guides`: Enables an overlay that displays guidelines that divide the canvas into thirds to help compose shots.

- `Canvas scale`: Sets the apparent canvas size to fixed scale values between 25% and 400%. 

    - `25%`

    - `50%`

    - `75%`

    - `100%`

    - `150%`

    - `200%`

    - `300%`

    - `400%`

    - `Fit to Screen`: (Default) Automatically scales the canvas to fit inside the bounds of the render preview tab.

#### 2.5.0 Snapshot Controls

The Chunky GUI was improved and reorganized in [Chunky 2.5.0 snapshots](../../../getting_started/configuring_chunky_launcher#advanced-settings), and several controls from other places were relocated to the `Render Preview` tab right-click menu.

<div class="figure" id="figure-3-2-6-4">
  <p class="figure">
  Figure 3.2.6.4: The render preview right-click menu in Chunky 2.5.0 snapshots
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/preview_rightclick_2.5.0.png">
      <img class="figure" src="../../../img/user_interface/preview_rightclick_2.5.0.png" alt="Render preview right-click menu in Chunky 2.5.0 snapshots">
    </a>
  </div>
</div>

- `Save image as...`: Opens a 'Save As' dialog box to save the current frame of the render preview, the output file format of which can be selected.

- `Copy image to clipboard`: Copies the current frame of the render preview to the clipboard in the PNG file format.

---

### Target details

The render preview displays a box containing information about the currently-targeted object, if any, and camera information, in the lower left-hand corner.

<div class="figure" id="figure-3-2-6-5">
  <p class="figure">
  Figure 3.2.6.5: The render preview target details box
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/user_interface/preview_target.png">
     <img class="figure" src="../../../img/user_interface/preview_target.png" alt="Render preview target details">
    </a>
  </div>
</div>

The four lines in the box provide the following information:

1. Distance to the currently-targeted object in meters (blocks).

2. Block ID and blockstate of the currently-targeted block, if any (does not include entities).

3. Location of the camera in Minecraft coordinates.

4. Direction the camera is facing.

---

--8<-- "includes/abbreviations.md"
