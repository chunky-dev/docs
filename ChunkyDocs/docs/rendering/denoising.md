# Denosing

Image noise is an inevitable consequence of path tracing.

![Cornell Box at 16 spp](imgs/cornell_box/16.png)
Cornell Box rendered at 16 spp with lots of image noise.

Samples per Pixel (spp)
---

Path tracing renders a sample by recursively tracing a random ray for each pixel through the
scene. Theoretically, after an infinite amount of samples, this image will not have any
noise and will be a perfect rendering of that scene. Of course we can't actually render
and infinite amount of samples, so we must deal with image noise.

The simplest way to decrease noise is by simply rendering more samples per pixel.
The biggest disadvantage to this is that a 2x increase in spp is required for a 2x
decrease in noise. In other words, a 32 spp image will need 32 more samples to decrease
the noise in half, a 1,000,000 spp image will need 1,000,000 more samples to decrease the
noise by half. The time required increases exponentially and thus this is not a viable
solution except for the most dedicated of renderers.

![Cornell Box at 1024 spp](imgs/cornell_box/1024.png)
Cornell Box rendered at 1,024 spp.

![Cornell Box at 1,000,000 spp](imgs/cornell_box/1000000.png)
Cornell Box rendered at 1,000,000 spp.

AI Based Denoising
---
`TODO`
