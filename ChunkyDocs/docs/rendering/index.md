# Introduction

## Path Tracing

[Path Tracing](https://en.wikipedia.org/wiki/Path_tracing) is a rendering algorithm under the umbrabella technique of [ray tracing](http://en.wikipedia.org/wiki/Ray_tracing_(graphics)) in which rays
are cast from a virtual camera and traced through a simulated scene.  Path
tracing uses random sampling to incrementally compute a final image. The random
sampling process makes it possible to render some complex phenomena which are
not handled in regular ray tracing, but it generally takes longer time to
produce a high quality path traced image.

The random sampling in path tracing causes noise to appear in the rendered
image. The noise is removed by letting the algorithm generate more samples,
i.e. color values resulting from a single ray. A more in-depth explanation
of the path tracing algorithm is given below.

---

Chunky has one main path tracing rendering engine builtin, however other renderers are
available through plugins. Most notably, [ChunkyCl](https://github.com/alexhliu/ChunkyClPlugin)
is an experimental GPU rendering engine. While this does not have complete feature parity,
many illustrations here will be rendered using ChunkCl since it is significantly faster
than CPU rendering.

In addition, there is a Chunky cloud rendering service, currently in beta, called
[ChunkyCloud](https://chunkycloud.lemaik.de/). This makes use of the Chunky rendering
engine and distributes jobs across community render nodes.

Chunky makes use of [Path Tracing](https://en.wikipedia.org/wiki/Path_tracing), 
which is a subset of [ray tracing](https://en.wikipedia.org/wiki/Ray_tracing_(graphics)).
In path tracing, rays are cast from a virtual camera and traced through a simulated scene.
It uses random sampling to simulate complex phenomena such as global illumination.
Due to this random sampling, however, noise will appear in rendered images. This noise
can be removed with either more samples or advanced methods.


--8<-- "includes/abbreviations.md"
