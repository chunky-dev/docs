#!/bin/bash
rm -rf final-site
mkdir final-site
cd ChunkyDocs
CHUNKY_VERSION=20500 python -m mkdocs build
cp -r site ../final-site/snapshot
CHUNKY_VERSION=20404 python -m mkdocs build
cp -r site/* ../final-site/
echo '[{ "version": "..", "title": "2.4.4", "aliases": [] }, { "version": "snapshot", "title": "2.5.0 (snapshot)", "aliases": [] }]' > ../final-site/versions.json
