#!/bin/bash

time nextflow drop $@
chown -R 1000:1000 $HOME/workdir/data
