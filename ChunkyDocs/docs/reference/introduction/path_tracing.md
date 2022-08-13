# Introduction - Path Tracing

---

## Renderer

Chunky uses a rendering method called Path Tracing to render images of 3D scenes.

Chunky's path tracing renderer uses the CPU of the computer to render a scene. It was built back in 2010 and has slowly been improved over the years. At the time, a CPU-based path tracer made the most sense for a number of reasons, including that the amount of memory required to load a Minecraft world was much higher than the available video RAM (VRAM) of most computer systems. Much has changed since then.

It is possible to switch the renderer in Chunky using [plugins](../../../plugins/chunky_plugins).

---

## Path Tracing

<!-- Path Tracing articles for further expansion 
- https://pbr-book.org/3ed-2018/Light_Transport_I_Surface_Reflection/Path_Tracing
- http://www.graphics.stanford.edu/courses/cs348b-01/course29.hanrahan.pdf
- https://www.scratchapixel.com/lessons/3d-basic-rendering/global-illumination-path-tracing
-->

<a href="https://en.wikipedia.org/wiki/Path_tracing" target="_blank">Path Tracing</a> is a rendering algorithm under the umbrella of <a href="http://en.wikipedia.org/wiki/Ray_tracing_(graphics)" target="_blank">ray tracing</a>, in which rays are cast from a virtual camera and traced through a simulated scene. Path tracing is most similar to the way real world lighting works. In the real world, photons are emitted from light sources to bounce around the environment before hitting your eyes. However, this is extremely computationally intense, so most real-time computer graphics have long used a technique called rasterization. Please read this <a href="https://blogs.nvidia.com/blog/2022/03/23/what-is-path-tracing/" target="_blank">NVIDIA blog post</a> if you want more information on the differences between ray tracing and rasterization.

Path tracing uses random sampling to incrementally compute a final image. The random sampling process makes it possible to render some complex phenomena which are not handled in regular ray tracing, but it generally takes more time to produce a high quality path-traced image. The random sampling in path tracing causes noise to appear in the rendered image. The noise is removed by letting the algorithm generate more samples, that is, color values, resulting from a single ray. A more in-depth explanation of the path tracing algorithm is given in the next article on [Samples and Noise](../samples_and_noise). Also, you can watch the following video on <a href="https://www.youtube.com/watch?v=frLwRLS_ZR0" target="_blank">Disney's Practical Guide to Path Tracing</a>.

---

## Data Structures

Chunky uses two data structures to hold world data once loaded. These structures are chosen to help increase performance while path tracing.

### Octree

Chunky makes use of a <a href="https://en.wikipedia.org/wiki/Sparse_voxel_octree" target="_blank">Sparse Voxel Octree (SVO)</a> (also see <a href="https://en.wikipedia.org/wiki/Octree" target="_blank">Octree</a>) to store loaded world data of blocks for renders in a "bi"nary tree like structure with eight children/siblings instead of two. Use of a SVO grants Chunky two main advantages. First, only pixels that are displayed are computed. Second, interior voxels or blocks which are fully enclosed by other voxels are not included in the SVO, which limits the amount of system memory (RAM) required for the world. For more information, read the [Scene Format](../../technical/scene_format#octree) article.

### Bounding Volume Hierarchy (BVH)

Entities and objects larger than a single block are stored within a <a href="https://en.wikipedia.org/wiki/Bounding_volume_hierarchy" target="_blank">Bounding Volume Hierarchy (BVH)</a>, which is a tree-like structure similar to the previously mentioned octree, though it stores geometric objects. For more information, read the [Scene Format](../../technical/scene_format#octree) article.

---

--8<-- "includes/abbreviations.md"
