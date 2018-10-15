#!/bin/bash

set -e
echo "Start BioPortainer Script Server"
nohup python3 $HOME/script-server/launcher.py &
sleep 20
echo "Start BioPortainer"
$HOME/bioportainer
