# Render Controls - Postprocessing

The <samp>Postprocessing</samp> tab contains controls for postprocessing of the render.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The Postprocessing tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/postprocessing/postprocessing_tab.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/postprocessing/postprocessing_tab.png" alt="Postprocessing tab">
    </a>
  </div>
</div>

- <samp>Exposure</samp>: Changes the linear exposure of the image.

- <samp>Postprocessing filter</samp>: Dropdown menu to select the postprocessing filter (tone mapping) applied to the render. Chunky includes the following postprocessing filters.

    - <samp>None</samp>: Disables use of any postprocessing filters on the render.

    - <samp>ACES filmic tone mapping</samp>: Uses the <a href="https://knarkowicz.wordpress.com/2016/01/06/aces-filmic-tone-mapping-curve/" target="_blank">ACES filmic tone mapping curve</a> approximation by Krzysztof Narkowicz.

    - <samp>Gamma correction</samp>: Perfoms gamma correction only (the most basic tone mapping). 

    - <samp>Hable tone mapping</samp>: Uses John Hable's <a href="http://filmicworlds.com/blog/filmic-tonemapping-operators/" target="_blank">Uncharted 2 tonemapping function</a>. This postprocessing filter is currently missing gamma correction; this will be fixed in a later release. The current implementation of the postprocessing filter may be moved to a plugin later.

    - <samp>Tonemap operator 1</samp>: Uses the <a href="http://filmicworlds.com/blog/filmic-tonemapping-operators/" target="_blank">tone mapping formula</a> by Jim Hejl and Richard Burgess-Dawson.

 Other postprocessing filters can be added through the use of plugins, such as the [Bloom plugin](../../../../../plugins/plugin_list#bloom-plugin), which adds a postprocessing filter for bloom effects.

!!! info "Upcoming changes"
    PR #1519 will add the **Unreal Engine 4 Filmic tone mapping** curve, which matches <samp style="font-size: 1em;">ACES filmic tone mapping</samp> by default, but can be configured to customize the tone mapping. It will also be possible to customize the Hable tone mapping parameters.

The best postprocessing filter to use depends on the scene and the look which you are attempting to achieve.

<div class="figure" id="figure-1">
  <p class="figure">Figure 2: Comparison of different postprocessing filters (<a href="https://github.com/chunky-dev/docs/tree/master/ChunkyDocs/docs/img/reference/user_interface/chunky/render_controls/postprocessing/examples/" target="_blank">full images</a>)</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/postprocessing/examples/postprocessing_filter_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/postprocessing/examples/postprocessing_filter_comparison.png" alt="Postprocessing filter comparison">
    </a>
  </div>
</div>

--8<-- "includes/abbreviations.md"
