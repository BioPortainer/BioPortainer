#!/bin/bash

cd $1
git pull $2 $3
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
