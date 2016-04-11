#!/bin/bash

find . -name "octave-workspace" -type f -delete
find . -name "*.*~" -type f -delete

RUTA=`pwd`
#echo $RUTA
git-cola 
