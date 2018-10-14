#!/bin/bash

set -e

/bioportainer &
sleep 30
python3 /script-server/launcher.py &

exec "$@"
