# Samples and Noise

## Random Sampling

Path tracing uses the <a href="https://en.wikipedia.org/wiki/Monte_Carlo_method" target="_blank">Monte Carlo method</a> to render scenes. With this method, rays are distributed randomly within each pixel of the canvas. At each intersection with an object in the scene, a new reflection ray, pointing in a random direction, is generated. The same process repeats if the reflection ray also intersects the scene. After some number of bounces, clamped by the [Ray Depth](../../user_interface/chunky/stable/render_controls/advanced), each ray either exits the scene or is absorbed. When the ray has finished bouncing around the scene, a *sample* value is calculated based on the objects the ray bounced against, and is added to the average for the source pixel. The color of each pixel is averaged from every sample computed for that pixel. Due to the randomness of path tracing, the rendered image can appear noisy at first. The noise decreases over time as more samples are calculated, which is a process that is called convergence.

## Samples Per Pixel (SPP)

The defining factor for render quality is the number of Samples Per Pixel (SPP) it has been rendered to.

<div class="figure" id="figure-1">
  <p class="figure">
  Figure 1: Image noise decreases as SPP value increases
  </p>
  <div class="figureimgcontainer">
    <picture class="figure">
      <source srcset="../../../img/reference/introduction/samples_and_noise/x2_2-sec_loop.webp" type="image/webp">
      <source srcset="../../../img/reference/introduction/samples_and_noise/x2_2-sec_loop.gif" type="image/gif">
      <img class="figure" src="../../../img/reference/introduction/samples_and_noise/x2_2-sec_loop.gif" alt="Increasing SPP animation">
    </picture>
  </div>
</div>

The higher the SPP the image is rendered to, the less noise will be noticeable in that image. However, the added quality per sample decreases as the number of samples rendered increases, since each sample is just contributing to an average of all samples. For example, the difference in image quality between 20,000 SPP and 21,000 SPP will not be as noticeable as the difference between 1,000 SPP and 2,000 SPP. This effect is demonstrated in [Figure 2](#figure-2) below. The result of this is that a doubling of the current SPP of the image is required for a reduction of the image noise by half.

<div class="figure" id="figure-2">
  <p class="figure">
  Figure 2: Speed at which image quality increases decreases as SPP value increases
  </p>
  <div class="figuregridcontainer">
    <picture class="figure">
      <source srcset="../../../img/reference/introduction/samples_and_noise/1ki-2ki_2-sec_loop.webp" type="image/webp">
      <source srcset="../../../img/reference/introduction/samples_and_noise/1ki-2ki_2-sec_loop.gif" type="image/gif">
      <img class="figure" src="../../../img/reference/introduction/samples_and_noise/1ki-2ki_2-sec_loop.gif" alt="1024-2048 SPP comparison">
    </picture>
    <picture class="figure">
      <source srcset="../../../img/reference/introduction/samples_and_noise/20k-21k_2-sec_loop.webp" type="image/webp">
      <source srcset="../../../img/reference/introduction/samples_and_noise/20k-21k_2-sec_loop.gif" type="image/gif">
      <img class="figure" src="../../../img/reference/introduction/samples_and_noise/20k-21k_2-sec_loop.gif" alt="20000-21000 SPP comparison">
    </picture>
  </div>
</div>

## More about noise

Small but bright light sources, such as torches, add very much noise to a scene. The time required to render a scene lit mostly by only a few torches can be especially long. This is an unfortunate and unavoidable disadvantage of the Path Tracing rendering method.

The reason for this effect is based on the low probability for each sampled light path to intersect the torches, coupled with the high luminosity of the object. The final render takes the average of all sampled values, but the average for one pixel can be "too high" for a long time because of the high luminosity in one or more of the samples. The average will decrease over time, as more samples are generated, but for a while there may be one pixel that has been lit by a particular light source that will stand out sharply against several other pixels that have not been lit by the same light source. This causes the bright dots seen in renders at low SPP counts.

<div class="figure" id="figure-3">
  <p class="figure">
  Figure 3: Scene lit by torch rendered to 128 SPP
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/samples_and_noise/noise_torch.png">
      <img class="figure" src="../../../img/reference/introduction/samples_and_noise/noise_torch.png" alt="Scene lit by torch">
    </a>
  </div>
</div>

Torches add much noise to the scene and can take long to render. The scene in [Figure 3](#figure-3) was rendered to 128 SPP. Full block emitters, such as glowstone, have a much higher probability for a sampled light path to include the glowstone, because it is much larger. That means noise is reduced in much fewer samples than with torches. [Figure 4](#figure-4) shows a scene lit by glowstone also rendered to 128 SPP. Note how much less noise exists in that scene than the previous one.

<div class="figure" id="figure-4">
  <p class="figure">
  Figure 4: Scene lit by glowstone rendered to 128 SPP
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/reference/introduction/samples_and_noise/noise_glowstone.png">
      <img class="figure" src="../../../img/reference/introduction/samples_and_noise/noise_glowstone.png" alt="Scene lit by glowstone">
    </a>
  </div>
</div>

Outside of simply brute-forcing more samples to reduce noise, there are a number of methods that can be used to reduce noise or converge a render sooner. For more information, please read the next article on [Next Event Estimation](../next_event_estimation), the article on [Denoising](../../../user_guides/denoising), and <a href="https://jackjt8.github.io/ChunkyGuide/docs/advanced_techniques/denoising.html" target="_blank">jackjt8's Guide to Chunky - Denoising</a>.

## Render Time

There is no definite answer to the amount of time it will take to render a scene. The general guideline is that the longer the image is rendered, the better it will become. Take into account the diminishing returns explained [above](#samples-per-pixel-spp).

The time required to render a nice-looking image depends on several factors. These include how well-lit the scene is; the number of Samples Per Second (SPS) the renderer can produce, which depends on the speed of the CPU and the scene complexity; the Ray Depth; and the number of pixels the canvas has. Scene complexity has no definite measure, but is affected by scene size (amount of loaded chunks and entities), if fog is enabled, if an HDRi skymap is being used, etc. Not every option impacts performance. Scaling the canvas has an effect on render time proportional to the pixel area of the canvas. An image with a resolution of 800 by 800 pixels will take four times as much time to achieve the same quality as an image with a resolution of 400 by 400 pixels will since the total number of pixels has quadrupled. If your renders are taking too long, you can reduce the canvas size for quicker results, albeit at a lower resolution image.

--8<-- "includes/abbreviations.md"
