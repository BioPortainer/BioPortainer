#!/bin/bash

set -e
python3 /script-server/launcher.py &
exec "$@"
