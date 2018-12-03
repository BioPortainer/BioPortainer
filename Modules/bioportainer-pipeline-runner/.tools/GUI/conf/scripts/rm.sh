#!/bin/bash
rm -rf $@
echo "Local Repository "$REPOSITORY" deleted"
chown -R 1000:1000 $HOME/workdir/data
