# Styling Chunky

---

Chunky uses CSS to style the GUI, and can be restyled by adding a custom style.css to the Chunky [settings directory](../../../getting_started/configuring_chunky_launcher#advanced-settings).

---

## Template

Below is the template style.css which can be used as a basis for new themes. It is the style.css that is used by Chunky by default, and it is located in the <a href="https://github.com/chunky-dev/chunky/blob/master/chunky/src/res/style.css" target="_blank">Chunky GitHub repository</a>.

```css
.root {
    -fx-base: rgb(30,30,30);
    -fx-background: rgb(20,20,20);
    -fx-control-inner-background: rgb(40, 40, 40);
    -fx-accent: orange;
    -fx-focus-color: orange;
}

ProgressBar {
    -fx-control-inner-background: rgb(30, 30, 30);
    -fx-progress-color: orange;
}

ToggleButton:selected {
    -fx-background-color: rgb(80,80,80);
}

Button {
    -fx-text-fill: #faebd7;
}

ToggleButton {
    -fx-text-fill: #faebd7;
}

CheckBox {
    -fx-text-fill: #faebd7;
}

Label {
    -fx-text-fill: #faebd7;
}

Text {
    -fx-fill: #faebd7;
}

Hyperlink {
    -fx-text-fill: orange;
    -fx-underline: false;
}

Hyperlink:visited {
    -fx-text-fill: orange;
}

Hyperlink:hover {
    -fx-text-fill: #faebd7;
    -fx-underline: true;
}

.text-field.invalid {
    -fx-text-fill: #FF434A;
    -fx-text-box-border: #FF434A;
    -fx-focus-color: #FF434A;
}

.menu-item:disabled:focused {
    -fx-background: unset;
    -fx-background-color: transparent;
}

.menu-item:disabled:focused > .label {
    -fx-text-fill: white;
}
```

Customization is not limited to the contents of the template. One example is the `fx-background-image`, which can be used to add images or GIF files to the GUI. Visit the <a href="https://docs.oracle.com/javafx/2/api/javafx/scene/doc-files/cssref.html" target="_blank">JavaFX CSS Reference Guide</a> for the full documentation.

---

## Example Themes

Below are some example themes.

### Light

<div class="figure" id="figure-3-3-3-1">
  <p class="figure">
  Figure 3.3.3.1: Custom theme: "Light", by jackjt8. <i>Sorry</i>
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/themes/theme_light.jpg">
      <img class="figure" src="../../../img/examples/themes/theme_light.jpg" alt="Light theme">
    </a>
  </div>
</div>

This theme uses the style.css below.

```css
.root {
    -fx-base: rgb(225,225,225);
    -fx-background: rgb(235,235,235);
    -fx-control-inner-background: rgb(215, 215, 215);
    -fx-accent: orange;
    -fx-focus-color: orange;
}

ProgressBar {
    -fx-control-inner-background: rgb(225, 225, 225);
    -fx-progress-color: orange;
}

ToggleButton:selected {
    -fx-background-color: rgb(175,175,175);
}

Button {
    -fx-text-fill: #080501;
}

ToggleButton {
    -fx-text-fill: #080501;
}

CheckBox {
    -fx-text-fill: #080501;
}

Label {
    -fx-text-fill: #080501;
}

Text {
    -fx-fill: #080501;
}

Hyperlink {
    -fx-text-fill: orange;
    -fx-underline: false;
}

Hyperlink:visited {
    -fx-text-fill: orange;
}

Hyperlink:hover {
    -fx-text-fill: #080501;
    -fx-underline: true;
}

.text-field.invalid {
    -fx-text-fill: #FF434A;
    -fx-text-box-border: #FF434A;
    -fx-focus-color: #FF434A;
}

.menu-item:disabled:focused {
    -fx-background: unset;
    -fx-background-color: transparent;
}

.menu-item:disabled:focused > .label {
    -fx-text-fill: white;
}
```

### Nice Blue

<div class="figure" id="figure-3-3-3-2">
  <p class="figure">
  Figure 3.3.3.2: Custom theme: "Nice Blue", by EmeraldSnorlax. <i>MIA</i>
  </p>
  <div class="figureimgcontainer">
    <a href="../../../img/examples/themes/theme_nice_blue.jpg">
      <img class="figure" src="../../../img/examples/themes/theme_nice_blue.jpg" alt="Nice blue theme">
    </a>
  </div>
</div>

This theme uses the style.css below.

```css
.root {
    -fx-base: rgb(2, 5, 5);
    -fx-background: rgb(2, 5, 5);
    -fx-control-inner-background: #222B2E;
    -fx-accent: rgb(17,122,101);
    -fx-focus-color: rgb(17,122,101);
}

ProgressBar {
    -fx-control-inner-background: rgb(21,67,96);
    -fx-progress-color: rgb(17,122,101);
}

ToggleButton:selected {
    -fx-background-color: #29A189;
}

Button {
    -fx-text-fill: #faebd7;
}

ToggleButton {
    -fx-text-fill: #faebd7;
}

CheckBox {
    -fx-text-fill: #faebd7;
}

Label {
    -fx-text-fill: #faebd7;
}

Text {
    -fx-fill: #faebd7;
}

Hyperlink {
    -fx-text-fill: rgb(17,122,101);
    -fx-underline: false;
}

Hyperlink:visited {
    -fx-text-fill: rgb(17,122,101);
}

Hyperlink:hover {
    -fx-text-fill: rgb(21,67,96);
    -fx-underline: true;
}

.text-field.invalid {
    -fx-text-fill: #FF434A;
    -fx-text-box-border: #FF434A;
    -fx-focus-color: #FF434A;
}

.menu-item:disabled:focused {
    -fx-background: unset;
    -fx-background-color: transparent;
}

.menu-item:disabled:focused > .label {
    -fx-text-fill: white;
}
```

---

--8<-- "includes/abbreviations.md"
