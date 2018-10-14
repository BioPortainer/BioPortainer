#!/bin/bash

set -e

/bioportainer &
sleep 10
python3 /script-server/launcher.py &

exec "$@"
