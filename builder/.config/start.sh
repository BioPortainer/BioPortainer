#!/bin/bash

set -e

/bioportainer &
sleep 30
python3 $HOME/script-server/launcher.py &

exec "$@"
