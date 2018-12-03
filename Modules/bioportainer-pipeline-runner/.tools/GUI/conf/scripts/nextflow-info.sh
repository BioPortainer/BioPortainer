#!/bin/bash

cd $(cat /.work)
time nextflow info $@
chown -R 1000:1000 $HOME/workdir/data
