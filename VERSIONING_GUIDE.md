# Versioning Guide

The Chunky Manual builds documentation for separate versions of Chunky from the same source code to avoid duplication of content.

The target version can be specified using the `CHUNKY_VERSION` environment variable when building/serving the docs (defaults to `20500`). The version must be specified as a number equal to `major * 10000 + minor * 100 + patch` (2.4.4 is `20404` and 2.5.0 is `20500`), which allows comparing versions easily.

## Page Versioning

- Add the following text to the top of a page to define the minimum version of Chunky for which the page will be built.

```yaml
---
min_chunky_version: 2_05_00
---
```

If a YAML header (enclosed in `---`) already exists at the top of the page, then simply add `min_chunky_version: 2_05_00` to it.

- Add the following text to the top of a page to define the maximum version of Chunky for which the page will be built.

```yaml
---
max_chunky_version: 2_04_99
---
```

If a YAML header (enclosed in `---`) already exists at the top of the page, then simply add `max_chunky_version: 2_04_99` to it.

If a navigation section becomes empty due to all of its pages being excluded, it is automatically removed when building the docs.

## Sub-page Versioning

- To define the minimum version of Chunky for which the text will be added to the page, enclose it as the following.

To enclose inline text:

```
preceeding text {% if extra.chunky >= 2_05_00 %}version-specific text{% endif %} following text
```

To enclose a block of text:

```
preceeding text...

{% if extra.chunky >= 2_05_00 %}

text block...

text block...

text block...

{% endif %}

following text...
```

- To define the maximum version of Chunky for which the text will be added to the page, enclose it as the following.

To enclose inline text:

```
preceeding text {% if extra.chunky < 2_05_00 %}version-specific text{% endif %} following text
```

To enclose a block of text:

```
preceeding text...

{% if extra.chunky < 2_05_00 %}

text block...

text block...

text block...

{% endif %}

following text...
```

## Variables

To avoid duplicated text among different Chunky versions, and the inconsistencies that can result, use variables.

- Variables are defined in the YAML header at the top of page.

- Create reasonably-named string-type variables to contain page content. Remember to escape any quotation marks within the variable content with a backslash `\`.

- Create variables as the example below.

```yaml
---
page_content:
  variable_name: "place page content here."
---
```

- To place the contents of a variable into the page, refer to it like so:

```
preceeding text...

{{ page.meta.page_content.variable_name }}

following text...
```
