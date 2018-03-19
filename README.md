# Poster for Generalized 3D Fragmentation Index

This is a repository for with a poster for the following paper.

## Paper (How to Cite This Work)

Vaclav Petras, Douglas J. Newcomb and Helena Mitasova.
Generalized 3D fragmentation index derived from lidar point clouds.
In: Open Geospatial Data, Software and Standards 2017 2:9.
https://doi.org/10.1186/s40965-017-0021-8

# Where the Poster was Presented

* NCSU CNR Graduate Research Symposium, February 2, 2018

## Build Dependencies

To build this poster, pdflatex is required.
A Makefile is used to describe building, so you can just run:

    make

## Rasterization

To create a rasterized version (some plotters have trouble with the PDF)
use:

    make rasterized

You can use this file to create a small PNG of the poster. It is best
rescaled in Gimp using Sinc (Lanczos3) method.

To create a minimum size image which will be still readable (although
not necessarily nice) use:

    # renders fonts with low quality
    gs -sDEVICE=png16m -dDownScaleFactor=2 -r50 \
        -o poster.png poster.pdf
    # optimizes compression
    optipng -o9 poster.png
    # simplify colors (destroys some colors, esp. gradients)
    pngnq -n 128 -s 3 poster.png
    # overwrite the original file
    mv poster-nq8.png poster.png
