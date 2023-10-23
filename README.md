<p align="center">
  <img width="100" src="https://raw.githubusercontent.com/llbit/chunky-docs/master/images/logo.png" alt="Chunky logo">
</p>
<h1 align="center"> Chunky Manual </h1>

<div align="center">Chunky is a Minecraft rendering tool that uses Path Tracing to create realistic images of your Minecraft worlds. View the website <a href="https://chunky-dev.github.io/docs/">here</a>.</div>

## Contributing Guide

Contributors should read the [contributing guide](CONTRIBUTING.md).

## Build Instructions

This site uses <a href="https://www.mkdocs.org/" target="_blank">mkdocs</a>. Python version 3.5 or greater is required.

- Step 1: Clone this repository.

- Step 2: (optional) Set up a Python <a href="https://docs.python.org/3/library/venv.html" target="_blank">virtual environment</a>.

- Step 3: Install the required packages with pip by using the command, `pip3 install -r requirements.txt`.

- Step 4: If running Windows, simply run "serve_stable.bat" or "serve_snapshot.bat", depending on the version of Chunky for which you want to serve documentation. Otherwise, change the working directory to "./ChunkyDocs".

- Step 5: Serve the site for development by using the either the command, `CHUNKY_VERSION=20405 python -m mkdocs serve`, or the command, `CHUNKY_VERSION=20500 python -m mkdocs serve`, depending on the version of Chunky for which you want to serve documentation.

- Step 6: Build a preview of the final site by using either the command, `CHUNKY_VERSION=20405 python -m mkdocs build`, or the command `CHUNKY_VERSION=20500 python -m mkdocs build`, depending on the version of Chunky for which you want to build documentation. On Windows, first run either the command, `set CHUNKY_VERSION=20405`, or the command, `set CHUNKY_VERSION=20500`, depending on the version of Chunky for which you want to build documentation. Then run the command, `python -m mkdocs serve`.

### With Docker

If you don't have Python installed, you can also use Docker.

- Serve the site for development by using the command, `docker run --rm -it -p 8000:8000 -v ${PWD}/ChunkyDocs:/docs squidfunk/mkdocs-material`.

- Build a preview of the final site by using the command, `docker run --rm -it -v ${PWD}/ChunkyDocs:/docs squidfunk/mkdocs-material build`.

## Versioning

Read the [versioning guide](VERSIONING_GUIDE.md).

## Style Guide

Read the [style guide](STYLE_GUIDE.md).

## License

Except where otherwise noted, the content of the Chunky Manual is available under a <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International</a> license.
