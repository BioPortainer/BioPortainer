#!/bin/bash
rm -rf $@
echo "Local Repository "$REPOSITORY" deleted"
chown -R $UID:$UID /root/workdir/data 
chown -R $UID:$UID /root/.nextflow/assets
