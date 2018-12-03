#!/bin/bash

echo "Clone Repository: "$@"..."
echo " "
echo " "
git $@
echo " "
echo " "
echo "Cloning Repository Finish."
chown -R 1000:1000 $HOME/workdir/data 
