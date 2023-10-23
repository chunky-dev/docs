#!/bin/bash
rm -rf docs
mkdir docs
cd ChunkyDocs

CHUNKY_VERSION=20500 python -m mkdocs build
cp -r site ../docs/snapshot
# get the versions from /docs/versions.json instead of the hard-coded ../versions.json
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' 's/..\/versions.json/\/docs\/versions.json/g' ../docs/snapshot/assets/javascripts/bundle*.min.js
else
    sed -i 's/..\/versions.json/\/docs\/versions.json/g' ../docs/snapshot/assets/javascripts/bundle*.min.js
fi

CHUNKY_VERSION=20405 python -m mkdocs build
cp -r site/* ../docs/
# get the versions from /docs/versions.json instead of the hard-coded ../versions.json
if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' 's/..\/versions.json/\/docs\/versions.json/g' ../docs/assets/javascripts/bundle*.min.js
else
    sed -i 's/..\/versions.json/\/docs\/versions.json/g' ../docs/assets/javascripts/bundle*.min.js
fi

echo '[{ "version": "../docs", "title": "2.4.5", "aliases": ["stable"] }, { "version": "../docs/snapshot", "title": "2.5.0 (snapshot)", "aliases": ["snapshot"] }]' > ../docs/versions.json
