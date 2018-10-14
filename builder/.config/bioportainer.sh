#!/bin/bash

set -e
/bioportainer &
exec "$@"
