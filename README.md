<p align="center">
  <img width="100" src="https://raw.githubusercontent.com/llbit/chunky-docs/master/images/logo.png" alt="Chunky logo">
</p>
<h1 align="center"> Chunky Manual </h1>


<div align="center">Chunky is a Minecraft rendering tool that uses Path Tracing to create realistic images of your Minecraft worlds. View the website [here](https://chunky-dev.github.io/docs/).</div>



## Build Instructions
This site uses [mkdocs](https://www.mkdocs.org/). Python >=3.5 is required.

1. Clone this repository.
2. (optional) Setup a Python [virtual environment](https://docs.python.org/3/library/venv.html).
3. Install the required packages with pip: `pip3 install -r requirements.txt`
4. Change the working directory to `./ChunkyDocs`
4. Serve the site for development: `python3 -m mkdocs serve`
5. Build a preview of the final site: `python3 -m mkdocs build`

### With Docker
If you don't have Python installed, you can also use Docker.
* Serve the site for development: `docker run --rm -it -p 8000:8000 -v ${PWD}/ChunkyDocs:/docs squidfunk/mkdocs-material`
* Build a preview of the final site: `docker run --rm -it -v ${PWD}/ChunkyDocs:/docs squidfunk/mkdocs-material build`

## License

Except where otherwise noted, the content of the Chunky Manual is available under a [Create Commons Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/) license.
