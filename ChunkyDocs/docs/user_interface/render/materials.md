# Render Controls - Materials

![Render controls Materials](../../img/user_interface/render_controls/materials.png)

The `Filter` field can be used to filter materials list to find the exact block you wish to edit. The following section explains the available material properties.

## Material Properties

### Emittance

This controls the amount of light that a block emits. For full blocks, you can calculate the Chunky emittance from Minecraft brightness by dividing by 15. For example, glowstone uses 1.0 while magma uses 0.6 by default.

Due to the way Chunky renders scenes, the brightness depends on the surface area of the block. A torch requires a much higher emittance value (and thus results in a lot of noise) to achieve the same amount of brightness as a full block. Chunky uses a default emittance of 50 for torches.

### Specular

This controls the _specular_ reflection (0.0 - 1.0). This is a mirror-like reflection of light and is perfect for glossy non-metallic materials (e.g. diamonds). A value of 0 will result in a non-reflective block, a value of 1 will make it a perfect mirror.

!!! tip Wet surfaces
      Some people use a small _specular_ value on e.g. the grass block to achieve a wet surface look. While physically correct rendering of wet surfaces is [way more complex](http://graphics.ucsd.edu/~henrik/papers/rendering_wet_materials/rendering_wet_materials_egwr99.pdf), this is a decent way to render rainy scenes in Chunky.

### Smoothness

This controls a material smoothness/roughness (0.0 - 1.0). This is an approxiamtion of surface irregularaties and leads to fuzzy or diffuse reflection. Lower values increase roughness.

!!! info "Smoothness vs. roughness"
      Internally, Chunky uses _linear roughness_ for its calculations. Working with roughness is pretty hard for a human, which is why LabPBR introduced _perceptual smoothness_. This makes it so that 0.5 feels like twice as smooth as 0.25 for a human.
      
      You can find out more about this, including the formula to convert between perceptional smoothness and linear roughness in the [shaderLABS Wiki](https://wiki.shaderlabs.org/wiki/LabPBR_Material_Standard).

### IoR

The Index of Refraction controls how much slower the light travels inside of the block, relative to a vacuum. This is the effect that makes water and glass "bend" the light while it enters and exits (i.e. transitions between materials).

### Metalness

In the real world, metals reflect in a different way than diaelectrice (i.e. non-metals), which is what makes them shiny. A value of 0 means that it will only have specular reflection and a value of 1 means that it will only have metallic reflection.

!!! info "Metalness vs. real world"
      While there is no such thing as 50% metalness for a real material, you can use this to approximate dirty metallic surfaces (and use it for other artistic purposes, of course). For example, Chunky uses metalness values smaller than 1 for oxidized copper blocks by default.

--8<-- "includes/abbreviations.md"
