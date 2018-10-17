#!/bin/bash

docker pull bioportainer/tools:ncbi-genome-download
docker run -t --rm bioportainer/tools:ncbi-genome-download $@
docker rmi bioportainer/tools:ncbi-genome-download
