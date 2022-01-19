# Render Controls - Advanced

![Render controls Advanced](../../img/user_interface/render_controls/advanced.png)

## CPU usage controls

- `Render threads` - Changes the number of threads Chunky should use while rendering. (Needs restart)

- `CPU utilization` - Adds in sleep cycles to the rendering process to attempt to reduce the CPU usage. Would recommend using `Render threads` for more predictable scaling.

---

## Some quality/performance related options

- `Ray depth` - Controls the number of times a ray is allowed to bounce without striking a light source before killed. For outdoor scenes a value between 3-5 should typically be enough with indoor scenes benifitting more from higher values around 10. Higher values offer more realistic light bounce however at a cost to render time. Balance this carefully.

--

- `Merge render dump` - Useful for multi-PC rendering. Merges a renders `.dump` file into the currently loaded scene combining the total SPP[^1].

---

- `Shutdown computer when render completes` - Togglable

- `Fast Fog` - Impacts the quality of fog rendering. Typically only noticable if viewing fog through alpha textures which is rare.

- `Sky cache resolution` - Resolution of the rendered simulated sky. Lower values may boost rendering performance at the cost of sky model accuracy. Default 128.

## Snapshot output format

- `Output mode` - `PNG` (default), `TIFF, 32-bit floating point`, `PFM, Portable FloatMap (32-bit)`

---

## Advanced Octree, BVH, and ESS options

- `Octree implementation` - `PACKED` (default), `BIGPACKED`, `NODE` (legacy)

- `BVH build method` - `SAH_MA` (default), `SAH`, `MIDPOINT`

- `Emitter grid size`- Controls size of emitter grid used for ESS.

- `Prevent normal emitter when using emitter sampling` - Attempts to disable typical random emitter hits which would reduce noise.

![Render controls *Prevent normal emitter when using emitter sampling*](../../img/user_interface/render_controls/prevent_normal_emitter.png)

---

## Manual renderer selection

- `Renderer` - `PathTracingRenderer` - No other renderers are bundled. See plugins.

- `Preview Renderer` - `PreviewRenderer` - No other renderers are bundled. See plugins.

[^1]: Make sure that the SPP Target of the specified scene is greater than the sum of the current SPP for the scene and dump you are merging. Otherwise there may be unexpected behaviour...

--8<-- "includes/abbreviations.md"
