<p align="center">
  <img width="100" src="https://raw.githubusercontent.com/llbit/chunky-docs/master/images/logo.png" alt="Chunky logo">
</p>
<h1 align="center"> Chunky Manual </h1>

<div align="center">Chunky is a Minecraft rendering tool that uses Path Tracing to create realistic images of your Minecraft worlds. View the website <a href="https://chunky-dev.github.io/docs/">here</a>.</div>

## Build Instructions

This site uses <a href="https://www.mkdocs.org/" target="_blank">mkdocs</a>. Python version 3.5 or greater is required.

1. Clone this repository.

2. (optional) Set up a Python <a href="https://docs.python.org/3/library/venv.html" target="_blank">virtual environment</a>.

3. Install the required packages with pip by using the command, `pip3 install -r requirements.txt`.

4. If running Windows, simply run `serve.bat`. Otherwise, change the working directory to `./ChunkyDocs`.

5. Serve the site for development by using the command, `python -m mkdocs serve`.

6. Build a preview of the final site by using the command, `python -m mkdocs build`.

### With Docker

If you don't have Python installed, you can also use Docker.

- Serve the site for development by using the command, `docker run --rm -it -p 8000:8000 -v ${PWD}/ChunkyDocs:/docs squidfunk/mkdocs-material`.

- Build a preview of the final site by using the command, `docker run --rm -it -v ${PWD}/ChunkyDocs:/docs squidfunk/mkdocs-material build`.

## Versioning

We build docs for Chunky 2.4.x ("stable") and 2.5.0 ("snapshot") from the same source code to avoid duplication.

The target version can be specified using the `CHUNKY_VERSION` environment variable when building/serving the docs (defaults to `20500`). The version must be specified as a number equal to `major * 10000 + minor * 100 + patch` (2.4.4 is 20404 and 2.5.0 is 20500), which allows comparing versions easily.

There are two ways to show content for some Chunky versions only:

1. Macros  
   We use [mkdocs-macros](https://mkdocs-macros-plugin.readthedocs.io/en/latest/) and set `extra.chunky` to the version number.

   ```
   {% if extra.chunky >= 20500 %}
   This is only visible if these are the Chunky 2.5.0+ docs.
   {% endif %}
   ```

2. Page metadata  
   If you want to exclude entire pages for some versions, you can specify the minimum and maximum Chunky version a page applies to (both optional, both inclusive) at the very top of the markdown file.

   Eg. for the menu bar pages which are new in Chunky 2.5.0, use `min_chunky_version`:

   ```
   ---
   min_chunky_version: 2_05_00
   ---

   # Some new feature in Chunky 2.5.0
   ```

   If a page doesn't apply to newer Chunky versions (eg. the right control panels), use `max_chunky_version` like this:

   ```
   ---
   max_chunky_version: 2_04_99
   ---

   # Some feature that was there until 2.5.0
   ```

   If a navigation section becomes empty due to all of its pages being excluded, it is automatically removed when building the docs.

## License

Except where otherwise noted, the content of the Chunky Manual is available under a <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International</a> license.
