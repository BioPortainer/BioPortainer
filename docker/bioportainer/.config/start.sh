#!/bin/bash

set -e
echo "Start BioPortainer Script Server"
nohup python3 $HOME/script-server/launcher.py &
sleep 20
rm -rf $HOME/workdir/nohup.out
echo "Start BioPortainer"
$HOME/bioportainer
