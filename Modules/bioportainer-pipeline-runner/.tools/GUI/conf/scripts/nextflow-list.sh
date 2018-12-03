#!/bin/bash

cd $(cat /.work)
time nextflow list $@
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
