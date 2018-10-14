#!/bin/bash

set -e
nohup python3 $HOME/script-server/launcher.py &
sleep 20
$HOME/bioportainer
