#!/bin/bash

cd $(cat /.work)
time nextflow log $@
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
