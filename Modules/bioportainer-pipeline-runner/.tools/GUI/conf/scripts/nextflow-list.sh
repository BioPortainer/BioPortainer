#!/bin/bash

cd $(cat /.work)
time nextflow list $@
chown -R 1000:1000 $HOME/workdir/data
