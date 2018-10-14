#!/bin/bash

set -e
nohup python3 /script-server/launcher.py &
sleep 20
/bin/bash /bioportainer
