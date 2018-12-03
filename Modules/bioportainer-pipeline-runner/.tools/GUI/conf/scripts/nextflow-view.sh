#!/bin/bash

time nextflow view $@
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
