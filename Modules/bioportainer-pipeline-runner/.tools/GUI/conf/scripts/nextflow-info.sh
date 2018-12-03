#!/bin/bash

cd $(cat /.work)
time nextflow info $@
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
