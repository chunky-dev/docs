# Render Controls - Lighting

### Sky light
This adjusts the intensity of rays hitting the sky. Higher values will have more
ambient lighting, lower values will have less. The default of `1` is a good balance.

### Enable emitters
Enable emitters such as torches or glowstone. When disabled, they are treated
like normal, diffuse blocks, and will not light up the scene. When enabled,
they may initially produce noise due to path tracing.

### Emitter intensity
The emitter intensity multiplier. Higher values will result in brighter emitters.
The default of `13` is a good balance.

### Emitter Sampling Strategy (ESS)
This is a powerful setting that helps decrease emitter noise at the cost of
more processing power per sample. At each vertex of the ray traced path,
a random (if `ONE` is selected) or all emitters (if `ALL` is selected) are sampled.
The world must be reloaded if this is enabled when it was previously disabled.

### Enable sunlight
This setting enables / disables the contribution of sunlight. In indoor renders,
this may be safely disabled to increase performance.

### Draw sun
This setting controls drawing the sun on the skybox.

### Sun intensity
The sun intensity multiplier. Higher values will result in a brighter sun.
The default of `1.25` is a good balance.

### Sun azimuth
The angle of the sun from the north.

### Sun altitude
The angle of the sun from the horizon.

### Sun color
The color of sunlight. Default is `pure white`.
