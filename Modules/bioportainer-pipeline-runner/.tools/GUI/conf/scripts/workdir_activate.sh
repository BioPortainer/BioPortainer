#!/bin/bash

cd $@
work=$(pwd)
echo $work > /.work
echo "The directory $work was chosen as your workdir"
