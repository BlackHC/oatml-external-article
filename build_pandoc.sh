#!/usr/bin/env bash

"/mnt/c/Program Files/Pandoc/pandoc.exe" -H head.html.part -B body-header.html.part -A body-footer.html.part \
    -c example_article.css \
    -t html5 -o example_article.html example_article.md