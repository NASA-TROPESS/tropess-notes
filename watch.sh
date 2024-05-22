#!/usr/bin/env bash

source activate.sh

echo 'open http://localhost:4000'

livereload \
    --port 4000 \
    --target book/_build/dirhtml/index.html \
    book/_build/dirhtml