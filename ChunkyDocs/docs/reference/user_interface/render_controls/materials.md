# Render Controls - Materials

---

The `Materials` tab, which is the seventh tab in the left control panel, contains controls for the properties of different materials in the scene.

<div class="figure" id="figure-3-2-17-1">
  <p class="figure">
  Figure 3.2.17.1: The Materials tab
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/user_interface/render_controls/materials_tab.png">
      <img class="figure" src="../../../../img/user_interface/render_controls/materials_tab.png" alt="Materials tab">
    </a>
  </div>
</div>

---

## Controls

- `Filter`: Input field for a string of text to filter the items in the materials list to those matching the contents of the string.

- List of all materials (blocks and certain "entities") supported by the current Chunky version. An item in the list can be clicked to select it.

- `Material Properties`: Controls to change the properties of the selected material.

    - `Emittance`: Changes the intensity of the light emitted from the selected material. This value is multiplied by the value of the `Emitter intensity` control in the [`Lighting`](../lighting#controls) tab. Positive values beyond the range of the slider can be entered into the associated input field.

    - `Specular`: Changes the [specularity](../../../introduction/material_properties#specular) of the selected material.

    - `Smoothness`: Changes the [smoothness](../../../introduction/material_properties#smoothness) of the selected material.

    - `IoR`: Changes the [Index of Refraction](../../../introduction/material_properties#index-of-refraction-ior) of the selected material.

    - `Metalness`: Changes the [metalness](../../../introduction/material_properties#metalness) of the selected material.

<div class="figure" id="figure-3-2-17-2">
  <p class="figure">
  Figure 3.2.17.2: Comparison of different Specular levels
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/materials/specular_comparison.png">
      <img class="figure" src="../../../../img/examples/render_controls/materials/specular_comparison.png" alt="Comparison of different Specular levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-2-17-3">
  <p class="figure">
  Figure 3.2.17.3: Comparison of different Smoothness levels
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/materials/smoothness_comparison.png">
      <img class="figure" src="../../../../img/examples/render_controls/materials/smoothness_comparison.png" alt="Comparison of different Smoothness levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-2-17-4">
  <p class="figure">
  Figure 3.2.17.4: Comparison of different IoR levels
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/materials/ior_comparison.png">
      <img class="figure" src="../../../../img/examples/render_controls/materials/ior_comparison.png" alt="Comparison of different IoR levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-2-17-5">
  <p class="figure">
  Figure 3.2.17.5: Comparison of different Metalness levels
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/materials/metalness_comparison.png">
      <img class="figure" src="../../../../img/examples/render_controls/materials/metalness_comparison.png" alt="Comparison of different Metalness levels">
    </a>
  </div>
</div>
<br>

<div class="figure" id="figure-3-2-17-6">
  <p class="figure">
  Figure 3.2.17.6: Comparison of Metalness and Specular properties
  </p>
  <div class="figureimgcontainer">
    <a href="../../../../img/examples/render_controls/materials/metalness_specular_comparison.png">
      <img class="figure" src="../../../../img/examples/render_controls/materials/metalness_specular_comparison.png" alt="Comparison of Metalness and Specular properties">
    </a>
  </div>
</div>

---

--8<-- "includes/abbreviations.md"
