#!/bin/bash

cd $(cat /.work)
time nextflow run $@
chown -R 1000:1000 $HOME/workdir/data
