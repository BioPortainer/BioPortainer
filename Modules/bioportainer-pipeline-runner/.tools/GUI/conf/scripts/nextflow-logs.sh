#!/bin/bash

cd $(cat /.work)
time nextflow log $@
chown -R 1000:1000 $HOME/workdir/data
