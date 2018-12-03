#!/bin/bash

echo "Clone Repository: "$@"..."
echo " "
echo " "
git $@
echo " "
echo " "
echo "Cloning Repository Finish."
chown -R 1000:1000 /root/workdir/data 
chown -R 1000:1000 /root/.nextflow/assets
