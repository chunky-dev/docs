# Render Controls - Materials

The <samp>Materials</samp> tab contains controls for the properties of different materials in the scene.

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The Materials tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/materials/materials_tab.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/materials/materials_tab.png" alt="Materials tab">
    </a>
  </div>
</div>

- <samp>Filter</samp>: Input field for a string of text to filter the items in the materials list to those matching the contents of the string.

- List of all materials (blocks and certain "entities") supported by the current Chunky version. An item in the list can be clicked to select it.

- <samp>Material Properties</samp>: Controls to change the properties of the selected material.

    - <samp>Emittance</samp>: Changes the intensity of the light emitted from the selected material. This value is multiplied by the value of the <samp>Emitter intensity</samp> control in the [<samp>Lighting</samp>](../lighting#emitter-controls) tab. Positive values beyond the range of the slider can be entered into the associated input field.

    - <samp>Specular</samp>: Changes the [specularity](../../../../introduction/material_properties#specular) of the selected material.

    - <samp>Smoothness</samp>: Changes the [smoothness](../../../../introduction/material_properties#smoothness) of the selected material.

    - <samp>IoR</samp>: Changes the [Index of Refraction](../../../../introduction/material_properties#index-of-refraction-ior) of the selected material.

    - <samp>Metalness</samp>: Changes the [metalness](../../../../introduction/material_properties#metalness) of the selected material.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Comparison of different Specular levels</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/specular_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/specular_comparison.png" alt="Comparison of different Specular levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: Comparison of different Smoothness levels</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/smoothness_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/smoothness_comparison.png" alt="Comparison of different Smoothness levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: Comparison of different IoR levels</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/ior_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/ior_comparison.png" alt="Comparison of different IoR levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-5">
  <p class="figure">Figure 5: Comparison of different Metalness levels</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/metalness_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/metalness_comparison.png" alt="Comparison of different Metalness levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-6">
  <p class="figure">Figure 6: Comparison of Metalness and Specular properties</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/metalness_specular_comparison.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/materials/examples/metalness_specular_comparison.png" alt="Comparison of Metalness and Specular properties">
    </a>
  </div>
</div>

--8<-- "includes/abbreviations.md"
