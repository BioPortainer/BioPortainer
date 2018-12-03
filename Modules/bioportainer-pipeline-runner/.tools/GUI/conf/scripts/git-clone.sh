#!/bin/bash

echo "Clone Repository: "$@"..."
echo " "
echo " "
git $@
echo " "
echo " "
echo "Cloning Repository Finish."
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
