#!/bin/bash

time nextflow pull $@
chown -R 1000:1000 $HOME/workdir/data
