# Render Controls - Entities

The <samp>Entities</samp> tab contains controls for any entities in the scene.

{% if extra.chunky < 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Entities</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab-stable.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab-stable.png" alt="Entities tab">
    </a>
  </div>
</div>

{% endif %}

{% if extra.chunky >= 2_05_00 %}

<div class="figure" id="figure-1">
  <p class="figure">Figure 1: The <samp>Entities</samp> tab</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab-snapshot.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab-snapshot.png" alt="Entities tab">
    </a>
  </div>
</div>

{% endif %}

## General Controls

A table at the top of the <samp>Entities</samp> tab displays a list of all loaded entities in the scene. The column headers can be clicked to reorder the entities by <samp>Name</samp> or <samp>Type</samp>. An entity in the list can be clicked to select it.

- <samp>-</samp>: Removes the selected entity from the scene.

- <samp>+</samp>: Adds a new player entity to the scene at the location of the render preview target, if one is set, or the location of the camera, if none is set.

- <samp>Camera to entity</samp>: Moves the selected camera to the location of the selected entity, if any.

- <samp>Player to camera</samp>: Moves the selected entity to the location of the selected camera.

- <samp>Entity to target</samp>: Moves the selected entity to the location of the set target.

- <samp>Face camera</samp>: Sets the selected entity to face the selected camera.[^1]

- <samp>Face target</samp>: Sets the selected entity to face the set target.[^1]

{% if extra.chunky >= 2_05_00 %}

- <samp>Position</samp>: Input fields to change the location of the selected entity.

    - <samp>x</samp>: Input field to change the X-coordinate of the selected entity.

    - <samp>y</samp>: Input field to change the Y-coordinate of the selected entity.

    - <samp>z</samp>: Input field to change the Z-coordinate of the selected entity.

{% endif %}

## Player Controls

If the selected entity is a player, then controls pertaining to player entities become available.

<div class="figure" id="figure-2">
  <p class="figure">Figure 2: Player entity controls</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_player.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_player.png" alt="Player entity controls">
    </a>
  </div>
</div>

- <samp>Player model</samp>: Dropdown menu to select the player model of the selected player.

    - <samp>Steve</samp>: Sets the selected player to use the "Steve" model, the arms of which are 4 pixels wide.

    - <samp>Alex</samp>: Sets the selected player to use the "Alex" model, the arms of which are 3 pixels wide.

- <samp>Skin</samp>: Input field to set the path to the PNG file to be used as the skin of the selected player.

- <samp>Select skin...</samp>: Opens a file explorer dialog box to browse for a PNG file to be used as the skin of the selected player.

- <samp>Download skin...</samp>: Opens the ['Input player identifier'](#input-player-identifier) dialog box.

- <samp>Show second layer</samp>: Changes whether the second (outer) layer, if any, of the skin of the selected player is visible.

- <samp>Scale</samp>: Changes the size of the selected player. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Head scale</samp>: Changes the size of the head of the selected player. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Pose part</samp>: Dropdown menu to select the part of the selected player to be manipulatable by the <samp>pitch</samp>, <samp>yaw</samp>, and <samp>roll</samp> controls.

- <samp>pitch</samp>: Changes the pitch of the selected body part of the selected player.

- <samp>yaw</samp>: Changes the yaw of the selected body part of the selected player.

- <samp>roll</samp>: Changes the roll of the selected body part of the selected player.

- <samp>Gear</samp>: Input fields to set the Minecraft item to be placed onto the body part of the selected player, the name of which part is the identifier of the input field.

    - <samp>leftHand</samp>: Input field to set the Minecraft item to be placed into the left hand of the selected player.[^2]

    - <samp>rightHand</samp>: Input field to set the Minecraft item to be placed into the right hand of the selected player.[^2]

    - <samp>head</samp>: Input field to set the type of Minecraft helmet to be placed onto the head of the selected player.[^3]

    - <samp>chest</samp>: Input field to set the type of Minecraft chestplate to be placed onto the chest of the selected player.[^3]

    - <samp>legs</samp>: Input field to set the type of Minecraft leggings to be placed onto the legs of the selected player.[^3]

    - <samp>feet</samp>: Input field to set the type of Minecraft boots to be placed onto the feet of the selected player.[^3]

## Armor Stand Controls

If the selected entity is an armor stand, then controls pertaining to armor stand entities become available.

<div class="figure" id="figure-3">
  <p class="figure">Figure 3: Armor stand entity controls</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_armor_stand.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_armor_stand.png" alt="Armor stand entity controls">
    </a>
  </div>
</div>

- <samp>Scale</samp>: Changes the size of the selected armor stand. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Head scale</samp>: Changes the size of the head of the selected armor stand. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Pose part</samp>: Dropdown menu to select the part of the selected armor stand to be manipulatable by the <samp>pitch</samp>, <samp>yaw</samp>, and <samp>roll</samp> controls.

- <samp>pitch</samp>: Changes the pitch of the selected body part of the selected armor stand.

- <sam>yaw</samp>: Changes the yaw of the selected body part of the selected armor stand.

- <samp>roll</samp>: Changes the roll of the selected body part of the selected armor stand.

- <samp>Gear</samp>: Input fields to set the Minecraft item to be placed onto the body part of the selected armor stand, the name of which part is the identifier of the input field.

    - <samp>leftHand</samp>: Input field to set the Minecraft item to be placed into the left hand of the selected armor stand.[^2]

    - <samp>rightHand</samp>: Input field to set the Minecraft item to be placed into the right hand of the selected armor stand.[^2]

    - <samp>head</samp>: Input field to set the type of Minecraft helmet to be placed onto the head of the selected armor stand.[^3]

    - <samp>chest</samp>: Input field to set the type of Minecraft chestplate to be placed onto the chest of the selected armor stand.[^3]

    - <samp>legs</samp>: Input field to set the type of Minecraft leggings to be placed onto the legs of the selected armor stand.[^3]

    - <samp>feet</samp>: Input field to set the type of Minecraft boots to be placed onto the feet of the selected armor stand.[^3]

## Book and Lectern Controls

If the selected entity is a book or a book on a lectern, then controls pertaining to book and "lectern" entities become available.

<div class="figure" id="figure-4">
  <p class="figure">Figure 4: Book entity controls</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_book.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_book.png" alt="Book entity controls">
    </a>
  </div>
</div>

- <samp>Opening angle</samp>: Changes the size of the angle between the two sides of the selected book, which changes how widely the book is opened.

- <samp>Page 1 angle</samp>: Changes the angle between the plane of the first page of the selected book and the plane on which that book is "resting".

- <samp>Page 2 angle</samp>: Changes the angle between the plane of the second page of the selected book and the plane on which that book is "resting".

- <samp>Scale</samp>: Changes the size of the selected book. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>pitch</samp>: Changes the pitch of the selected book.

- <samp>yaw</samp>: Changes the yaw of the selected book.

- <samp>roll</samp>: Changes the roll of the selected book.

## Beacon Beam Controls

If the selected entity is a beacon beam, then controls pertaining to beacon beam entities become available.

<div class="figure" id="figure-5">
  <p class="figure">Figure 5: Beacon beam entity controls</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_beacon_beam.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/entities/entities_tab_beacon_beam.png" alt="Beacon beam entity controls">
    </a>
  </div>
</div>

- <samp>Height</samp>: Changes the height of the selected beacon beam.

- <samp>Start height</samp>: List of all beacon control points. Each is the Y-coordinate, relative to the bottom of the selected beacon beam, of a one-block segment of that beacon beam, the properties of which and of all beacon beam segments above it and below the next control segment, when its list item is selected, become manipulatable by other controls. An item in the list can be clicked to select it.

- <samp>Delete</samp>: Removes the selected control point from the list.

- <img src="../../../../../img/reference/user_interface/chunky/render_controls/entities/beacon_beam_input_field.png" style="vertical-align: middle;">: Input field for a Y-coordinate, relative to the bottom of the selected beacon beam, of a segment of the beacon beam to be used as a control point.

- <samp>Add</samp>: Creates a control point of a segment of the selected beacon beam, the Y-coordinate, relative to the bottom of that beacon beam, of which be specified in the input field immediately to the left, if it does not already exist.

- <samp>Emittance</samp>: Changes the intensity of the light emitted from the selected section of the selected beacon beam. This value is multiplied by the value of the <samp>Emitter intensity</samp> control in the [<samp>Lighting</samp>](../lighting#emitter-controls) tab. Positive values beyond the range of the slider can be entered into the associated input field.

- <samp>Specular</samp>: Changes the [specularity](../../../../introduction/material_properties#specular) of the selected section of the selected beacon beam.

- <samp>Smoothness</samp>: Changes the [smoothness](../../../../introduction/material_properties#smoothness) of the selected section of the selected beacon beam.

- <samp>IoR</samp>: Changes the [Index of Refraction](../../../../introduction/material_properties#index-of-refraction-ior) of the selected section of the selected beacon beam.

{% if extra.chunky >= 2_05_00 %}

- <samp>Metalness</samp>: Changes the [metalness](../../../../introduction/material_properties#metalness) of the selected section of the selected beacon beam.

{% endif %}

- <samp>Pick color</samp>: Opens a color selector dialog box to change the color of the selected section of the selected beacon beam.

- <samp>Scale</samp>: Changes the size of the selected beacon beam.

- <samp>pitch</samp>: Changes the pitch of the selected beacon beam.

- <samp>yaw</samp>: Changes the yaw of the selected beacon beam.

- <samp>roll</samp>: Changes the roll of the selected beacon beam.

---

## Input player identifier

The 'Input player identifier' dialog box, shown in [Figure 6](#figure-6), allows a Minecraft username or UUID to be entered to download the skin associated with Minecraft user specified by the username or UUID and apply it as the skin of the selected player.

<div class="figure" id="figure-6">
  <p class="figure">Figure 6: Input player identifier dialog box</p>
  <div class="figureimgcontainer">
    <a href="../../../../../img/reference/user_interface/chunky/render_controls/entities/input_player_identifier_dialog_box.png">
      <img class="figure" src="../../../../../img/reference/user_interface/chunky/render_controls/entities/input_player_identifier_dialog_box.png" alt="Input player identifier dialog box">
    </a>
  </div>
</div>

- <samp>UUID / player name</samp>: Input field for the username or UUID of the Minecraft user, the skin of which should be downloaded and applied to the selected player.

- <samp>OK</samp>: Downloads the skin associated with the Minecraft user and applies it as the skin of the selected player if the username or UUID specified were valid.

- <samp>Cancel</samp>: Closes the 'Input player identifier' dialog box without applying any changes.

[^1]: This control is currently not functional.
  
[^2]: Held items are currently not supported in Chunky.

[^3]: Armor items must be set using proper Minecraft item ID format, such as `minecraft:iron_helmet`.

--8<-- "includes/abbreviations.md"
