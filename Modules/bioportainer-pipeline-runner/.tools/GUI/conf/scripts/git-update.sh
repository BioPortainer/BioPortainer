#!/bin/bash

cd $1
git pull $2 $3
chown -R 1000:1000 $HOME/workdir/data
