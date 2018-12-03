#!/bin/bash

cd $@
work=$(pwd)
echo $work > /.work
echo "The directory $work was chosen as your workdir"
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
