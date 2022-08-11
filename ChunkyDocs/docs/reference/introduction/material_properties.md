# Material Properties

---

In Chunky, every block and "entity" is listed as a material. Each material has several properties which determine how light interacts with that material. For every material except for beacon beam segments, these properties can be set in the [`Materials`](../../user_interface/render_controls/materials) tab. Material properites for beacon beam segments can be set in the [`Entities`](../../user_interface/render_controls/entities#beacon-beam-controls) tab.

---

### Emittance

The `Emittance` of a material is the strength of the light that that material emits. Light emitted from materials which have an emittance value that is greater than *0* is colored according to the color of the texture of that material. Due to [path tracing](../path_tracing), which is the rendering method that Chunky uses by default, the total light output is dependent on the amount of surface area that a block has. For example, for a given emittance value, a glowstone block outputs a greater amount of light than a torch does.

!!! info "Calculating material emittance"
    To calculate the relative emittance value for a block, divide the in-game light level of that block by the total surface area of the block, measured in pixels. Then multiply that value by *102.4*. The calculation is represented by the equation: `emittance = (inGameLightLevel/surfaceAreaInPixels)*102.4`, which is derived from the equation: `emittance = (inGameLightLevel/15)*(1536/surfaceAreaInPixels)`. This causes full blocks with an in-game light level of *15*, such as glowstone, to have an emittance value of *1*. Note that this value is only a simple calculation, and can be adjusted depending on the texture of the block.
    
---

### Specular

The `Specular` of a material is the fraction of light reflecting off its surface that reflects as it would reflect off the surface of a mirror. It is measured in a scale of *0* to *1*. A material with a specular value of *0* will reflect light diffusely, while a material with a specular value of *1* will reflect light as a mirror would. See [Figure 3.2.17.2](../../user_interface/render_controls/materials#figure-3-2-17-2) for a comparison between different specular values.

!!! tip "Wet surfaces"
    One way to make a surface appear wet is to set a small specular value on the material. While physically-correct rendering of wet surfaces is <a href="http://graphics.ucsd.edu/~henrik/papers/rendering_wet_materials/rendering_wet_materials_egwr99.pdf" target="_blank">much more complex</a>, this is a decent way to render rainy or wet scenes in Chunky.

---

### Smoothness

The `Smoothness` of a material is the amount of irregularity in the surface of the texture, which changes the amount of diffusion in the light reflectivity. It is measured in a scale of *0* to *1*. A material with a smoothness value of *1* will be perfectly smooth, while a material with a smoothness value of *0* will be perfectly diffuse. See [Figure 3.2.17.3](../../user_interface/render_controls/materials#figure-3-2-17-3) for a comparison between different smoothness values.

!!! info "Smoothness vs. roughness"
    Internally, Chunky uses *linear roughness* for its calculations. Working with roughness is rather hard for people, so LabPBR introduced *perceptual smoothness*, which is what Chunky uses in the [`Materials`](../../user_interface/render_controls/materials) tab. This makes it so that a material with a smoothness value of *0.5* looks twice as smooth as a material with a smoothness value of *0.25* to a human.
    
    You can learn more about perceptual smoothness, including the formula to convert between perceptional smoothness and linear roughness, in the <a href="https://wiki.shaderlabs.org/wiki/LabPBR_Material_Standard" target="_blank">shaderLABS Wiki</a>.

---

### Index of Refraction (IoR)

The Index of Refraction (`IoR`) of a material is the ratio of the speed of light in a vacuum to the speed of light in that material. This changes how much the light bends when entering and exiting that material. See [Figure 3.2.17.4](../../user_interface/render_controls/materials#figure-3-2-17-4) for a comparison between different IoR values.

---

### Metalness

The `Metalness` of a material is the fraction of light reflecting off its surface that reflects as it would off a mirror, but tinted according to the texture of the material. It is measured in a scale of *0* to *1*. A material with a metalness value of *0* will reflect light diffusely, while a material with a metalness value of *1* will reflect light as a mirror would, but tint it according to the texture of that material. See [Figure 3.2.17.5](../../user_interface/render_controls/materials#figure-3-2-17-5) for a comparison between different metalness values, and see [Figure 3.2.17.6](../../user_interface/render_controls/materials#figure-3-2-17-6) for a comparison between metalness and specular properties.

!!! info "Metalness vs. real world"
    In the real world, metals reflect light differently than dielectric materials (i.e. non-metals) do. This is what makes them shiny.

    While there is no such thing as 50% metalness for a real material, this can be used to approximate dirty metallic surfaces (and for other artistic purposes, of course). For example, by default, Chunky uses metalness values smaller than *1* for oxidized copper blocks.

---

--8<-- "includes/abbreviations.md"
