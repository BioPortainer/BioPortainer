#!/bin/bash

cd $(cat /.work)
time nextflow clean $@
