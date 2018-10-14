#!/bin/bash

set -e

/bioportainer &
sleep 20
python3 /script-server/launcher.py &

exec "$@"
