# Render Progress Controls

---

The render progress controls are located at the bottom of the left control panel. Beneath these controls, along the bottom of the window, is a set of render progress indicators.

<div class="figure" id="figure-3-2-22-1">
  <p class="figure">
  Figure 3.2.22.1: Render Progress Controls
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_progress_controls.png">
      <img class="figure" src="../../../../img/user_interface/render_progress_controls.png" alt="Render Progress Controls">
    </a>
  </div>
</div>

---

## Controls

- `Start`: Starts or resumes the renderer.

- `Pause`: Pauses the renderer. The current SPP must finish rendering before the renderer can pause.

- `Reset`: Resets the render progress to 0 SPP and generates a render preview.

- `Target SPP`: Sets the SPP value at which the renderer should stop. This value can be altered while the render is in progress. Values beyond the range of the slider can be entered into the associated input field.

---

## Render Information

Chunky displays information about the progress of the current render at the bottom of the window.

- `Render time`: The amount of time the renderer has been active.

- `Rendering`: Indicates the number of SPP of the target SPP that have been rendered.

- `SPP`: The number of SPP that the renderer has rendered.

- `SPS`: An average measure of the number of samples per second the renderer is producing.[^1]

- `ETA`: Estimate of the amount of time until the renderer renders the target SPP. The estimate is based on the SPS, the current SPP, and the target SPP.

At the bottom of the window is a progress bar that displays the progress of the render.

[^1]: The SPP counter will only increase when every pixel in the image has been sampled. For example, a 1920x1080 image contains about 2.07 million pixels (megapixels), and every pixel must be sampled before the SPP counter will increase.

--8<-- "includes/abbreviations.md"
