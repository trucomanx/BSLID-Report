#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png readme.pdf ./slide-png/prefix
