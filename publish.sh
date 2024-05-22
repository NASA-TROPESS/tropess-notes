#!/usr/bin/env bash

source activate.sh

ghp-import --no-jekyll --push --force --branch gh-pages  book/_build/dirhtml

open https://swiftsoftwaregroup.github.io/tropess-notes
