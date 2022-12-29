# Render Controls - Postprocessing

The `Postprocessing` tab in the left control panel contains controls for postprocessing of the render.

<div class="figure" id="figure-3-2-18-1">
  <p class="figure">
  Figure 3.2.18.1: The Postprocessing tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/postprocessing_tab.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/postprocessing_tab.png" alt="Postprocessing tab">
    </a>
  </div>
</div>

## Exposure

The `Exposure` control changes the linear exposure of the image. This is applied before the image is converted to an SDR image, so different exposures can reveal different features of an image.

## Tone mapping

The `Postprocessing filter` dropdown menu changes the postprocessing filter (eg. tone mapping) that is applied to the render. Which tone mapping operator is best depends on the scene and the look you want to achieve.

Chunky includes the following postprocessors (see below for a visual comparison):

- **None**: Disables any postprocessing filters used on the render
- **Gamma correction**: Performs gamma correction only (the most basic tone mapping)
- **ACES filmic tone mapping**: ACES filmic tone mapping curve approximation by [Krzysztof Narkowicz](https://knarkowicz.wordpress.com/2016/01/06/aces-filmic-tone-mapping-curve/)
- **Hable tone mapping**: John Hable's [Uncharted 2 tonemapping function](http://filmicworlds.com/blog/filmic-tonemapping-operators/)
- **Tonemap operator 1**: Tone mapping formula by [Jim Hejl and Richard Burgess-Dawson](http://filmicworlds.com/blog/filmic-tonemapping-operators/)

!!! info "Upcoming changes in Chunky 2.5.0"
    PR #1519 adds the **Unreal Engine 4 Filmic tone mapping** curve which matches ACES by default but can be configured to customize the tone mapping.
    It will also be possible to customize the Hable tone mapping parameters.

    The Hable tone mapping is also missing gamma correction, which will be fixed in Chunky 2.5.0. The previous (technically incorrect) postprocessor might be moved into a plugin later.

More can be added with plugins, eg. the [Bloom Plugin](../../../plugins/plugin_list.md#bloom-plugin) adds a postprocessor for bloom effects.

<div class="figure" id="figure-3-2-13-4">
  <p class="figure">
  Figure 3.2.18.1: Comparison of different postprocessors (<a href="https://github.com/chunky-dev/docs/tree/master/ChunkyDocs/docs/img/examples/postprocessing" target="_blank">full images</a>)
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/postprocessing/comparison.png">
      <img class="figure" src="../../../../img/examples/render_controls/postprocessing/comparison.png" alt="Comparison of different postprocessors">
    </a>
  </div>
</div>

--8<-- "includes/abbreviations.md"
