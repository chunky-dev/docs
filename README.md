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

## License

Except where otherwise noted, the content of the Chunky Manual is available under a <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International</a> license.
