# Style Guide

## Page Structure

- Separate paragraphs and sections headers with at least one blank line, to aviod parsing issues.

- Write each paragraph on a single line; do not break the paragraph into multiple lines. Employ the 'Word wrap' feature of your text editor in most pages to avoid needing to scroll horizontally.

- Use horizontal rules `---` only to separate content from the previous section only when no applicable section header for the content in question exists; and, on 'User Interface' articles, to separate sections containing dialog box documentation from the rest of the page. 

- End each page with `--8<-- "includes/abbreviations.md"`.

## Tables

- Ensure that every cell on the same column has the same width.

## Images

### Figures

- Place major images into figures.

- Number figures per-page.

- Use the following format for figures:

```html
<div class="figure" id="figure-x">
  <p class="figure">Figure [number]: Figure_title</p>
  <div class="figureimgcontainer">
    <a href="image_url">
      <img class="figure" src="image_url" alt="Image alternate text">
    </a>
  </div>
</div>
```

### Inline Images

- For inline images, use the following format.

```html
<img src="image_url" style="vertical-align: middle;">
```

## Links

- Write links to articles within the chunky-dev.github.io website in Markdown format (For example, `[link text](relative path)` or `[link text](url)`).

- Links should point to the most specific section of an article applicable for the given context.

- Write links to external content with `<a>` tags, with the `target` attribute set to `"_blank"` (e.g., `<a href="url" target="blank">link text</a>`). This causes the browser to open the link in a new browser tab or window.

- Links to chunky-dev/chunky issues and pull requests can be inserted into the page via the issue or pull request number. For example, to insert a link to chunky-dev/chunky#1000, the text, `#1000` can be inserted into the page.

## Text Styling

- Use the `<code>` style to denote textual computer input or output. Text can be styled as `<code>` by enclosing it in grave marks.

- Use code blocks to denote large sections of textual computer input. Text can be placed into a code block by enclosing it with ` ``` ` on both ends.

- Enclose names of files and directories with double quotation marks `" "`.

- Enclose names of separate Chunky windows, such as dialog boxes, with single quotation marks `' '`.

- Use the italic `<em>` style to denote dimensionless numerical values and names of terms. Text can be styled as italic `<em>` by enclosing it in asterisk marks `* *`.

- Denote GUI elements (buttons, tabs, sliders, input fields, etc.) by enclosing them with `<samp>` tags. For example, the 'Start' button would be written as `<samp>Start</samp>`.

- Denote text that represents keyboard input by enclosing it with `<kbd>` tags. For example, the 'Enter' key would be written as `<kbd>Enter</kbd>`.
