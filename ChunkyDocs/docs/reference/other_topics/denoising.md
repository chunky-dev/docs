# Denoising

---

Image noise is one of the consequences of the [path tracing](../../introduction/path_tracing) rendering method; however, there are methods to remove noise from the image, a process which is called *denoising*.

---

## More on SPP

As stated in the [Samples and Noise](../../introduction/samples_and_noise) article, a path tracing renderer renders an image by repeatedly tracing a random ray through the scene for each pixel, and generating a sample value for each ray traced. The average of every sample value for each pixel is used to calculate the color value for that pixel. Due to the randomness of path tracing, the image can appear noisy at first, but, over time, as more samples are generated, the noise will decrease. This is the simplest method to denoise an image; however, the greatest problem with this approach is that a doubling of the image SPP is required to reduce the noise by half. The time required to render double the current SPP to reduce the noise by half increases exponentially as the current SPP increases (see [Figure 3.1.2.1](../../introduction/samples_and_noise#figure-3-1-2-1) and [Figure 3.1.2.2](../../introduction/samples_and_noise#figure-3-1-2-2) for examples of this effect), so this is not a viable solution for many people. However, other denoising methods that do not require as much time and energy exist.

---

## Artificial Intelligence-accelerated Denoising

While most denoising methods use a basic blurring approach, AI-accelerated denoising software uses a different approach called *deep learning*. With this approach, the software is trained to distinguish between image signal and image noise in images rendered to a wide range of SPP values. This range extends from 1 SPP to the SPP of an image that is almost fully converged. While the denoising software can operate solely on the noisy input, the denoised results can improve greatly with the utilization of Arbitrary Output Variables (AOVs), which provide additional information to the software. Some AOVs related to denoising are listed below.

- Albedo: The *Albedo* AOV contains the pure color information of the scene independent of lighting.

- Normal: The *Normal* AOV contains information about the normals of the surfaces of objects in the scene.

Chunky does not have native support to render such AOVs, but such support can be added through [plugins](../../../plugins/chunky_plugins). One such plugin is the [Denoising Plugin](../../../plugins/plugin_list#denoising-plugin), which not only adds support for rendering the Albedo AOV and the Normal AOV, but also can automatically denoise the image by using <a href="https://www.openimagedenoise.org/" target="_blank">Intel Open Image Denoise</a>, which runs on any 64-bit CPU that supports SSE 4.1, or on Apple Silicon. An alternative to Intel Open Image Denoise is the <a href="https://github.com/DeclanRussell/NvidiaAIDenoiser" target="_blank">NVIDIA AI Denoiser</a>, which runs on an NVIDIA GPU of Maxwell architecture or newer, with a driver version of 465.84 or greater. However, denoising with this tool must be done manually.

<div class="figure" id="figure-3-3-1-1">
  <p class="figure">
  Figure 3.3.1.1: Denoiser plugin AOVs and denoised result
  </p>
  <table class="figure">
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/examples/denoising/denoiser_albedo.png">
          <img class="figure" src="../../../img/examples/denoising/denoiser_albedo.png" alt="Albedo AOV">
        </a>
        <p>
        Albedo AOV
        </p>
      </td>
      <td class="figure">
        <a href="../../../img/examples/denoising/denoiser_normal.png">
          <img class="figure" src="../../../img/examples/denoising/denoiser_normal.png" alt="Normal AOV">
        </a>
        <p>
        Normal AOV
        </p>
      </td>
    </tr>
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/examples/denoising/denoiser_64_spp.png">
          <img class="figure" src="../../../img/examples/denoising/denoiser_64_spp.png" alt="Scene rendered to 64 SPP">
        </a>
        <p>
        Scene rendered to 64 SPP
        </p>
      </td>
      <td class="figure">
        <a href="../../../img/examples/denoising/denoiser_denoised.png">
          <img class="figure" src="../../../img/examples/denoising/denoiser_denoised.png" alt="Denoised image">
        </a>
        <p>
        Denoised image
        </p>
      </td>
    </tr>
  </table>
</div>

An important aspect of AI-accelerated denoisers is that they cannot be expected to denoise images perfectly. If the denoiser is not provided the AOVs, or the noisy image is too challenging for the denoiser to denoise effectively, then the denoised image may contain undesired visual artifacts, such as deformed blocks and blurred textures. This gives such denoised images an "oil painting" effect, as shown in [Figure 3.3.1.2](#figure-3-3-1-2). To improve the denoised output, provide the AOVs, if possible, and render the image to a higher SPP. The higher the SPP the noisy image is rendered to, the better the denoiser will perform.

<div class="figure" id="figure-3-3-1-2">
  <p class="figure">
  Figure 3.3.1.2: The "oil painting" effect in a denoised image
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/denoising/oil_painting_effect.jpg">
      <img class="figure" src="../../../img/examples/denoising/oil_painting_effect.jpg" alt="&quot;Oil painting&quot; effect in a denoised image">
    </a>
  </div>
</div>

---

## Extracting Lighting Feature Images

It is possible to extract separate lighting feature images from the scene through changing of certain settings in Chunky. The separate images can be combined during the post-processing to reproduce the final render. The main reason for separating the lighting feature images is to denoise only the images that contain the most noise. Having control over which lighting feature images are denoised can save much time, since most denoising methods make use of a destructive blur, which can reduce fine detail. Denoising only the most noisy images and then combining them helps to preserve detail which would likely be lost if the whole image were simply denoised. More information about this denoising method is located in <a href="https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/denoising.html" target="_blank">jackjt8's Guide to Chunky - Denoising</a>.

Below are listed the control values required to obtain renders of certain lighting features.

- Sunlight: Enable [`Enable sunlight`](../../user_interface/render_controls/lighting#controls), Disable [`Enable emitters`](../../user_interface/render_controls/lighting#controls), set [`Sky mode`](../../user_interface/render_controls/sky_and_fog#sky-mode-settings) to `Black`, and set [`Fog density`](../../user_interface/render_controls/sky_and_fog#controls) to *0*.

- Sky light: Disable [`Enable sunlight`](../../user_interface/render_controls/lighting#controls), disable [`Enable emitters`](../../user_interface/render_controls/lighting#controls), set [`Sky mode`](../../user_interface/render_controls/sky_and_fog#sky-mode-settings) to the desired value, and set [`Fog density`](../../user_interface/render_controls/sky_and_fog#controls) to *0*.

- Emitter light: Disable [`Enable sunlight`](../../user_interface/render_controls/lighting#controls), enable [`Enable emitters`](../../user_interface/render_controls/lighting#controls), set [`Sky mode`](../../user_interface/render_controls/sky_and_fog#sky-mode-settings) to `Black`, and set [`Fog density`](../../user_interface/render_controls/sky_and_fog#controls) to *0*.

- Fog only: Disable [`Enable sunlight`](../../user_interface/render_controls/lighting#controls), disable [`Enable emitters`](../../user_interface/render_controls/lighting#controls), set [`Sky mode`](../../user_interface/render_controls/sky_and_fog#sky-mode-settings) to `Black`, and set [`Fog density`](../../user_interface/render_controls/sky_and_fog#controls) to the desired value.

<div class="figure" id="figure-3-3-1-3">
  <p class="figure">
  Figure 3.3.1.3: Extracting lighting feature images
  </p>
  <table class="figure">
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/examples/denoising/noise_test_sun-8192.jpg">
          <img class="figure" src="../../../img/examples/denoising/noise_test_sun-8192.jpg" alt="Sunlight pass">
        </a>
        <p>
        Sunlight pass
        </p>
      </td>
      <td class="figure">
        <a href="../../../img/examples/denoising/noise_test_sky-16384.jpg">
          <img class="figure" src="../../../img/examples/denoising/noise_test_sky-16384.jpg" alt="Sky light pass">
        </a>
        <p>
        Sky light pass
        </p>
      </td>
    </tr>
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/examples/denoising/noise_test_emitter-16384.jpg">
          <img class="figure" src="../../../img/examples/denoising/noise_test_emitter-16384.jpg" alt="Emitter light pass">
        </a>
        <p>
        Emitter light pass
        </p>
      </td>
      <td class="figure">
        <a href="../../../img/examples/denoising/noise_test_comp.jpg">
          <img class="figure" src="../../../img/examples/denoising/noise_test_comp.jpg" alt="Composite">
        </a>
        <p>
        Composite
        </p>
      </td>
    </tr>
    <tr class="figure">
      <td class="figure">
        <a href="../../../img/examples/denoising/noise_test_all-16384.jpg">
          <img class="figure" src="../../../img/examples/denoising/noise_test_all-16384.jpg" alt="Scene rendered to 16384 SPP">
        </a>
        <p>
        Scene rendered to 16384 SPP
        </p>
      </td>
      <td class="figure">
	      <!-- Empty cell -->
      </td>
    </tr>
  </table>
</div>

---

--8<-- "includes/abbreviations.md"
